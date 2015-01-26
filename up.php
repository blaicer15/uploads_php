<?php
	include "conect.php";
	$name = $_POST['country'];
	
	$message = "";
	$valid_file = true;
	//if the32	
	// DID upload a file...
	if($_FILES['photo']['name'])
	{
		//if no errors...
		if(!$_FILES['photo']['error'])
		{
			//now is the time to modify the future file name and validate the file
			/*
			$new_file_name = strtolower($_FILES['photo']['tmp_name']); //rename file
			if($_FILES['photo']['size'] > (1024000)) //can't be larger than 1 MB
			{
				$valid_file = false;
				$message = 'Oops!  Your file\'s size is to large.';
			}
			*/
			
			//if the file has passed the test
			if($valid_file)
			{
				$folder = sha1($name);
				$carpeta = $folder[0].$folder[1].$folder[2].$folder[3].$folder[4].$folder[5];
				//move it to where we want it to be
				$currentdir = getcwd();
				$target = "{$currentdir}/uploads/";
				$dir = chdir("uploads/");
				$exist = file_exists($carpeta);
				if ($exist) {
					$true = chmod($carpeta, 0777);
				}else{	
					$newfolder = mkdir($carpeta, 0777);
				}
				$in = chdir("$carpeta");
				$addres = getcwd();
				$val ="$addres/".  basename($_FILES['photo']['name']);
				move_uploaded_file($_FILES['photo']['tmp_name'], $val);
				//move_uploaded_file($_FILES['photo']['tmp_name'], 'uploads'.$new_file_name);*/
				$message = 'Congratulations!  Your file was accepted.';
			}
		}
		//if there is an error...
		else
		{
			//set that to be the returned message
			$message = 'Ooops!  Your upload triggered the following error:  '.$_FILES['photo']['error'];
		}
	}
	echo "this name: ".$name."<br>";
	echo "this folder: ".$folder."<br>";
	echo "name folder: ".$carpeta."<br>";
	echo "addres folder: ".$currentdir."<br>";
	echo "address server: ".$target."<br>";
	echo "new dir: ".$dir."<br>";
	echo " ".$addres."<br>";
	echo "Folder Exist: ".$exist."<br>";
	echo " ".$message."<br>";
?>