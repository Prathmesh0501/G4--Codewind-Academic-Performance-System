<?php
$db = mysqli_connect('localhost','root','','apes');

$sql = "SELECT * FROM ty_stud_data ORDER BY first_name ";

$result = mysqli_query($db,$sql);
