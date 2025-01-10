<style>
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-color: powderblue;
	
}

.container {
	max-width: 1000px;
	margin: 20px auto;
	padding: 20px;
	background-color: #ffe6f2; /* Bright pink */
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	
}

.a {
	text-decoration: none;
	color: black;
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

.link-box:hover {
	background-color: #e0e0e0; /* Background color on hover */
}
</style>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dm.dao.* ,dm.beans.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainee Home</title>

<%@include file="/common/common_css.html"%>


<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
response.setHeader("Pragma", "no-cache"); //HTTP 1.0
response.setDateHeader("Expires", 0); //prevents caching at the proxy server
%>


</head>
<body style="background-color: powderblue;">
<%@include file="/trainee/trainee_header.html" %>



	<h1 style="margin-top: 70px;">Trainee home</h1>


	<%
	String id = (String) session.getAttribute("sessionKey");
	String role = (String) session.getAttribute("role");

	if (id == null || session.isNew()) {
		request.setAttribute("msg", "Unotharised Acess login first");
		RequestDispatcher rd = request.getRequestDispatcher("/trainee/trainee_login.jsp");
		rd.forward(request, response);

	} else {
		if (role.equals("Trainee")) {
	%>
	<div class="container">

		<%
		Traineedao dao = new Traineedao();
		Trainee t = dao.viewProfile(id);//passing  session id value
		TrainerAccount a = dao.viewTrainer(id);
		%>



		<h1>Welcome to Driving School Arena Trainee Portal</h1>


		<div class="dashboard">
			<div class="profile-info">
				<h2>Profile</h2>
				<p style="color: black;">
					<strong>Name:</strong>
					<%=t.getName()%>
				</p>
				<p style="color: black;">
					<strong>Age:</strong>
					<%=t.getAge()%>
				</p>
				<p style="color: black;">
					<strong>Email:</strong>
					<%=t.getEmail()%>

				</p>
				<p style="color: black;">
					<strong>Contact Number:</strong>
					<%=t.getPhone()%>

				</p>
				<p style="color: black;">
					<strong>Address:</strong>
					<%=t.getAddress()%>

				</p>
				<a href="/Drivingmitra/trainee/edit_trainee_profile.jsp"><i
					class="far fa-edit mb-5"></i></a>

			</div>

			<div class="resource">
				<h2>Performance</h2>
				<div class="link-box" style="margin-top: 20%;margin-left: 20%;">
					<strong>Performance:</strong> <a
						href="/Drivingmitra/trainee/performance.jsp" class="a">View
						performance </a>
				</div>
			</div>
			<div class="profile-info">
				<h2>Assigned Trainer</h2>
				<p style="color: black;">
					<strong>Name:</strong>
					<%=a.getName()%>
				</p>
				<p style="color: black;">
					<strong>gender:</strong>
					<%=a.getGender()%>
				</p>
				<p style="color: black;">
					<strong>Email:</strong>
					<%=a.getEmail()%>
				</p>
				<p style="color: black;">
					<strong>Contact Number:</strong>
					<%=a.getPhone()%>

				</p>

			</div>
			<div class="resource">
				<h2>Feedback</h2>
				<p style="color: black;">
								<div class="link-box" style="margin-top: 10%;margin-left: 20%;">
				
					<strong>Submit Feedback:</strong> <a
						href="/Drivingmitra/trainee/trainee_feedback.jsp">Feedback </a>
				</p>
				</div>
			</div>
			<div class="resource">
				<h2>Support</h2>
				<p style="color: black;">
								<div class="link-box" style="margin-top: 5%;margin-left: 20%;">
				
					<strong>Contact Support:</strong> <a
						href="/Drivingmitra/trainee/trainee_contact_us.jsp">Contact </a>
				</p></div>
			</div>
			<div class="support">
				<h2>TrackVehicle</h2>
				<p style="color: black;">
					<strong>Track:</strong> <a href="/Drivingmitra/trainee/vehicletracking.jsp">TrackVehicle</a>
				</p>
			</div>


		</div>

		<%
	} else {
	request.setAttribute("msg", "you are not Trainee");
	RequestDispatcher rd = request.getRequestDispatcher("/trainee/trainee_login.jsp");
	rd.forward(request, response);
	}
	}
	%>
		<button class="btn btn-warning center" >
			<a href="/Drivingmitra/Trainee_logout">Logout </a>
		</button>

	</div>


	<%-- 	<%@ include file="/common/common_footer.html"%>
 --%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>