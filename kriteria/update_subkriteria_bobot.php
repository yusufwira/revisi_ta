<?php
header("Access-Control-Allow-Origin: *");
require('../connection.php');

$bobot = $_POST['bobot'];
$crit_1 = $_POST['crit1'];
$crit_2 = $_POST['crit2'];

$sql = "UPDATE subkriteria_bobot k SET k.bobot= $bobot WHERE k.sub_1 = $crit_1 AND k.sub_2 = $crit_2";

if ($conn->query($sql) === TRUE) {
  echo json_encode('sukses');
} else {
  echo json_encode("Error updating record: ".$sql . $conn->error);
}

?>