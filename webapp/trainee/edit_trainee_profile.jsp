
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-image:
		url("/Drivingmitra/images/Screenshot 2024-04-27 231938.png");
	background-size: cover;
	padding: 20px;
}

form {
	background-color: #ffffff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);
	width: 300px;
}

.form-control {
	width: 100%;
	margin-bottom: 15px;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	transition: border-color 0.3s;
}

.form-control:focus {
	outline: none;
	border-color: dodgerblue;
}

.form-control::placeholder {
	color: #999;
}

.form-control[type="submit"] {
	background-color: dodgerblue;
	color: #fff;
	cursor: pointer;
}

.form-control[type="submit"]:hover {
	background-color: #1e90ff;
}
</style>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dm.dao.* ,dm.beans.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainer Edit Profile</title>
<%@include file="/common/common_css.html"%>

</head>
<body>

<%@include file="/trainee/trainee_header.html"%>



	<%
	String trainee_id = (String) session.getAttribute("sessionKey");
	String role = (String) session.getAttribute("role");

	if (trainee_id == null || session.isNew()) {
		request.setAttribute("msg", "Unotharised Acess login first");
		RequestDispatcher rd = request.getRequestDispatcher("/Drivingmitra/trainee/trainee_login.jsp");
		rd.forward(request, response);

	} else {
		if (role.equals("Trainee")) {
	%>

	<%
	Traineedao dao = new Traineedao();
	Trainee t = dao.viewProfile(trainee_id);//passing  session id value
	%>
	<form action="/Drivingmitra/Trainer_Edit_Profile" method="post">

		<div class="dashboard">
			<div class="profile-info">
				<h2>Edit Profile</h2>


				<p style="color: black;">
					<strong>Name:</strong><input type="text" name="name"
						class="form-control" value="<%=t.getName() %>"
						oninput="validateInput(event)">
				</p>
				<p style="color: black;">
					<strong>Email:</strong><input type="text" name="email"
						class="form-control" value="<%=t.getEmail() %>">
				</p>

				<p style="color: black;">
					<strong>Address: </strong><input type="text" name="address"
						class="form-control" value="<%=t.getAddress() %>">
				</p>
				<p style="color: black;">
					<strong>Contact Number:</strong><input type="text" name="phone"
						class="form-control" value="<%=t.getPhone() %>">

				</p>
				<p style="color: black;">
					<strong>Age:</strong><input type="text" name="age"
						class="form-control" value="<%=t.getAge() %>">
				</p>




				<button type="submit" class="btn btn-danger">Submit</button>

			</div>
		</div>
	</form>

	<%
	} else {
	request.setAttribute("msg", "you are not Trainee");
	RequestDispatcher rd = request.getRequestDispatcher("/trainee/trainee_login.jsp");
	rd.forward(request, response);
	}
	}
	%>

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