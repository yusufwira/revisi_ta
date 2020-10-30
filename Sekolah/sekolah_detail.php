<?php
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Headers: *');
require('../connection.php');

$idSekolah = $_GET['id_sekolah'];

$sql = "SELECT *, u.username, s.kecamatan as kecamatan FROM foto_sekolah f INNER JOIN info_sekolah s on 
f.info_sekolah_idinfo_sekolah = s.npsn INNER JOIN users u on s.users_id_users=u.id_users 
where s.npsn = ".$idSekolah;

$result = $conn->query($sql);
if ($result->num_rows > 0) {		
    $list_sekolah = array();
    $i=0;
	while ($obj = $result->fetch_assoc()) {
        $list_sekolah['npsn'] = addslashes(htmlentities($obj['npsn']));
        $list_sekolah['nama_sekolah'] = addslashes(htmlentities($obj['nama_sekolah']));
        $list_sekolah['alamat_sekolah'] = addslashes(htmlentities($obj['alamat_sekolah']));
        $list_sekolah['notelp_sekolah'] = addslashes(htmlentities($obj['notelp_sekolah']));
        $list_sekolah['kecamatan'] = addslashes(htmlentities($obj['kecamatan']));
        $list_sekolah['agama'] = addslashes(htmlentities($obj['agama']));
        $list_sekolah['nama_kepala_sekolah'] = addslashes(htmlentities($obj['nama_kepala_sekolah']));
        $list_sekolah['jam'] = addslashes(htmlentities($obj['jam_sekolah']));
        $list_sekolah['username'] = addslashes(htmlentities($obj['username']));
        $list_sekolah['foto'][$i]['idfoto'] = addslashes(htmlentities($obj['idfoto_sekolah']));
        $list_sekolah['foto'][$i]['nama_foto'] = addslashes(htmlentities($obj['nama_foto'])); 
        $list_sekolah['foto'][$i]['extention'] = addslashes(htmlentities($obj['extention']));   
        $sql_detail = "SELECT * FROM info_sekolah_has_kriteria_detail ik INNER JOIN kriteria_detail kd on ik.kriteria_detail_iddetail_kriteria = kd.iddetail_kriteria INNER JOIN kriteria k on kd.kriteria_idkriteria = k.idkriteria WHERE ik.info_sekolah_idinfo_sekolah =".$list_sekolah['npsn'];
        $result_detail = $conn->query($sql_detail);
        while ($obj_detail = $result_detail->fetch_assoc()) {
            $list_sekolah['detail'][$obj_detail['nama_kriteria']][$obj_detail['detail']] = addslashes(htmlentities($obj_detail['nilai']));
        }
        $i++ ;
    }
    	
    echo json_encode($list_sekolah);
	
} else {  
	echo "Unable to process you request, please try again";
	die();
}


?>