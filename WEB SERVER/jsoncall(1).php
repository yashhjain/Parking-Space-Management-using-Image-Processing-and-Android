<?php
	$file = "jsonscript.js";
	
	if(file_exists($file)) {$filedata = file_get_contents($file);}
	$objson = json_decode($filedata, true);
	function encodearray($posts) {
   header('Content-type: application/json');
   echo json_encode(array('posts'=>$posts));
}

   /* create data array */
   $posts = $objson;
   /* encode the JSON post from the array */
   encodearray($posts);
?>