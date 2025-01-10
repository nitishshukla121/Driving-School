
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dm.dao.* ,dm.beans.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainer Home Page</title>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
response.setHeader("Pragma", "no-cache"); //HTTP 1.0
response.setDateHeader("Expires", 0); //prevents caching at the proxy server
%>

<%@include file="/common/common_css.html"%>

<style>
body {
	margin: 0;
	padding: 0;
	background-color: #5a83b0; /* Bright orange */
	font-family: Arial, sans-serif;
}


.container {
	max-width: 1000px;
	margin: 20px auto;
	padding: 20px;
	background-color: #ffe6f2; /* Bright pink */
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

.container .profile-info {
	border-radius: 51px 51px 51px 51px;
		background-color: powderblue;
	
}

.container .resource {
	border-radius: 51px 51px 51px 51px;
		background-color: powderblue;
	
}

h1, h2, h3 {
	text-align: center;
	color: #333;
}

p {
	margin: 5px 0;
	color: black;
}

.a {
	color: #007bff;
	text-decoration: none;
}

.a:hover {
	text-decoration: underline;
}

.dashboard {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
}

.dashboard>div {
	flex-basis: calc(50% - 20px);
	background-color: #f9f9f9;
	border-radius: 5px;
	padding: 15px;
	margin-bottom: 20px;
}

.logout {
	text-align: center;
	margin-top: 20px;
}

.link-box {
	display: inline-block;
	padding: 10px 20px;
	background-color: #f0f0f0;
	border: 1px solid #ccc;
	border-radius: 5px;
	text-decoration: none;
	color: #333;
	font-weight: bold;
	transition: background-color 0.3s;
	
}
</style>

</head>
<body>
<%@include file="/trainer/trainer_header.html" %>

	<%
	String trainer_id = (String) session.getAttribute("sessionKey");
	String role = (String) session.getAttribute("role");

	if (trainer_id == null || session.isNew()) {
		request.setAttribute("msg", "Unotharised Acess login first");
		RequestDispatcher rd = request.getRequestDispatcher("/admin/trainer_login.jsp");
		rd.forward(request, response);

	} else {
		if (role.equals("trainer")) {
	%>

	<%
	Trainerdao dao = new Trainerdao();
	TrainerAccount t = dao.viewProfile(trainer_id);//passing  session id value
	%>

	<div class="container" style="margin-top: 70px;">

	<h1 style="margin-top: 10px;">Welcome to Driving School Arena
		Trainer Portal</h1>
	<div class="dashboard">
		<div class="profile-info">
			<h2>Profile</h2>
			<p style="color: black;">
				<strong>Id:</strong><%=t.getTrainer_id()%></p>
			<p style="color: black;">
				<strong>Password:</strong><%=t.getPassword()%></p>

			<p style="color: black;">
				<strong>Name: </strong><%=t.getName()%></p>
			<p style="color: black;">
				<strong>Contact Number:</strong><%=t.getPhone()%>
			</p>
			<p style="color: black;">
				<strong>Experience:</strong><%=t.getExperience()%></p>
			<p style="color: black;">
				<strong>Email:</strong><%=t.getEmail()%>
			</p>
			<p style="color: black;">
				<strong>Discription:</strong><%=t.getDricption()%></p>
			<p style="color: black;">
				<strong>Gender:</strong><%=t.getGender()%></p>


			<p style="color: black;">
				<strong>Address:</strong><%=t.getAddress()%>
			</p>
			<a href="/Drivingmitra/trainer/trainer_edit_profile.jsp"><i
				class="far fa-edit mb-5"></i></a>

		</div>
		<div class="resource">
			<h2>Performance tracking</h2>
			<div class="link-box" style="margin-top: 15%; margin-left: 20%;">

				<strong>Performance</strong> <a
					href="/Drivingmitra/trainer/performance.jsp">Fill Performance</a>
			</div>
		</div>

		<div class="resource">
			<h2>Ride Log Management</h2>
			<div class="link-box" style="margin-top: 5%; margin-left: 20%;">

				<strong>Ride log</strong> <a
					href="/Drivingmitra/trainer/ridelog.jsp">Ride Log Management</a>
			</div>
		</div>
		<div class="resource">
			<h2>Tips</h2>
			<div class="link-box" style="margin-top: 5%; margin-left: 20%;">

				<strong>Tips</strong> <a href="/Drivingmitra/trainer/add_tips.jsp">Add
					Tips</a>
			</div>
		</div>
		<div class="resource">
			<h2>Assigned Trainees</h2>
			<div class="link-box" style="margin-top: 5%; margin-left: 20%;">


				<strong>Trainees:</strong> <a
					href="/Drivingmitra/trainer/assign_trainees.jsp"> Trainees</a>

			</div></div>

			<div class="resource">
				<h2>Contact</h2>
				<div class="link-box" style="margin-top: 5%; margin-left: 20%;">

					<strong>Contact :</strong> <a
						href="/Drivingmitra/trainer/trainer_viewfeedback.jsp">Queries
					</a></div>
				</div>
		
		

		<%
		} else {
		request.setAttribute("msg", "you are not admin");
		RequestDispatcher rd = request.getRequestDispatcher("/admin/trainer_login.jsp");
		rd.forward(request, response);
		}
		}
		%>
		<button class="btn btn-warning">
			<a href="/Drivingmitra/Trainer_Logout">Logout </a>
		</button>

</div>
</div>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>