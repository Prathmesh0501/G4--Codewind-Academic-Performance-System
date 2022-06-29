<?php
	include('fy_stud_add_data.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ty Add student marks</title>
    <link rel="stylesheet" href="css/fy_add_marks_all.css" />
    <script>
    	function disable() {
		  document.getElementById("sem").disabled=true;
		}
    </script>
</head>
<body>

  <div class="header">
    <ul>
      <li><a href="ty_student_list.php"><u><--back</u></a></li>
    </ul>
  </div>
  </header>

  <div class="regform">
    <h1>Add TY Student marks</h1>
</div>

<div class="main">

    <form action="ty_add_marks_all_php.php" method="POST">
    	<?php if (isset($_GET['error'])) { ?>
                    <p class="error"><?php echo $_GET['error']; ?></p>
                <?php } ?>

    	
            <h2 class="name">
            Name </h2>
             <?php 
	            	if (isset($_GET['id']))
	            	 {
	            		$db = mysqli_connect('localhost','root','','fy_stud');
	            		
					 	function validate($data)
					 	{
					        $data = trim($data);
					        $data = stripslashes($data);
					        $data = htmlspecialchars($data);
					        return $data;
						}

						$id = validate($_GET['id']);	
	            		$sql = "SELECT * FROM ty_stud_data WHERE id = '$id' ";
	            	
	            		$result = mysqli_query($db,$sql);
     

	            		if(mysqli_num_rows($result)>0)
	            		{
	            			$rows = mysqli_fetch_assoc($result);
	            		}
            	 	}
            	 	 ?>
           <input class="firstname" type="text" name="first_name" value="<?=$rows['first_name']?>">
            
           

            <br>

            <h2 class="name">
        	Seat Number </h2>
        	<input class="firstname" id="cap" onblur="mycapital()" type="text" name="seat_no" value="<?=$rows['seat_no']?>" >

        	<br>


        	<!-- Sem List -->
        	<h2 class="name">
        	Select Semester </h2>
        	<div class="semlist">
        	<select id="sem">
        		<option disabled="" selected="">--Select--</option>
        		<option value="sem1" >SEM V</option>
        		<option value="sem2">SEM VI</option>
        	</select>
        </div>

        	

<div class="sem-details">

           	<div class="sem1 detail">

        	<h2 class="name">
        	Select exam </h2>
        	<div class="examlist">

        	<select id="exam" >
        		<option disabled="" selected="">--Select--</option>
        		<option value="internal">Internal Exam</option>
        		<option value="practical">Practical Exam</option>
        		<option value="theory">Theory Exam</option>
        	</select>
        </div>

        	
        		
        		<div class="internal details">
	        	
		        	<h2 class="name">
		            Semester V</h2> 
		            <?php if (isset($_GET['error'])) { ?>
		   <div class="alert alert-danger" role="alert">
			  <?php echo $_GET['error']; ?>
		    </div>
		   <?php } ?>
		            
		        <table class="marks" >
                <tr>
                    <th>Subject</th>
                    <th>Obtained Marks.</th>
                    <th>Out of Marks(total)</th>
                </tr>
                <tr>
                    <td>Theoretical Computer Science </td>
                    <td><input class="obt_marks" type="text" name="in_tcs" value="<?=$rows['in_tcs']?>"></td>
                    <td>20</td>
                </tr>
                <tr>
                    <td>Software Engineering</td>
                    <td><input class="obt_marks" type="text" name="in_se" value="<?=$rows['in_se']?>"></td>
                    <td>20</td>
                </tr>
                <tr>
                    <td>Computer Network</td>
                    <td><input class="obt_marks" type="text" name="in_cn" value="<?=$rows['in_cn']?>"></td>
                    <td>20</td>
                </tr>
                <tr>
                    <td>Data Warehousing & Mining </td>
                    <td><input class="obt_marks" type="text" name="in_dwm" value="<?=$rows['in_dwm']?>"></td>
                    <td>20</td>
                </tr>
                <tr>
                    <td>Optional Course- 1</td>
                    <td><input class="obt_marks" type="text" name="in_oc1" value="<?=$rows['in_oc1']?>"></td>
                    <td>20</td>
                </tr>
            </table>

	        </div>

	        <div class="practical details">
	        	
		        	<h2 class="name">
		            Semester V</h2> 
		            
		            <table class="marks" >
                <tr>
                    <th>Subject</th>
                    <th>Obtained Marks.</th>
                    <th>Out of Marks(total)</th>
                </tr>
                <tr>
                    <td>Software Engineering</td>
                    <td><input class="obt_marks" type="text" name="p_se" value="<?=$rows['p_se']?>"></td>
                    <td>50</td>
                </tr>
                <tr>
                    <td>Computer Network</td>
                    <td><input class="obt_marks" type="text" name="p_cn" value="<?=$rows['p_cn']?>"></td>
                    <td>50</td>
                </tr>
                <tr>
                    <td>Data Warehousing & Mining </td>
                    <td><input class="obt_marks" type="text" name="p_dwm" value="<?=$rows['p_dwm']?>"></td>
                    <td>50</td>
                </tr>
                <tr>
                    <td>Business Comm. & Ethics II </td>
                    <td><input class="obt_marks" type="text" name="p_bce2" value="<?=$rows['p_bce2']?>"></td>
                    <td>50</td>
                </tr>
                    <td>Mini Project 2-A</td>
                    <td><input class="obt_marks" type="text" name="p_mini3" value="<?=$rows['p_mini3']?>"></td>
                    <td>50</td>
                </tr>
            </table>

	        </div>

	        <div class="theory details">
	        	
		        	<h2 class="name">
		            Semester V</h2> 
		            
		            <table class="marks" >
                <tr>
                    <th>Subject</th>
                    <th>Obtained Marks.</th>
                    <th>Out of Marks(total)</th>
                </tr>
                <tr>
                    <td>Theoretical Computer Science </td>
                    <td><input class="obt_marks" type="text" name="te_tcs" value="<?=$rows['te_tcs']?>"></td>
                    <td>75</td>
                </tr>
                <tr>
                    <td>Software Engineering</td>
                    <td><input class="obt_marks" type="text" name="te_se" value="<?=$rows['te_se']?>"></td>
                    <td>75</td>
                </tr>
                <tr>
                    <td>Computer Network</td>
                    <td><input class="obt_marks" type="text" name="te_cn" value="<?=$rows['te_cn']?>"></td>
                    <td>75</td>
                </tr>
                <tr>
                    <td>Data Warehousing & Mining </td>
                    <td><input class="obt_marks" type="text" name="te_dwm" value="<?=$rows['te_dwm']?>"></td>
                    <td>75</td>
                </tr>
                <tr>
                    <td>Optional Course- 1</td>
                    <td><input class="obt_marks" type="text" name="te_oc1" value="<?=$rows['te_oc1']?>"></td>
                    <td>75</td>
                </tr>
            </table>

	        </div>

	     </div>


	     <!--Sem I end here -->

	     <div class="sem2 detail">

        	<h2 class="name">
        	Select exam </h2>
        	<div class="examlist">
        	<select id="exams">
        		<option disabled="" selected="">--Select--</option>
        		<option value="internal">Internal Exam</option>
        		<option value="practical">Practical Exam</option>
        		<option value="theory">Theory Exam</option>
        	</select>
        </div>
        	
        		
        		<div class="internal detailed">
	        	
		            <h2 class="name">
		            Semester VI</h2> 
		            
		            <table class="marks" >
                <tr>
                    <th>Subject</th>
                    <th>Obtained Marks.</th>
                    <th>Out of Marks(total)</th>
                </tr>
                <tr>
                    <td>System Programming & Compiler Construction</td>
                    <td><input class="obt_marks" type="text" name="in_spcc" value="<?=$rows['in_spcc']?>"></td>
                    <td>20</td>
                </tr>
                <tr>
                    <td>Cryptography & System Security </td>
                    <td><input class="obt_marks" type="text" name="in_css" value="<?=$rows['in_css']?>"></td>
                    <td>20</td>
                </tr>
                <tr>
                    <td>Mobile Computing</td>
                    <td><input class="obt_marks" type="text" name="in_mc" value="<?=$rows['in_mc']?>"></td>
                    <td>20</td>
                </tr>
                <tr>
                    <td>Artificial Intelligence</td>
                    <td><input class="obt_marks" type="text" name="in_ai" value="<?=$rows['in_ai']?>"></td>
                    <td>20</td>
                </tr>
                <tr>
                    <td>Optional Course -2</td>
                    <td><input class="obt_marks" type="text" name="in_oc2" value="<?=$rows['in_oc2']?>"></td>
                    <td>20</td>
                </tr>
            </table>
	        </div>

	        <div class="practical detailed">
	      
		           <h2 class="name">
		            Semester VI</h2> 
		            
		            <table class="marks" >
                <tr>
                    <th>Subject</th>
                    <th>Obtained Marks.</th>
                    <th>Out of Marks(total)</th>
                </tr>
                <tr>
                    <td>Cryptography & System Security </td>
                    <td><input class="obt_marks" type="text" name="p_css" value="<?=$rows['p_css']?>"></td>
                    <td>50</td>
                </tr>
                <tr>
                    <td>Mobile Computing</td>
                    <td><input class="obt_marks" type="text" name="p_mc" value="<?=$rows['p_mc']?>"></td>
                    <td>50</td>
                </tr>
                <tr>
                    <td>Artificial Intelligence</td>
                    <td><input class="obt_marks" type="text" name="p_ai" value="<?=$rows['p_ai']?>"></td>
                    <td>50</td>
                </tr>
                <tr>
                    <td>Cloud Computing</td>
                    <td><input class="obt_marks" type="text" name="p_cc" value="<?=$rows['p_cc']?>"></td>
                    <td>50</td>
                </tr>
                <tr>
                    <td>Mini Project Lab: 2B</td>
                    <td><input class="obt_marks" type="text" name="p_mini4" value="<?=$rows['p_mini4']?>"></td>
                    <td>50</td>
                </tr>
            </table>
	        </div>

	        <div class="theory detailed">
	        	
		           <h2 class="name">
		            Semester VI</h2> 
		            
		            <table class="marks" >
                <tr>
                    <th>Subject</th>
                    <th>Obtained Marks.</th>
                    <th>Out of Marks(total)</th>
                </tr>
                <tr>
                    <td>System Programming & Compiler Construction</td>
                    <td><input class="obt_marks" type="text" name="te_spcc" value="<?=$rows['te_spcc']?>"></td>
                    <td>75</td>
                </tr>
                <tr>
                    <td>Cryptography & System Security </td>
                    <td><input class="obt_marks" type="text" name="te_css" value="<?=$rows['te_css']?>"></td>
                    <td>75</td>
                </tr>
                <tr>
                    <td>Mobile Computing</td>
                    <td><input class="obt_marks" type="text" name="te_mc" value="<?=$rows['te_mc']?>"></td>
                    <td>75</td>
                </tr>
                <tr>
                    <td>Artificial Intelligence</td>
                    <td><input class="obt_marks" type="text" name="te_ai" value="<?=$rows['te_ai']?>"></td>
                    <td>75</td>
                </tr>
                <tr>
                    <td>Optional Course -2</td>
                    <td><input class="obt_marks" type="text" name="te_oc2" value="<?=$rows['te_oc2']?>"></td>
                    <td>75</td>
                </tr>
            </table>
	        </div>

	     </div>


	 </div>
	 <input type="text" 
		          name="id"
		          value="<?=$row['id']?>"
		          hidden >
	 
	 <button type="submit" name="submit">Add Marks</button>

</form>
<script src="https://code.jquery.com/jquery-2.2.4.js" 
integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" 
crossorigin="anonymous"></script>
<script>

	$(document).ready(function(){
		$("#sem").change(function(){
			var imp = $("#sem").val();
			$(".detail").hide();
			$("."+imp).show();
		})
	})


	$(document).ready(function(){
		$("#exam").change(function(){
			var imp = $("#exam").val();
			$(".details").hide();
			$("."+imp).show();
		})
	})

	$(document).ready(function(){
		$("#exams").change(function(){
			var imp = $("#exams").val();
			$(".detailed").hide();
			$("."+imp).show();
		})
	})
</script>
</body>
</html>