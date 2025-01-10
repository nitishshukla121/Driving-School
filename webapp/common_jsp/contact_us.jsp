<style>
.container {
margin-top: 11px;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	
}
body{	background-image: url("/Drivingmitra/images/background.png");
	background-size: cover;
	 padding: 20px;
	}

.form-container {
	width: 50%;
	padding: 40px;
}
.h2{

	margin-bottom: 20px;
	color: white;
	font-family: Gabriola;
	font-weight: bold;
}
.separator {
	height: 3px;
	background-color: #fff;
	margin: 20px auto;
	width: 100%;
}
.form-group {
	margin-bottom: 20px;
	color: white;
	font-family: Gabriola;
	font-weight: bold;
	font-size: x-large;
}


label {
	display: block;
	margin-bottom: 5px;
}

input[type="text"], input[type="email"], input[type="tel"], textarea {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: white;
}


textarea {
	width:100%;
	resize: vertical;
	background-color: white;
}

button {
	padding: 10px 20px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

button[type="reset"] {
	background-color: red;
	margin-right: 10px;
}




</style>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Driving Mitra</title>

<%@include file="/common/common_css.html"%>

</head>
<body style="background-color: black">
	<%@include file="/common/common_header.html"%>

	<div class="container">
		<div class="form-container">
			<h2 style="color: white">Contact Us</h2>
			<form action="/Drivingmitra/Contactus" method="POST">
				<div class="form-group">
					<label for="name">Name:</label> <input type="text" id="name"
						name="name" required  oninput="validateInput(event)">
				</div>
				<div class="form-group">
					<label for="email">Email:</label> <input type="email" id="email"
						name="email" required >
				</div>
				<div class="form-group">
					<label for="phone">Phone:</label> <input type="text" id="phone"
						name="phone" required  maxlength="10">
				</div>
				<div class="form-text">
					<label for="query" style="color:white">Query:</label>
					<textarea id="query" name="query" rows="4" required></textarea>
				</div>
				<div class="form-group">
					<button type="reset" class="btn btn-primary">Reset</button>
					<button type="submit" class="btn btn-danger">Submit</button>

				</div>
			</form>
		</div>
 
	</div>
	
<!-- 	script to allow only alphabets for textfields
 --><script>/* 
document.getElementById('phnumber').addEventListener('input', function(event) {
const input = event.target;
const inputValue = input.value.replace(/\D/g, ''); // Remove non-digit characters
if (inputValue.length > 10) {
input.value = inputValue.slice(0, 10); // Truncate to 10 digits
}
else if (inputValue.length === 10) {
input.classList.remove('invalid');
}
else {
input.classList.add('invalid');
}
}); */
document.getElementById('phone').addEventListener('keydown', function(event) {
// Allow only digits and backspace/delete keys
if (!(event.key === 'Backspace' || event.key === 'Delete' || /\d/.test(event.key))) {
alert("only digits")
event.preventDefault();
}
});
</script>
	
	<script>
function validateInput(event) {
const input = event.target.value;
const regex = /^[a-zA-Z]*$/; // Regular expression to match only characters
if (!regex.test(input)) {
// If input contains anything other than characters, remove them
event.target.value = input.replace(/[^a-zA-Z]/g, '');
alert("only aplhabets allowed")
}
}
</script>
	
	<!--form end's here  -->
<%-- 	<%@ include file="/common/other_footer.html"%>
 --%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>