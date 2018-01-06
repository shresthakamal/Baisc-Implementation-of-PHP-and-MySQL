<?php 

session_start();


$user_id=$_SESSION['userid'];
$subject=$_GET['subject'];
$s_subject=$_GET['s_subject'];
$teacher_name=$_GET['teacher_name'];
$colour=$_GET['colour'];
$w_day=$_GET['w_day'];
$s_time=$_GET['s_time'];
$e_time=$_GET['e_time'];
$class_duration=$e_time-$s_time;

echo $user_id;
echo "<br>";

echo $subject;
echo "<br>";
echo $s_subject;
echo "<br>";
echo $teacher_name;
echo "<br>";
echo $colour;
echo "<br>";
echo $w_day;
echo "<br>";
echo $s_time;
echo "<br>";
echo $e_time;
echo "<br>";



$con=mysqli_connect('localhost','root','','routine');

$query="INSERT INTO `subjects`(User_Id,Subject,Shortened_form,Colour,Teachers_name,Day,S_time,E_time,Class_duration,Keywords) VALUES('$user_id','$subject','$s_subject','$colour','$teacher_name','$w_day','$s_time','$e_time','$class_duration','$subject')";


if (mysqli_query($con,$query))
echo "SUCCESS";
else 
echo "UNSUCCESS";

header("refresh:1;url=routine_form.php?userid=$user_id");














 ?>