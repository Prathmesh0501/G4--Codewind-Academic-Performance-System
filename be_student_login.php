<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>BE Student Login</title>
    <script>
      src = "https://kit.fontawesome.com/4e7da428f4.js";
      crossorigin = "anonymous";
    </script>
    <link rel="stylesheet" href="css/student_login.css" />
  </head>
  <body>
    <header>
      
    <form class="box" action="foy_student_login_php.php" method="POST">
      <h1>Fourth Year</h1>
	  <h1>Student Login</h1>

       <?php if (isset($_GET['error'])) { ?>
        <p class="error"><?php echo $_GET['error']; ?></p>
      <?php } ?>
      <input type="text" name="seat_no" placeholder="Seat Number" />
      <!--<input type="password" name="" placeholder="Password" />-->
      <input type="submit" value="Login" />
    </form>
    <div class="loginpage">
        <a href="student_login_main.html">Previous Page</a>
    </div>
  </body>
</html>