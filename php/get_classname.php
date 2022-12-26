
<?php
header('Content-Type: text/html; charset=utf-8');
$mysqli = new mysqli('localhost','root','','lookruk');
mysqli_set_charset($mysqli, "utf8");
$myArray = array();
$result = $mysqli->query("SELECT * FROM class");
while($row = $result->fetch_assoc()) {
    $myArray[] = $row;
}
echo json_encode($myArray);
?>