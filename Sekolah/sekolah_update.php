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



$sql = "UPDATE info_sekolah SET nama_sekolah= '$nama', alamat_sekolah = '$alamat', notelp_sekolah = '$telp', kecamatan = '$kecamatan', agama = '$agama', nama_kepala_sekolah = '$kepala', jam_sekolah = '$jam' WHERE npsn = $npsp ";
if ($conn->query($sql) === TRUE) {   
    echo json_encode("sukses");
} else {
     echo json_encode("Error: " . $sql . "<br>" . $conn->error);
}


$conn->close();


?>