<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Headers: *');
require('../connection.php');


//informasi sekolah
$npsp = $_POST['npsp'];
$nama = $_POST['nama'];
$alamat = $_POST['alamat'];
$telp = $_POST['telp'];
$kecamatan = $_POST['kecamatan'];
$agama = $_POST['agama'];
$kepala = $_POST['kepala'];
$jam = $_POST['jam'];
$iduser = $_POST['username'];

$sql = "INSERT INTO info_sekolah (npsn, nama_sekolah, 
alamat_sekolah, notelp_sekolah, kecamatan, agama, nama_kepala_sekolah, 
jam_sekolah, status_sekolah, keterangan_status_sekolah, users_id_users)
VALUES ($npsp, '$nama', '$alamat', '$telp', '$kecamatan', '$agama', '$kepala', '$jam','Belum Tervalidasi',null, $iduser)";

if ($conn->query($sql) === TRUE) {
    $last_id = $conn->insert_id;
    echo json_encode($last_id);
} else {
     echo json_encode("Error: " . $sql . "<br>" . $conn->error);
}


$conn->close();


?>