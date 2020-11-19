<?php
    header("Access-Control-Allow-Origin: *");
    header('Access-Control-Allow-Headers: *');
    require('../connection.php');

    $fh = fopen("bobotKriteria.csv", "r");
    $header = fgetcsv($fh);
    $faq = [];
    while ( $data = fgetcsv($fh))   {
        $faq [ $data[0] ] = array_combine($header, $data);
    }
    fclose($fh);   

    // var_dump($faq);die();
    $stmt = $conn->prepare("UPDATE kriteria_bobot SET bobot = ? WHERE idKriteria_bobot = ?");
    $stmt->bind_param("di", $bobot, $id);

    for ($i=0; $i < sizeof($faq); $i++) { 
        $id = $faq[$i]['id'];       
        $bobot = $faq[$i]['bobot'];
        $stmt->execute();
                    
        // if ($stmt->execute() == true) {
        //     // echo "kriteria_bobot ".$id." Successfuly";
        //     var_dump($faq[$i]['id']." ".$faq[$i]['bobot']);
        //     echo '<br>';
        // } else {
        //     echo "kriteria_bobot ".$id.$conn->error;
        //     echo '<br>';
        // }        
    }    
    $stmt->close();

?>