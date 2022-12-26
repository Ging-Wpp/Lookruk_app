
<?php
header('Content-Type: text/html; charset=utf-8');
$table = $_POST["table"];
$teacher_id = $_POST["teacher_id"];
$mysqli = new mysqli('localhost','root','','lookruk');
mysqli_set_charset($mysqli, "utf8");
$myArray = array();
$result = $mysqli->query("SELECT * FROM ".$table." WHERE teacher_id = ".$teacher_id);
while($row = $result->fetch_assoc()) {
    $myArray[] = $row;
}
echo json_encode($myArray);
?>