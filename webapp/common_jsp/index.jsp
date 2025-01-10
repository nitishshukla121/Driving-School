<style>
.container {
	position: relative;
	display: inline-block;
	margin-top: 70px;
	margin-bottom: 50px;
	width: 50%;
}

.button {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 10px 20px;
	background-color: red; /* Change this to your desired button color */
	color: #ffffff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.image {
	width: 100%;
	height: auto;
}

.text {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 151px;
	font-weight: bold;
	text-align: center;
	font-family: Gabriola;
	color: white;
}

.separator {
	height: 3px;
	background-color: #fff;
	margin: 20px auto;
	width: 100%;
}

.para {
	font-size: 21px;
	font-family: serif;
	justify-content: center;
	align-items: center;
}

.content {
	height: 500px;
	justify-content: center;
	align-items: center;
}

.container {
	display: flex;
	justify-content: center;
	align-items: center;
}

.content {
	flex: 1;
}

.imager {
	flex: 1;
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

.imagel {
	flex: 1;
	display: flex-start;
	justify-content: flex-end;
	align-items: center;
}

.imager img {
	max-width: 100%; /* Ensure image doesn't overflow its container */
}

.imagel img {
	max-width: 100%; /* Ensure image doesn't overflow its container */
}

.pheading {
	font-size: 50px;
	font-family: serif;
	color: white;
}
</style>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Driving School Arena</title>

<%@include file="/common/common_css.html"%>

</head>
<body style="background-color: #C19A6B;">
	<%@include file="/common/common_header.html"%>

	<!--  -->
	<div class="container=fluid">
		<img class="image" alt="" src="/Drivingmitra/images/view-car-running-high-speed.jpg">
		<div class="text">Driving School Arena</div>
		<a href="/Drivingmitra/trainee/onlineadmission.jsp">
			<button class="button">Admission</button>
		</a>
	</div>
	<div class="separator"></div>
	<!--  -->
	<div class="container">
		<div class="content">
			<H2 class="pheading">Experienced Instructors:</H2>
			<p class="para">Our driving school boasts a team of highly
				experienced and certified instructors who are dedicated to providing
				comprehensive and professional driving instruction.</p>
		</div>
		<div class="imagel">
			<img src="/Drivingmitra/images/Screenshot 2024-04-14 232437.png" alt="Image" style="width: 500px; height: 300px; justify-content: flex-end;">
		</div>
	</div>
	<div class="separator"></div>
	<div class="container">
		<div class="imagel">
			<img src="/Drivingmitra/images/plan.jpg" alt="Image">
		</div>

		<div class="content">
			<H2 class="pheading">Customized Learning Plans:</H2>
			<p class="para">We understand that each learner is unique, which
				is why we offer customized learning plans tailored to individual
				needs and skill levels. Whether you're a beginner or looking to
				refine your driving skills, we have a program for you.</p>
		</div>

	</div>
	<div class="separator"></div>

	<div class="container">
		<div class="content">
			<H2 class="pheading">Flexible Scheduling:</H2>
			<p class="para">We offer flexible scheduling options to
				accommodate busy lifestyles. Whether you prefer daytime, evening, or
				weekend lessons, we can find a schedule that works for you.</p>
		</div>
		<div class="imager">
			<img src="/Drivingmitra/images/img.jpg" alt="Image" style="	
			 width: 500px;">
		</div>
	</div>
	<div class="separator"></div>
	<div class="container">
		<div class="imagel">
			<img src=/Drivingmitra/images/Screenshot.png alt="Image">
		</div>
		<div class="content">
			<H2 class="pheading">Modern Fleet of Vehicles:</H2>
			<p class="para">Our driving school maintains a modern fleet of
				vehicles equipped with the latest safety features, providing
				learners with a comfortable and secure learning environment.</p>
		</div>

	</div>
	<div class="separator"></div>

	<div class="container">


		<div class="content">
			<H2 class="pheading">Affordable Pricing:</H2>
			<p class="para">We strive to make quality driving education
				accessible to everyone by offering competitive pricing and various
				payment options.</p>
		</div>
		<div class="imager">
			<img src="/Drivingmitra/images/price.jpg" alt="Image">
		</div>
	</div>
	<div class="separator"></div>


	<%@ include file="/common/common_footer.html"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

