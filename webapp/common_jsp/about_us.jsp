<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us - DRIVING SCHOOL ARENA</title>
<style>
/* Basic styling */
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	
}

.container {/* 
	width: 100%;
	margin: 0 auto;
	padding: 20px;
	background-color:#5a83b0;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); */
	margin-top: 75px;
	  max-width: 700px;
    margin: 50px auto;
    padding: 20px;
    font-size: x-large;
   
}

.separator {
	height: 3px;
	background-color: #fff;
	margin: 50px auto;
	width: 100%;
}

.point {
	font-weight: bold;
	font-family: Gabriola;
	color: white;
}

h1, h2 {
	font-weight: bold;
	text-align: center;
	font-family: Gabriola;
	color: white;
	margin: 50px;
}

img {
	width: 100%;
	height: 350px;
}

p {
	line-height: 1.6;
	color: white;
}
</style>
<%@include file="/common/common_css.html"%>

</head>
<body style="background-color: #C19A6B;">
	<%@include file="/common/common_header.html"%>

	<div class="container">
	<div class="img" >
		<img src="/Drivingmitra/images/Screenshot 2024-03-29 233028.png"
			alt="School Building" style="width: 100%;">
			</div>
		<div class="separator"></div>

		<p style="font-size: x-large;">
			Welcome to <strong>DRIVING SCHOOL ARENA</strong>! We are passionate
			about nurturing young minds and fostering a love for learning.
		</p>
		<div class="separator"></div>
		<div class="point">
			<h2>Our Vision</h2>
			<p style="font-size: x-large;">
				At <strong>DRIVING SCHOOL ARENA</strong>, we envision a world where
				every student thrives. Our mission is to empower students with
				knowledge, skills, and character to become global citizens. We
				believe in:
			</p>

			<ul>
				<li><strong>Excellence:</strong> Striving for the highest
					standards in education.</li>
				<li><strong>Community:</strong> Building a supportive and
					inclusive school community.</li>
				<li><strong>Holistic Development:</strong> Nurturing
					intellectual, physical, and emotional growth.</li>
			</ul>
		</div>
		<div class="separator"></div>
		<div class="point">
			<h2>Our Mission</h2>
			<p style="font-size: x-large;">Our goal is to provide a safe, stimulating environment where
				students can:</p>
			<ul>
				<li>Develop strong <strong>morals</strong> and make ethical
					choices.
				</li>
				<li>Embrace <strong>values</strong> that shape their unique
					beliefs.
				</li>
				<li>Practice <strong>problem-solving techniques</strong> for
					life's challenges.
				</li>
				<li>Cultivate a <strong>positive attitude</strong> towards
					learning and life.
				</li>
			</ul>
		</div>
		<div class="separator"></div>

		<h2>Meet Our Team</h2>
		<p style="font-size: x-large;">Our dedicated educators and staff work tirelessly to create a
			nurturing environment. We celebrate diversity, encourage curiosity,
			and inspire lifelong learning.</p>
		<p style="font-size: x-large;">
			Feel free to explore our website and learn more about our programs,
			achievements, and the incredible journey we've had since our
			inception in <strong>2024</strong>.
		</p>
		<p style="font-size: x-large;">
			If you have any questions or would like to visit our campus, don't
			hesitate to reach out. We look forward to welcoming you to the <strong>DRIVING
				SCHOOL ARENA</strong> family!
		</p>
		<div class="separator"></div>

	</div>

	<%@ include file="/common/common_footer.html"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
