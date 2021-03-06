<?php 
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth extends MY_Controller {
    public function index () {
        show_404();
    }

    private function _login_check () {
        if (! $this->isTesting) {
			$startTime = $this->setting->get('start_time');
			$endTime = $this->setting->get('end_time');
            return "Belum ada akses untuk masuk";
        }
        if (! $this->input->post('stdid') OR ! $this->input->post('email'))
            return '';
        $stdid = $this->input->post('stdid');
        $email = $this->input->post('email');
        $okay = $this->db->select('count(*) AS count')->from('students')
            ->where('stdid', $stdid)
            ->where('email', $email)
            ->get()->row()->count;
        if ($okay != '1') {
            $this->logger->log("login failed, stdid: $stdid, email: $email", 'auth');
           
        }
        return $okay === '1' ? True : 'Username atau Password Salah';
    }

    private function _login () {
        $id = $this->db->select('id')->from('students')->where('stdid', $this->input->post('stdid'))->get()->row()->id;
        $this->session->set_userdata('id', $id);
        $this->session->set_userdata('stdid', $this->input->post('stdid'));
        $this->logger->log("login successfully", 'auth');

        // lock insert
        if ($this->isTesting && $this->session->userdata('lock_hash') === NULL) {
            $this->session->set_userdata('lock_hash', sha1(uniqid()));
			$this->db->where('id', $id)
				->where('lock_hash', '')
                ->update('students', ['lock_hash' => $this->session->userdata('lock_hash')]);
            $this->prepare_first($id);
            $this->randomProblem($id);
        }
       
    }

    public function login () {
        if ($this->loggedIn) {
           
        redirect('main/help');
        }

        if (True === ($result = $this->_login_check())) {
           $this->_login();
           redirect('main/help', 'refresh');
        } else {
            $this->render('newmain', 'newlogin', ['errors' => $result]);
        }
    }

    public function logout () {
        $this->logger->log("logged out", 'auth');
        $this->session->sess_destroy();
        redirect('auth/login');
    }

   

    private function prepare_first ($id){
        
        //membuat database untuk user
        $prefix="sqljudge_temp_".$id."_";
        $dbname=uniqid($prefix);
        $flag=0;

        while(1){
			$dbname = uniqid($prefix);
			if($this->db->query("CREATE DATABASE $dbname"))
            $this->session->set_userdata('db_temp', $dbname);
            $this->session->set_userdata('finish', false);
            $flag=1;
           try{
            $pdo = new PDO('mysql:host=localhost;dbname='.$dbname,$this->db->username,$this->db->password);
            $filepath = base_url()."dbsqltemp.sql";           
            $res = $this->importSQLfile($pdo,$filepath);
         
            if ($res == false) {
               die('ERROR');     
            }
            }
            catch(PDOException $e) {
                  echo "pesan ".$e;
                }
                break;
            		
        }
        


    }

    private function importSQLfile($pdo, $sqlFile){
       
        
        var_dump($pdo);
        
        try {
          
            // Enable LOAD LOCAL INFILE
            $pdo->setAttribute(\PDO::MYSQL_ATTR_LOCAL_INFILE, true);
            
            $errorDetect = false;
            
            // Temporary variable, used to store current query
            $tmpLine = '';
            
            // Read in entire file
            $lines = file($sqlFile);
           
            // Loop through each line
            foreach ($lines as $line) {
                
                // Skip it if it's a comment
                if (substr($line, 0, 2) == '--' || trim($line) == '') {
                    continue;
                }
                
                // Read & replace prefix
                $line = str_replace(['<<prefix>>', '<<InFilePath>>'], [$tablePrefix, $InFilePath], $line);
                
                // Add this line to the current segment
                $tmpLine .= $line;
               // echo "\n".$tmpLine;
                
                // If it has a semicolon at the end, it's the end of the query
                if (substr(trim($line), -1, 1) == ';') {
                    try {
                        // Perform the Query
                        $pdo->exec($tmpLine);
                    } catch (\PDOException $e) {
                       // echo "<br><pre>Error performing Query: '<strong>" . $tmpLine . "</strong>': " . $e->getMessage() . "</pre>\n";
                        $errorDetect = true;
                    }
                    
                    // Reset temp variable to empty
                    $tmpLine = '';
                }
            }
            
            // Check if error is detected
            if ($errorDetect) {
                return false;
            }
            
        } catch (\Exception $e) {
          //  echo "<br><pre>Exception => " . $e->getMessage() . "</pre>\n";
            return false;
        }
        
        return true;
    }

    private function randomProblem($id){

       // echo "\nproblem";
        $problems = $this->db->query("SELECT distinct(verifier) as kategori FROM problems");
        $id_problem = array();
        $satu=0;
        foreach($problems->result_array() as $i):
            $var =$i['kategori'];
            $problem_ketegori=$this->db->query("SELECT id FROM problems where verifier='".$var."'");
            $id_problem=null;
            $dua=0;
            foreach($problem_ketegori->result_array() as $j):
                $id_problem[$satu][$dua]=$j['id'];
            
                $dua++;
            endforeach;
            $array=null;
       
            $array=array_rand($id_problem[$satu],2);
           
                for($b=0; $b<sizeof($array); $b++){
                  
                    $this->db->query("insert into random_problems values('','".$id."','".$id_problem[$satu][$array[$b]]."');");
                }
            $satu++;
        endforeach;


    }
    
   

}
/* End of file auth.php */
/* Location: ./application/controllers/auth.php */
