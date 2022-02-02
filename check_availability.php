<?php 
require_once("includes/config.php");
// code user email availablity
if(!empty($_POST["emailid"])) {
	$email= $_POST["emailid"];
	if (filter_var($email, FILTER_VALIDATE_EMAIL)===false) {
		// returns filtered data , filters a variable with specified filter

		echo "error : You did not enter a valid email.";
	}
	else {
		$sql ="SELECT EmailId FROM tblusers WHERE EmailId=:email";
$query= $dbh -> prepare($sql); 
// running query 
$query-> bindParam(':email', $email, PDO::PARAM_STR);
// bindparam(:bindvalue,variable,function)
// PDO::PARAM_STR (int) Represents the SQL CHAR, VARCHAR, or other string data type.
$query-> execute();
$results = $query -> fetchAll(PDO::FETCH_OBJ);
// PDO::FETCH_OBJ : returns an anonymous object with property names that correspond to the column names returned in your result set.

$cnt=1;
if($query -> rowCount() > 0) 
// checking condition
{
echo "<span style='color:red'> Email already exists .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
//  disabling signup button when email exists

} else{
	
	echo "<span style='color:green'> Email available for Registration .</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>"; 
//  not disabling signup button when email exists
}
}
}


?>
