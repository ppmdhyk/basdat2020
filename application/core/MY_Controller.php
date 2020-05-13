<?php

class MY_Controller extends CI_Controller {
    protected $loggedIn = False;
    protected $id = False;
    protected $stdid = False;

    function __construct () {
        parent::__construct();
        $this->loggedIn = $this->session->userdata('stdid') !== NULL;
		$this->id = $this->session->userdata('id');
        $this->stdid = $this->session->userdata('stdid');
        $this->isTA = preg_match('/^'. $this->setting->get('ta_ip') .'$/', $_SERVER['REMOTE_ADDR']);
        $this->tempdb = $this->session->userdata('db_temp') ;
        $this->isFinish = $this->session->userdata('finish') ;
        $this->isTime = time() >= (strtotime($this->setting->get('start_time'))-18000)
            && time() <= (strtotime($this->setting->get('end_time'))-18000);
        $this->isTesting = 
        $this->isTA ||$this->setting->get('activated')!=null;
        


        // lock check
       // if (!$this->isTesting && $this->id && $this->uri->segment(1) != 'auth') {
        if (!$this->isTesting && $this->id && $this->uri->segment(1) != 'auth') {
            $locked = $this->db->select('lock_hash')->from('students')->where('id', $this->id)->get()->row()->lock_hash !== $this->session->userdata('lock_hash');
            if ($locked) {
                $this->session->unset_userdata('id');
                $this->session->unset_userdata('stdid');
                $this->session->set_flashdata('err', 'Your account has been locked, please contact TA to unlock.');
                redirect('auth/login');
            }
		}
    }

    protected function is_pjax () {
        return array_key_exists('HTTP_X_PJAX', $_SERVER) && $_SERVER['HTTP_X_PJAX'];
    }

    protected function render ($layout, $body, $params) {
        $body = $this->load->view('page/' . $body, $params, ! $this->is_pjax());
        if (! $this->is_pjax()) {
            $this->load->view('layout/' . $layout, [ 
                'body' => $body
            ]);
        }
    }
}
