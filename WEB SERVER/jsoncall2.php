<?php

header('Cache-Control: no-cache, must-revalidate');
header('Expires: Mon, 26 Jul 1997 05:00:00 GMT');
/* encode an sql query */
include("database.php");

 $query="SELECT status from demo ORDER BY park";
function encodequery($query) {
   
   global $conn;
   $result = $conn->query($query) or die('Error in query: '.$query);
   /* create one master array of the records */
	$posts = '';
   if(mysqli_num_rows($result)) {
      while($post = $result->fetch_assoc()) {
         $posts = $posts.$post["status"];
      }
   }
   
encodearray($posts);
}
function encodearray($posts) {
   header('Content-type: application/json');
   $temp = json_encode(array('String'=>$posts));
   echo '{"posts":'.$temp.'}';
}
encodequery($query);


?>	