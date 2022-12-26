
<?php
header('Content-Type: text/html; charset=utf-8');
$table = $_POST["table"];
$student_id = $_POST["student_id"];
$mysqli = new mysqli('localhost','root','','lookruk');
mysqli_set_charset($mysqli, "utf8");
$myArray = array();
$result = $mysqli->query("SELECT * FROM ".$table." WHERE student_id = ".$student_id);
while($row = $result->fetch_assoc()) {
    $myArray[] = $row;
}
echo json_encode($myArray);
?>