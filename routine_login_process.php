<?php 

session_start();
$user=$_POST['userid'];
$_SESSION['user']=$user;
$con=mysqli_connect('localhost','root','','routine');
$query="SELECT * FROM `subjects` WHERE User_Id LIKE '%$user%'";
$result=mysqli_query($con,$query);

$_SESSION['Sunday']=$_SESSION['Monday']=$_SESSION['Tuesday']=$_SESSION['Wednesday']=$_SESSION['Thrusday']=$_SESSION['Friday']=$_SESSION['Saturday']=-1;

$t_count=9;
while ($row=mysqli_fetch_array($result,MYSQLI_ASSOC))
		{
								

			if($row['S_time']<$row['E_time'])//checks if the inout classtime
			{
								if ($row['Day']=="Sunday"){$day=1;
											$_SESSION['Sunday']=$_SESSION['Sunday']+1;
											$d_c=$_SESSION['Sunday'];}

								if ($row['Day']=="Monday")
										{	
											$day=2;
											$_SESSION['Monday']=$_SESSION['Monday']+1;
											$d_c=$_SESSION['Monday'];											
										}

								if ($row['Day']=="Tuesday"){$day=3;
											$_SESSION['Tuesday']=$_SESSION['Tuesday']+1;
											$d_c=$_SESSION['Tuesday'];}

								if ($row['Day']=="Wednesday"){$day=4;
											$_SESSION['Wednesday']=$_SESSION['Wednesday']+1;
											$d_c=$_SESSION['Wenesday'];}

								if ($row['Day']=="Thrusday"){$day=5;
											$_SESSION['Thrusday']=$_SESSION['Thrusday']+1;
											$d_c=$_SESSION['Thrusday'];

										}
								if ($row['Day']=="Friday"){$day=6;
											$_SESSION['Friday']=$_SESSION['Friday']+1;
												$d_c=$_SESSION['Friday'];
										}

								if ($row['Day']=="Saturday"){$day=7;
											$_SESSION['Saturday']=$_SESSION['Saturday']+1;
											$d_c=$_SESSION['Saturday'];}

						while($t_count<16)
						{
							if ($row['S_time']==$t_count)
							{
								$d[$day][$t_count]=$row['Subject'];
								$c[$day][$t_count]=$row['Colour'];
								$st[$day][$d_c]=$t_count;
								$cd[$day][$t_count]=$row['Class_duration'];


										for ($i=1; $i<$row['Class_duration'] ; $i++)
										 { 
										 	
											$d[$day][$t_count+$i]=$row['Subject'];
											$c[$day][$t_count+$i]=$row['Colour'];


										}
							}
							$t_count=$t_count+1;
	
						}	
			}
			$t_count=9;		

		}//end of main while loop
		
		
		
			
 ?>




<!DOCTYPE html>
<html>
<head>
	<title><?php echo $_SESSION['user'];?> ROUTINE</title>
	<link rel="stylesheet" type="text/css" href="routine_style.css">
</head>
<body>


<table id="routine">
	<tr>
		<th>TIME<br><hr>
		DATE</th>
		<th>9am-10am</th>
		<th>10am-11am</th>
		<th>11am-12pm</th>
		<th>12pm-1pm</th>
		<th>1pm-2pm</th>
		<th>2pm-3pm</th>
		<th>3pm-4m</th>

	</tr>



<?php $dd=1;
while($dd<8)
{

  ?>

		<tr>
		<?php 
		$g=9;
		$h=0;
				$d[$dd][16]="HOLIDAY";
				$c[$dd][16]="white";

				if ($dd==1)echo"<td>Sunday</td>";
				if ($dd==2)echo"<td>Monday</td>";
				if ($dd==3)echo"<td>Tuesday</td>";
				if ($dd==4)echo"<td>Wednesday</td>";
				if ($dd==5)echo"<td>Thrusday</td>";
				if ($dd==6)echo"<td>Friday</td>";
				if ($dd==7)echo"<td>Saturday</td>";

				while ($g<=15)
				 {
				 	$tr[$h]=$d[$dd][$g];


				 	if ($d[$dd][$g]==$d[$dd][$g+1])
					{
						$n=$c[$dd][$g];
						$ccd=$cd[$dd][$g];

						echo "<td colspan='$ccd' bgcolor=$n>";
						echo $d[$dd][$g];
						echo "</td>";
						$g=$g+($ccd);
					}

				 	else
				 	{
				 		$p=$c[$dd][$g];
				 		echo "<td bgcolor=$p>";
				 		echo $d[$dd][$g];
				 		echo "</td>";

				 		$g=$g+1;
					}	
					$h=$h+1;

				}
		 ?>
		</tr>
<?php 

$dd=$dd+1;
}

 ?>



</table>




</body>
</html>