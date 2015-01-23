<?php
	$name = $_GET['name'];
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="">
</head>
<body>
	<form action="up.php" method="post" enctype="multipart/form-data">
	Your Photo: <input type="file" name="photo" size="25" />
	<?php echo "<input type=\"hidden\" name=\"country\" value=\"$name\">";  ?>
	<input type="submit" name="submit" value="Submit" />
</form>
</body>
</html>