<?php 
	include 'db.php';
	session_start(); 
	//Set Question Number
	$number = $_GET['n'];

	//Query for the Question
	$query = "SELECT * FROM questions WHERE question_number = $number";

	// Get the question
	$result = mysqli_query($connection,$query);
	$question = mysqli_fetch_assoc($result); 

	//Get Choices
	$query = "SELECT * FROM options WHERE question_number = $number";
	$choices = mysqli_query($connection,$query);
	// Get Total questions
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
			<div id="game" class="justify-center flex-column">
				<div id="hud">
					<div class="hud-item">
						<p id="progressText" class="hud-prefix">Question</p>
						<div id="progressBar">
							<div class="progressBarFull"></div>
						</div>
					</div>
				</div>
					<div id="question">
						<p class="question"><?php echo $question['question_text']; ?> </p>
						<form method="POST" action="process.php">
					</div>
					<div class="choice-container">
						<ul class="choice">
							<p class="choice-prefix">
							<?php while($row=mysqli_fetch_assoc($choices)){ ?>
							<li><input type="radio" name="choice" value="<?php echo $row['id']; ?>"><?php echo $row['coption']; ?></li>
							<?php } ?>	</p>				
						</ul>
					</div>
						<input type="hidden" name="number" value="<?php echo $number; ?>">
						<input type="submit" name="submit" value="Submit">

					</form>
			</div>
	</div>
</body>
</html>