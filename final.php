<?php 

session_start();

?>

<html>
<head>
	<title>Bible Quiz</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
</head>
<body>
	<div class="container">
			<div id="home" class="flex-column flex-center">
			<h1>Bible Quiz</h1>
				<h2>Your Result</h2>
				<p>Congratulation You have completed this test succesfully.</p>
				<p>Your <strong>Score</strong> is <?php echo $_SESSION['score']*10; ?>  </p>
				<?php unset($_SESSION['score']); ?>
				<a href="index.php" class="button">Return to home page</a>
			</div>
	</div>

</body>
</html>