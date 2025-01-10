
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback</title>

<style>
.container1 {
	display: flex;
	
	
	/* width: 60%;
		margin: 30px; */
	justify-content: center;
	align-items: center;
	height: 100vh;
}

h2 {
	margin-bottom: 20px;
	color: white;
}

.form-group {
	margin-bottom: 20px;
	margin-left: 50px;
	border: 11px;
}

label {
	display: block;
	margin-bottom: 5px;
	color: white;
}

input[type="text"], input[type="email"], textarea, select {
	width: calc(100% - 10px);
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #f2f2f2;
}

textarea {
	resize: vertical;
	background-color: #f2f2f2;
}

button {
	padding: 10px 20px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: center;
}

.item {
	width: 90px;
	height: 90px;
	display: flex;
	justify-content: center;
	align-items: center;
	user-select: none;
}

.radio {
	display: none;
}

.radio ~ span {
	font-size: 3rem;
	filter: grayscale(100);
	cursor: pointer;
	transition: 0.3s;
}

.radio:checked ~ span {
	filter: grayscale(0);
	font-size: 4rem;
}

.formgroup {
	display: flex;
	margin-left: 50px;
}
</style>



<%@include file="/common/common_css.html"%>

</head>
<body style="background-color: #C19A6B;">
	<%@include file="/common/common_header.html"%>

	<div class="container2"></div>

	<!--form start's here  -->

	<div class="container1">
		<div class="form-container">
			<h2 style="color: white; margin-left: 50px;">Feedback Us</h2>

			<form action="/Drivingmitra/Feedback" method="POST">
				<div class="form-group" style="float: left ">
					<label for="name">Name:</label> <input type="text" id="name"
						name="name" required oninput="validateInput(event)">
				</div>
				<div class="form-group" style="float: left">
					<label for="email">Email:</label> <input type="email" id="email"
						name="email" required>
				</div>
				<div class="form-group" style="clear: both;">
					<label for="remarks">Remarks:</label>
					<textarea id="remarks" name="remarks" rows="4" required></textarea>
				</div>

				<div class="formgroup">
					<!-- <div class="container"> -->
					<div class="item">
						<label For="0"> <input class="radio" type="radio"
							name="feedback" id="0" value="0" /> <span>&#128543;</span>
						</label>
					</div>


					<div class="item">
						<label For="1"> <input class="radio" type="radio"
							name="feedback" id="1" value="1" /> <span> &#128532; </span>
						</label>
					</div>

					<div class="item">
						<label For="2"> <input class="radio" type="radio"
							name="feedback" id="2" value="2" /> <span> &#128524;</span>
						</label>
					</div>

					<div class="item">
						<label For="3"> <input class="radio" type="radio"
							name="feedback" id="3" value="3" /> <span>&#128516;</span>
						</label>
					</div>

					<div class="item">
						<label For="4"> <input class="radio" type="radio"
							name="feedback" id="4" value="4" /> <span>&#128512;</span>
						</label>
					</div>

				</div>

				<div class="form-group">
					<button type="submit" class="btn btn-danger">Submit</button>

				</div>
			</form>
		</div>
	</div>
	<!--form end's here  -->
	<%@ include file="/common/common_footer.html"%>
	
	
	
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

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
