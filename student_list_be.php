<?php include "be_student_list_php.php"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BE Student's List</title>
    <link rel="stylesheet" type="text/css" href="css/student_list.css">
</head>
<body>

    <h1>BE Student's List</h1>

    <div class="header">
        <ul>
          <li><a href="student_list_main.html">Previous Page</a></li>
        </ul>
      </div>

    <?php if(mysqli_num_rows($result)){ ?>



    <table>
        <tr id="header">
            <th>Sr No.</th>
            <th>First name</th>
            <th>Last name</th>
            <th>Address</th>
            <th>E-mail</th>
            <th>Phone</th>
            <th>Seat Number</th>
            
        </tr>
        
          <!-  <?php 
            $i = 0;
            while ($rows = mysqli_fetch_assoc($result)) {
             $i++;
            

            ?>
        <tr>
            <td><?=$id?></td>
            <td><?=$rows['first_name']?> </td>
            <td><?=$rows['last_name']?> </td>
            <td><?=$rows['address']?></td>
            <td><?=$rows['Email']?></td>
            <td><?=$rows['phone']?> </td>
            <td><?=$rows['seat_no']?></td>
           
        </tr>
         <?php } ?>

    </table>
    <?php } ?>

</body>

</html>