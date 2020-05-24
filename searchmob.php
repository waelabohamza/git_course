 <?php

include "connect.php" ;
   
   $mobile =  $_POST['searchmobile'] ;
     
   $where =  " WHERE name Like  '$mobile%'  "   ; 
 
 $sql  = " SELECT * FROM mobiles $where   " ;  
 $stmt = $con->prepare($sql);
 $stmt->execute() ; 
 $mobiles = $stmt->fetchAll(PDO::FETCH_ASSOC) ; 

 echo json_encode($mobiles) ; 
