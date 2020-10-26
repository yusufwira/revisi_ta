<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Headers: *');
require('../connection.php');

$sql = "SELECT * FROM users u INNER JOIN info_sekolah s on u.id_users= s.users_id_users INNER JOIN foto_sekolah f on s.npsn = f.info_sekolah_idinfo_sekolah WHERE s.status_sekolah = 'Tervalidasi' GROUP by s.npsn";
$result = $conn->query($sql);
if ($result->num_rows > 0) {		
    $list_sekolah = array();
    $i=0;
	while ($obj = $result->fetch_assoc()) {
        $list_sekolah[$i]['npsn'] = addslashes(htmlentities($obj['npsn']));
        $list_sekolah[$i]['nama_sekolah'] = addslashes(htmlentities($obj['nama_sekolah']));
        $list_sekolah[$i]['alamat_sekolah'] = addslashes(htmlentities($obj['alamat_sekolah'])); 
        $list_sekolah[$i]['notelp_sekolah'] = addslashes(htmlentities($obj['notelp_sekolah']));  
        $list_sekolah[$i]['status_sekolah'] = addslashes(htmlentities($obj['status_sekolah'])); 
        $list_sekolah[$i]['username'] = addslashes(htmlentities($obj['username']));  
        $list_sekolah[$i]['nama_foto'] = addslashes(htmlentities($obj['nama_foto'])); 
        $list_sekolah[$i]['extention'] = addslashes(htmlentities($obj['extention']));    
        $list_sekolah[$i]['jumlah'] = $result->num_rows ;
        $sql_detail = "SELECT * FROM info_sekolah_has_kriteria_detail ik INNER JOIN kriteria_detail kd on ik.kriteria_detail_iddetail_kriteria = kd.iddetail_kriteria INNER JOIN kriteria k on kd.kriteria_idkriteria = k.idkriteria WHERE ik.info_sekolah_idinfo_sekolah =".$obj['npsn'];
        $result_detail = $conn->query($sql_detail);
        while ($obj_detail = $result_detail->fetch_assoc()) {
            $list_sekolah[$i][$obj_detail['detail']] = addslashes(htmlentities($obj_detail['nilai']));
        }
        $i++ ;
    }
    
    	
    echo json_encode($list_sekolah);
	
} else {  
	echo json_encode ("belum ada");
	die();
}


?>