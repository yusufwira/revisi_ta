<?php

header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Headers: *');
require('../connection.php');

$id_sekolah = $_POST['id'];
$keterangan = $_POST['keterangan'];

$sql2 = "UPDATE info_sekolah SET keterangan_status_sekolah='$keterangan' WHERE npsn=$id_sekolah";
if ($conn->query($sql2) === TRUE) {
echo json_encode("Sukses");
} else {
echo json_encode("Error: " . $sql2 . "<br>" . $conn->error);
}

$conn->close();
?>