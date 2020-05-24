<?php

include "connect.php" ;
 $cat = $_POST['cat'] ; 
 $sql  = "SELECT * FROM mobiles WHERE mob_cat = ?  " ;  
 $stmt = $con->prepare($sql);
 $stmt->execute(array($cat)) ; 
 $mobiles = $stmt->fetchAll(PDO::FETCH_ASSOC) ; 

 echo json_encode($mobiles) ; 
