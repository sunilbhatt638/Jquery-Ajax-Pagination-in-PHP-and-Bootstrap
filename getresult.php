<?php
/*
Author : Sunil Bhatt
*/
require_once("dbclass.php");
require_once("pagination.class.php");
$dbConnection  = new Connection();
$perPage       = new sbpagination();

$sqlquery       = "SELECT * from pagination ";

$page = 1;
if(!empty($_GET["page"])) {
$page = $_GET["page"];
}

$start = ($page-1)*$perPage->perpage;
if($start < 0) $start = 0;

$query   =  $sqlquery . " limit " . $start . "," . $perPage->perpage; 
$getData = $dbConnection->runQuery($query);

$rowcount      = $dbConnection->numRows($sqlquery);
$showpagination = $perPage->getAllPageLinks($rowcount);	

$output = '';
$output .= '<table class="table" style="width: 30%;">';
    $output .= '<tbody>';
        foreach ($getData as $data)
        {
            $output .= "<tr><td>".$data['id']."</td><td>".$data['country_name']."</td><tr>";
        }
    $output .= '</tbody>';
$output .= '</table>';
if(!empty($showpagination))
{
	$output .= '<ul class="pagination">'.$showpagination.'</ul>';
}
echo $output;
die();
?>
