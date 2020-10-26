<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Headers: *');
require('../connection.php');


//informasi sekolah
$data = json_decode($_POST['data']);
$last_id = $_POST['last_id'];
$hasil = "";
for ($i=0; $i < sizeof($data); $i++) { 
    $idkrdetail = $data[$i]->id;
    $value = $data[$i]->value;
    $sql = "INSERT INTO info_sekolah_has_kriteria_detail (info_sekolah_idinfo_sekolah,	kriteria_detail_iddetail_kriteria, 	nilai)
    VALUES ($last_id, $idkrdetail, '$value')";

    if ($conn->query($sql) === TRUE) {
        $hasil = "sukses";
    } else {
        $hasil = "Error: " . $sql . "<br>" . $conn->error;
    }
}

echo json_encode($hasil);

?>