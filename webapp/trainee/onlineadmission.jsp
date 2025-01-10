

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dm.dao.*,dm.beans.*,java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Admission</title>

<%@include file="/common/common_css.html"%>

<!-- style
 -->
<style>
body {
	display: flex;
	align-items: center;
	justify-content: center;
	margin: 0 auto;
	height: 100vh;
	width: 70%;
	background-color:#D27D2D;
}

form {
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 70%;
	margin-top: 250px;
	margin-bottom: 20px;
}

label {
	font-weight: bold;
	color: white;
}

select, input[type="text"] {
	width: 500px;
	margin-bottom: 10px;
}

input[type="submit"] {
	background-color: #007bff;
	color: white;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
}
</style>

</head>
<body>
	<%@include file="/common/common_header.html"%>

	<%
	Userdao dao = new Userdao();
	ArrayList<Courses> coursesList = dao.viewcouses();
	%>


	<form action="/Drivingmitra/Admission" method="post">
		<label for="selectcourse">Select Course:</label> <select
			name="selectcourse" id="selectcourse">

			<option>Select course</option>

			<%
			for (Courses c : coursesList) {
			%>

			<option value="<%=c.getCourse_name()%>">
				<%=c.getCourse_name()%>
			</option>

			<%
			}
			%>
		</select> <label for="name">Name:</label> <input type="text" name="name"
			id="name" required oninput="validateInput(event)"> <label
			for="age" oninput="validateInput(event)">Age:</label> <input
			type="text" name="age" id="phone" required maxlength="2"> <label
			for="phone">Phone:</label> <input type="text" name="phone" id="phone"
			required maxlength="10"> <label for="email">Email:</label> <input
			type="text" name="email" id="email" required> <label
			for="occupation">Occupation:</label> <input type="text"
			name="occupation" id="occupation" required> <label
			for="address">Address:</label> <input type="text" name="address"
			id="address" required> <label for="city">City:</label> <input
			type="text" name="city" id="city" required> <label
			for="learninglicence">Learning Licence:</label> <input type="text"
			name="learninglicence" id="phone" required maxlength="16"> <label
			for="gender">Gender:</label> <select name="gender" id="gender">
			<option value="male">Male</option>
			<option value="female">Female</option>
		</select> <label for="mothername">Mother's Name:</label> <input type="text"
			name="mothername" id="mothername"> <label for="fathername">Father's
			Name:</label> <input type="text" name="fathername" id="fathername"> <label
			for="alternatenumber">Alternate Number:</label> <input type="text"
			name="alternatenumber" id="phone" maxlength="10">
		<button type="submit" class="btn btn-danger">Submit</button>

	</form>



	<!-- 	script to allow only alphabets for textfields
 -->
	<script>
		/* 
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
		document.getElementById('phone')
				.addEventListener(
						'keydown',
						function(event) {
							// Allow only digits and backspace/delete keys
							if (!(event.key === 'Backspace'
									|| event.key === 'Delete' || /\d/
									.test(event.key))) {
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

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>