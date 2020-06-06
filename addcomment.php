 <?php 

include "connect.php" ; 

$comment = $_POST['comment'] ; 
$comment_user = $_POST['comuser'];
$comment_post = $_POST['compost']; 

$sql = "INSERT INTO  
`comments`( `comment`, `comment_user`, `comment_post`)
        VALUES             ( :com , :cu, :cp)" ;

$stmt = $con->prepare($sql) ; 
$stmt->execute(array(
	 ":com" => $comment , 
	 ":cu"  => $comment_user , 
	 ":cp"  => $comment_post
));

$count = $stmt->rowCount() ; 

if ($count > 0) {
	echo json_encode(array("status" => "success add")) ; 
}