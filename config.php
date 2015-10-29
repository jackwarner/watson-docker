<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------
| DATABASE CONNECTIVITY SETTINGS
| -------------------------------------------------------------------
| This file will contain the settings needed to access your database.
|
| For complete instructions please consult the 'Database Connection'
| page of the User Guide.
|
| -------------------------------------------------------------------
| EXPLANATION OF VARIABLES
| -------------------------------------------------------------------
|
|    'connectionString' Hostname, database, port and database type for
|     the connection. Driver example: mysql. Currently supported:
|                 mysql, pgsql, mssql, sqlite, oci
|    'username' The username used to connect to the database
|    'password' The password used to connect to the database
|    'tablePrefix' You can add an optional prefix, which will be added
|                 to the table name when using the Active Record class
|
*/

/*
 * RDS Environment variables for running on Elastic Beanstalk
 */
define('DB_NAME', getenv('RDS_DB_NAME'));
define('DB_USER', getenv('RDS_USERNAME'));
define('DB_PASSWORD', getenv('RDS_PASSWORD'));
define('DB_HOST', getenv('RDS_HOSTNAME'));

return array(
  'components' => array(
    'db' => array(
      'connectionString' => 'mysql:host='.RDS_HOSTNAME.';port=3306;dbname='.DB_NAME.';',
      'emulatePrepare' => true,
      'username' => DB_USER,
      'password' => DB_PASSWORD,
      'charset' => 'utf8',
      'tablePrefix' => 'watson_',
    ),

    'urlManager' => array(
      'urlFormat' => 'path',
      'rules' => require('routes.php'),
      'showScriptName' => true,
    ),

  ),
  // Use the following config variable to set modified optional settings copied from config-defaults.php
  'config'=>array(
    // debug: Set this to 1 if you are looking for errors. If you still get no errors after enabling this
    // then please check your error-logs - either in your hosting provider admin panel or in some /logs directory
    // on your webspace.
    // LimeSurvey developers: Set this to 2 to additionally display STRICT PHP error messages and get full access to standard templates
    'debug'=>1,
    'debugsql'=>0 // Set this to 1 to enanble sql logging, only active when debug = 2
  )
);
/* End of file config.php */
/* Location: ./application/config/config.php */