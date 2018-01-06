<!DOCTYPE html>
<html>
<head>
	<title>ROUTINE MANAGER</title>
	<link rel="stylesheet" type="text/css" href="routine_style.css">
</head>
<body>


<?php session_start();
$_SESSION['userid']=$_GET['userid'];


 ?>

<div class="signup">
	<form action="routine_process.php" method="get"> 

	Enter Subject:
	<input type="text" name="subject">
	<br><br>

	Enter Shortened Form:
	<input type="text" name="s_subject">
	<br><br>
	Teacher's Name :
	<input type="text" name="teacher_name">
	<br><br>

	Enter Colour:
	<input type="text" name="colour">
	<br><br>



	Select Day:
	<input list="w_day" name="w_day">
	<datalist id="w_day">
		<option value="Sunday"></option>
		<option value="Monday"></option>
		<option value="Tuesday"></option>
		<option value="Wednesday"></option>	
		<option value="Thrusday"></option>
		<option value="Friday"></option>
		<option value="Saturday"></option>
	</datalist>



	<br><br>

	Class Starting Time:
	<select name="s_time">
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>	
		<option value="13">13</option>
		<option value="14">14</option>
		<option value="15">15</option>
	</select>

	<br><br>
	Class Ending Time:
	<select name="e_time">
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>	
		<option value="13">13</option>
		<option value="14">14</option>
		<option value="15">15</option>
		<option value="16">16</option>
	</select>

	<br><br>
	<input type="submit" name="submit" value="SUBMIT">





	</form>
</div>

</body>
</html>