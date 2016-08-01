<?php
#####################################
#  Session Setting					#
#####################################
session_start(); 

#####################################
#  Database Configration			#
#####################################
define('DB_SERVER','souldelightscouk.ipagemysql.com');
define('DB_USERNAME','dbusr_bi');
define('DB_PASSWORD','#$%werS12XD@$#XSF$%^');
define('DB_DATABASE','db_bi');

#####################################
#  Site Configration				#
#####################################
define('SERVER_URL','http://www.barodacoders.com/app-projects/barodaindicator/');
define('SERVER_PATH','/hermes/bosnaweb03b/b1449/ipg.souldelightscouk/barodacoders/app-projects/barodaindicator/');
define('HTTP_URL','http://www.barodacoders.com/app-projects/barodaindicator/');
define('HTTPS_URL','http://www.barodacoders.com/app-projects/barodaindicator/');
define('ADMIN_URL',SERVER_URL.'admintool/');
define('ADMIN_PATH',SERVER_PATH.'admintool/');
define('FUNCTION_PATH',SERVER_PATH.'system/function/');
define('CLASS_PATH',SERVER_PATH.'system/class/');
define('CONFIG_PATH',SERVER_PATH.'system/config/');
define('JAVASCRIPT_PATH',SERVER_PATH.'js/');
define("ADMIN_IMAGES_PATH", ADMIN_PATH.'images/');

#####################################
#  Database Settings 			    #
#####################################
error_reporting(E_ERROR | E_WARNING); // display all errors except notices
include_once CLASS_PATH.'dbclass.php';
$dbobj = new dbclass;

#####################################
#  Include File Settings			#
#####################################
include_once FUNCTION_PATH.'general.php';

#####################################
#  Configure Paging Variables		#
#####################################
$record_limit=20; // for paging
$pg_limit=5;  // for paging  
define('PAGE_COMBO',$record_limit);

#####################################
#  Image Parameters					#
#####################################
define('IMAGE_HEIGHT','100');
define('IMAGE_WIDTH','100');

#####################################
#  File Settings					#
#####################################
define('INDEX_FILE','index.php?file=');

#####################################
#  General Setting					#
#####################################
error_reporting(E_ALL ^ E_NOTICE ^ E_ERROR ^ E_WARNING ^ E_DEPRECATED); // display all errors except notices
@ini_set('display_errors', '1'); // display all errors
@ini_set('register_globals', 'Off'); // make globals off runtime
define('EMAIL_SEPARATOR', '------------------------------------------------------');
define('CHARSET', 'iso-8859-1');
//define('SITE_TITLE','Jagtap Engineering');
getconfigure();
?>