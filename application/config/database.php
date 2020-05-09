<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

$active_group = 'default';
$active_record = TRUE;

/*
 * Database for system
 */

$db['default']['hostname'] = 'localhost';
$db['default']['username'] = 'u6029100_sqljudging';
$db['default']['password'] = 'sqljudgement';
$db['default']['database'] = 'u6029100_sqljudge_sys';
$db['default']['dbdriver'] = 'mysqli';
$db['default']['dbprefix'] = '';
$db['default']['pconnect'] = TRUE;
$db['default']['db_debug'] = False;
$db['default']['cache_on'] = FALSE;
$db['default']['cachedir'] = '';
$db['default']['char_set'] = 'utf8';
$db['default']['dbcollat'] = 'utf8_general_ci';
$db['default']['swap_pre'] = '';
$db['default']['autoinit'] = TRUE;
$db['default']['stricton'] = FALSE;

/*
 * Database for scoring student's answer
 */
$db['judge']['hostname'] = 'localhost';
$db['judge']['username'] = 'u6029100_sqljudging';
$db['judge']['password'] = 'sqljudgement';
$db['judge']['database'] = 'u6029100_sqljudge_problem_judge';
$db['judge']['dbdriver'] = 'mysqli';
$db['judge']['dbprefix'] = '';
$db['judge']['pconnect'] = TRUE;
$db['judge']['db_debug'] = False;
$db['judge']['cache_on'] = FALSE;
$db['judge']['cachedir'] = '';
$db['judge']['char_set'] = 'utf8';
$db['judge']['dbcollat'] = 'utf8_general_ci';
$db['judge']['swap_pre'] = '';
$db['judge']['autoinit'] = TRUE;
$db['judge']['stricton'] = FALSE;

/*
 * Database for testing student's answer
 */
$db['test']['hostname'] = 'localhost';
$db['test']['username'] = 'u6029100_sqljudging';
$db['test']['password'] = 'sqljudgement';
$db['test']['database'] = 'u6029100_sqljudge_problem_test';
$db['test']['dbdriver'] = 'mysqli';
$db['test']['dbprefix'] = '';
$db['test']['pconnect'] = TRUE;
$db['test']['db_debug'] = False;
$db['test']['cache_on'] = FALSE;
$db['test']['cachedir'] = '';
$db['test']['char_set'] = 'utf8';
$db['test']['dbcollat'] = 'utf8_general_ci';
$db['test']['swap_pre'] = '';
$db['test']['autoinit'] = TRUE;
$db['test']['stricton'] = FALSE;


/*
 * Database for scoring student's answer
 */
$db['judge_temp']['hostname'] = 'localhost';
$db['judge_temp']['username'] = 'u6029100_sqljudging';
$db['judge_temp']['password'] = 'sqljudgement';
$db['judge_temp']['database'] = 'u6029100_sqljudge_problem_judge';
$db['judge_temp']['dbdriver'] = 'mysqli';
$db['judge_temp']['dbprefix'] = '';
$db['judge_temp']['pconnect'] = TRUE;
$db['judge_temp']['db_debug'] = False;
$db['judge_temp']['cache_on'] = FALSE;
$db['judge_temp']['cachedir'] = '';
$db['judge_temp']['char_set'] = 'utf8';
$db['judge_temp']['dbcollat'] = 'utf8_general_ci';
$db['judge_temp']['swap_pre'] = '';
$db['judge_temp']['autoinit'] = TRUE;
$db['judge_temp']['stricton'] = FALSE;

/*
 * Database for testing student's answer
 */
$db['test_temp']['hostname'] = 'localhost';
$db['test_temp']['username'] = 'u6029100_sqljudging';
$db['test_temp']['password'] = 'sqljudgement';
$db['test_temp']['database'] = 'u6029100_sqljudge_problem_test';
$db['test_temp']['dbdriver'] = 'mysqli';
$db['test_temp']['dbprefix'] = '';
$db['test_temp']['pconnect'] = TRUE;
$db['test_temp']['db_debug'] = False;
$db['test_temp']['cache_on'] = FALSE;
$db['test_temp']['cachedir'] = '';
$db['test_temp']['char_set'] = 'utf8';
$db['test_temp']['dbcollat'] = 'utf8_general_ci';
$db['test_temp']['swap_pre'] = '';
$db['test_temp']['autoinit'] = TRUE;
$db['test_temp']['stricton'] = FALSE;


/* End of file database.php */
/* Location: ./application/config/database.php */