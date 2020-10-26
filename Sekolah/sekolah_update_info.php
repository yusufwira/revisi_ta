<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Headers: *');
require('../connection.php');


//informasi sekolah
$data = json_decode($_POST['data']);
$last_id = $_POST['last_id'];

//echo json_encode($data );
$hasil = "";
for ($i=0; $i < sizeof($data); $i++) {     
    $sql_temp = "SELECT iddetail_kriteria FROM kriteria_detail WHERE detail = '".$data[$i]->id."'";
    $result = $conn->query($sql_temp);
    $obj = $result->fetch_assoc();
    $idkrdetail =$obj['iddetail_kriteria'];
    $value = $data[$i]->value;
    $sql = "UPDATE info_sekolah_has_kriteria_detail SET nilai= '$value' WHERE info_sekolah_idinfo_sekolah = $last_id AND kriteria_detail_iddetail_kriteria = $idkrdetail";
    if ($conn->query($sql) === TRUE) {
        $hasil = "sukses";
    } else {
        $hasil = "Error: " . $sql . "<br>" . $conn->error;
    }
}

echo json_encode($hasil);

?>