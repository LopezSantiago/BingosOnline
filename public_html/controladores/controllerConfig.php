<?php

$pageRoutCfg=array( 'host'=>  filter_input(INPUT_SERVER,'HTTP_HOST'),
                    'dir'=> filter_input(INPUT_SERVER,'HTTP_SELF'),
                    'index'=>'index.html'
                    );



class pdoConfig{
private $dboCfg=array('dbtype'=>'mysql',
              'host'=>'localhost',
              'port'=>'3306',
              'dbname'=>'bingosonline',
              'charset'=>'utf8',
              'usr'=>'root',
              'pw'=>'J9u7@5n3',
              'tables'=>array('usr'=>'usuarios',
                              'adm'=>'administradores',
                              'tbl'=>'tablerobingo',
                              'tblj'=>'tablasdebingo'));
public function getConnectionString(){
    return( $this->dboCfg['dbtype'].':host='.$this->dboCfg['host'].';port='.$this->dboCfg['port'].';bdname='.
            $this->dboCfg['dbname'].';charset=utf8');    
}

}


