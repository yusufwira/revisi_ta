<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Headers: *');
require('../connection.php');

$idSekolah = $_GET['id_sekolah'];
$sql_kriteria = "SELECT * FROM kriteria";
$result_kriteria = $conn->query($sql_kriteria);
$j =0;
$arr_data = array();
while ($obj_kriteria = $result_kriteria->fetch_assoc()) {
    $idkriteria = addslashes(htmlentities($obj_kriteria['idkriteria'])); 
    $sql = "SELECT * FROM rating r INNER JOIN kriteria k on r.kriteria_idkriteria = k.idkriteria WHERE r.info_sekolah_id =".$idSekolah." AND k.idkriteria =".$idkriteria;
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {		       
        $i=0;
        $hasil = 0;
        while ($obj = $result->fetch_assoc()) {
            $i += addslashes(htmlentities($obj['rating']));                
        }
        $hasil = number_format($i/$result->num_rows,1);
    } else {  
        $hasil = 0;
      
    }
    $arr_data[$obj_kriteria['nama_kriteria']] =  $hasil;
    $j++;

}

echo json_encode($arr_data);


?>