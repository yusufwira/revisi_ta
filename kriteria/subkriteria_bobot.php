<?php
header("Access-Control-Allow-Origin: *");
require('../connection.php');

$idKriteria = $_POST['id_kriteria'];
$sql = "SELECT k.detail as kriteria_1,k.iddetail_kriteria as idkriteria_1, k2.detail  
as kriteria_2,k2.iddetail_kriteria  as idkriteria_2, sb.bobot FROM 
subkriteria_bobot sb  INNER JOIN kriteria_detail k on sb.sub_1 = 
k.iddetail_kriteria INNER JOIN kriteria_detail k2 on sb.sub_2 = 
k2.iddetail_kriteria WHERE k.kriteria_idkriteria = $idKriteria or 
k2.kriteria_idkriteria = $idKriteria ORDER by k.iddetail_kriteria";
$result = $conn->query($sql);
if ($result->num_rows > 0) {		
    $tampil = array();
    $i=0;
	while ($obj = $result->fetch_assoc()) {
        if($obj['kriteria_1'] != $obj['kriteria_2']){
            $tampil[$i]['idkriteria_1'] = addslashes(htmlentities($obj['idkriteria_1']));
            $tampil[$i]['idkriteria_2'] = addslashes(htmlentities($obj['idkriteria_2']));
            $tampil[$i]['kriteria_1'] = addslashes(htmlentities($obj['kriteria_1']));
            $tampil[$i]['kriteria_2'] = addslashes(htmlentities($obj['kriteria_2']));
            $tampil[$i]['bobot'] = addslashes(htmlentities($obj['bobot']));    
            $i++ ;
        }        
    }
    	
    echo json_encode($tampil);
	
} else {  
	echo "Unable to process you request, please try again";
	die();
}


?>