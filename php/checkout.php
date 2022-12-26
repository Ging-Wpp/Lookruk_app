
<?php
header('Content-Type: text/html; charset=utf-8');
$table = $_POST["table"];
$teacher_id = $_POST["teacher_id"];
$student_id = $_POST["student_id"];
$time = $_POST["time"];
$day = $_POST["day"];
$month = $_POST["month"];
$year = $_POST["year"];
$place = $_POST["place"];
$mysqli = new mysqli('localhost','root','','lookruk');
mysqli_set_charset($mysqli, "utf8");
$myArray = array();
$result = $mysqli->query("INSERT INTO checkout (teacher_id, student_id, time , day , month , year , place)
VALUES ('$teacher_id', '$student_id', '$time' , $day , $month , $year , '$place')");

echo "INSERT INTO checkout (teacher_id, student_id, time , day , month , year , place)
VALUES ('$teacher_id', '$student_id', '$time' , $day , $month , $year , $place)";

?>