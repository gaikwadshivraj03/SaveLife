<?php
require ('config.php');
$output = '';
if(isset($_POST["query"] ))
{
 $search = mysqli_real_escape_string($con, $_POST["query"]);
 $query = "SELECT * FROM hospital
WHERE  city  LIKE '".$search."%'
  
  OR blood LIKE '".$search."%' 
  OR hospital LIKE '".$search."%' 
  

 ";}
else
{
 $query = "SELECT * FROM hospital";
}
$result = mysqli_query($con, $query);
if(mysqli_num_rows($result) > 0)
{
 $output .= '
  <div class="table-responsive">
  <div style="overflow-x:auto;">
   <table class="table table bordered">
   <tr>
     <th>ID</th>
     <th>State</th>
     <th>City</th>
     <th>Hospital</th>
     <th>Blood Group</th>
    </tr>';
 while($row1 = mysqli_fetch_array($result))
 {
  $output .= '
  <tr>
    <td>'.$row1["id"].'</td>
    <td>'.$row1["state"].'</td>
    <td>'.$row1["city"].'</td>
    <td>'.$row1["hospital"].'</td>
    <td>'.$row1["blood"].'</td>
   </tr>
  ';
 }
 echo $output;
}
else
{
 echo 'Record Not Found';
}
?>