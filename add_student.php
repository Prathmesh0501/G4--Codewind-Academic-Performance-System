<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student</title>
    <link rel="stylesheet" href="css/add_student.css" />
</head>

<body>

  <header>
    <div class="header">
      <ol>
        <li>ACADEMIC PERFORMANCE EVALUATION SYSTEM</li>
      </ol>
      <ul>
        <li><a href="student.html"><u>Previous Page</u></a></li>
      </ul>
    </div>
  </header>
  <div class="container">
    <h2 style="text-align:center">SELECT YEAR</h2>
    <button onclick="fy_year()"> First Year </button>
    <button onclick="sy_year()"> Second Year </button>
    <button onclick="ty_year()"> Third Year </button>
    <button onclick="be_year()"> Final Year </button>
  </div>

  <script>
    function fy_year() {
      document.location.href = "fy_student_add.php";
    }
  </script>

  <script>
    function sy_year() {
      document.location.href = "sy_student_add.php";
    }
  </script>

  <script>
    function ty_year() {
      document.location.href = "ty_student_add.php";
    }
  </script>

  <script>
    function be_year() {
      document.location.href = "be_student_add.php";
    }
  </script>

</body>

</html>