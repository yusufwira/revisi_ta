<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Headers: *');
require('../connection.php');

$id_sekolah=$_GET['id_sekolah'];
$id_users=$_GET['id_user'];
$id_kriteria = $_GET['id_kriteria'];
$rating=$_GET['rating'];

$sql = "SELECT * FROM rating";
$result = $conn->query($sql);
if ($result->num_rows > 0) {		
	while ($obj = $result->fetch_assoc()) {
        $iduser= addslashes(htmlentities($obj['users_id']));
        $idsekolah = addslashes(htmlentities($obj['info_sekolah_id']));  
        $idkriteria = addslashes(htmlentities($obj['kriteria_idkriteria']));  
        if($id_users == $iduser && $id_sekolah == $idsekolah && $id_kriteria == $idkriteria){
            $sql3 = "DELETE FROM rating WHERE users_id =".$id_users." AND info_sekolah_id = ".$id_sekolah. " AND kriteria_idkriteria=".$id_kriteria ;
            $conn->query($sql3);
        }        
    }
	
} 

$sql2 = "INSERT INTO rating (users_id, info_sekolah_id, rating, kriteria_idkriteria)
VALUES ($id_users,$id_sekolah,$rating, $id_kriteria)";
if ($conn->query($sql2) === TRUE) {
echo json_encode("Sukses");
} else {
echo json_encode("Error: " . $sql2 . "<br>" . $conn->error);
}

$conn->close();
?>