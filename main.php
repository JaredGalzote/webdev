<?php 
include 'db.php';
$query = "SELECT * FROM questions";
$total_questions = mysqli_num_rows(mysqli_query($connection,$query));


?>
<html>
<head>
	<title>Bible Quiz</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
</head>
<body>
		<div class="container">
			<div id="home" class="justify-center flex-column">
			<h1>Bible Quiz</h1>
				<h2>Test Your Bible Knowledge</h2>
				<div class="ins-container">
				<p>
					This is a multiple choice quiz to test your Bible Knowledge.
				</p>
				<ul>
					<li><p>Number of Questions:</p><?php echo $total_questions; ?> </li>
					<li><p>Type:</p> Multiple Choice</li>
					<li><p>Estimated Time:</p> <?php echo $total_questions*1; ?> mins</li>

				</ul>
				</div>

				<a href="question.php?n=1"  class="btn">Start Quiz</a>
			</div>
		</div>

	</main>
</body>
</html>
