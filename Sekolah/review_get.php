<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Headers: *');
require('../connection.php');

$idSekolah = $_GET['id_sekolah'];

$sql = "SELECT * FROM review r INNER JOIN users u on r.users_id_users=u.id_users inner JOIN kriteria k on r.kriteria_idkriteria=k.idkriteria WHERE r.info_sekolah_idinfo_sekolah = ".$idSekolah." ORDER BY r.tanggal ";

$result = $conn->query($sql);
if ($result->num_rows > 0) {		
    $list_review = array();
    $i=0;
	while ($obj = $result->fetch_assoc()) {
        $list_review[$i]['id'] = addslashes(htmlentities($obj['idreview']));
        $list_review[$i]['review'] = addslashes(htmlentities($obj['isi_review']));
        $list_review[$i]['tanggal'] = addslashes(htmlentities($obj['tanggal']));
        $list_review[$i]['nama'] = addslashes(htmlentities($obj['nama_user']));     
        $list_review[$i]['nama_kriteria'] = addslashes(htmlentities($obj['nama_kriteria'])); 
        $i++ ;
    }
    	
    echo json_encode($list_review);
	
} else {  
	echo json_encode("tidak ada");
	die();
}


?>