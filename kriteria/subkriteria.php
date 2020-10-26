<?php
header("Access-Control-Allow-Origin: *");
require('../connection.php');


$namaKriteria = $_POST['nama_kriteria'];
$sql = "SELECT * FROM kriteria_detail kd INNER JOIN kriteria k on kd.kriteria_idkriteria=k.idkriteria WHERE k.nama_kriteria = $namaKriteria";
$result = $conn->query($sql);
if ($result->num_rows > 0) {		
    $detail = array();
    $i=0;
	while ($obj = $result->fetch_assoc()) {
        $detail[$i]['id_detail'] = addslashes(htmlentities($obj['iddetail_kriteria']));
        $detail[$i]['nama_kriteria'] = addslashes(htmlentities($obj['nama_kriteria']));
        $detail[$i]['detail'] = addslashes(htmlentities($obj['detail']));
        $i++ ;
    }
    	
    echo json_encode($detail);
	
} else {  
	echo "Unable to process you request, please try again";
	die();
}
