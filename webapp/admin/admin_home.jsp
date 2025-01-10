<style>
body {
	margin: 0;
	padding: 0;
	background-color: powderblue; /* Bright orange */
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

.container .resource {
	border-radius: 51px 51px 51px 51px;
	background-color: powderblue;
}

.container .Profile {
	border-radius: 51px 51px 51px 51px;
	background-color: powderblue;
}

h1, h2, h3 {
	text-align: center;
	color: #333;
}

p {
	margin: 5px 0;
	color: #555;
}

a {
	color: #007bff;
	text-decoration: none;
}

a:hover {
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin home</title>

<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
response.setHeader("Pragma", "no-cache"); //HTTP 1.0
response.setDateHeader("Expires", 0); //prevents caching at the proxy server
%>

<%@include file="/common/common_css.html"%>

</head>
<body style="background-color: 	#A7C7E7">

	<%
	String admin_id = (String) session.getAttribute("sessionKey");
	String role = (String) session.getAttribute("role");
	if (admin_id == null || session.isNew()) {
		request.setAttribute("msg", "Unotharised Acess login first");
		RequestDispatcher rd = request.getRequestDispatcher("/admin/admin_login.jsp");
		rd.forward(request, response);

	} else {
		if (role.equals("admin")) {
	%>
	<%@include file="/admin/admin_header.html"%>

	<div class="container" style="margin-top: 70px;">
		<h1>Welcome to Driving School Arena Admin Portal</h1>
		<div class="dashboard">
			<div class="Profile">

				<h2>Manage Profile</h2>
				<div class="link-box" style="margin-top: 5%; margin-left: 20%;">

					<strong>Profile</strong> <a
						href="/Drivingmitra/admin/admin_profile.jsp">Profile</a>

				</div>
			</div>
			<div class=" resource">

				<h2>Assign Trainer</h2>
				<div class="link-box" style="margin-top: 5%; margin-left: 20%;">
				<strong>Trainer</strong>

					
						<a href="/Drivingmitra/admin/assign_trainer.jsp">Assign</a>
					
				</div>
			</div>
			<div class="resource">

				<h2>Manage Trainees</h2>
				<div class="link-box" style="margin-top: 5%; margin-left: 20%;">

				<strong>TRainees</strong>

					<a href="/Drivingmitra/admin/panding_admission.jsp">Add
						Trainees</a>

				</div>
			</div>
			<div class="resource">
				<h2>Manage Instructors</h2>
				<div class="link-box" style="margin-top: 5%; margin-left: 20%;">

					<strong>Instructors</strong> <a
						href="/Drivingmitra/admin/trainer_account.jsp">Add Instructors</a>

				</div>
			</div>
			<div class="resource">
				<h2>Manage Lessons</h2>
				<div class="link-box" style="margin-top: 5%; margin-left: 20%;">

					<strong>Lession</strong> <a
						href="/Drivingmitra/admin/cource_details.jsp">Add Lessons</a>

				</div>
			</div>
			<div class="resource">
				<h2>Events</h2>
				<div class="link-box" style="margin-top: 5%; margin-left: 20%;">

					<strong>Events</strong> <a href="/Drivingmitra/admin/event.jsp">Event</a>

				</div>
			</div>
			<div class="resource">
				<h2>Manage Feedback</h2>
				<div class="link-box" style="margin-top: 5%; margin-left: 20%;">

					<strong>Feedback</strong> <a
						href="/Drivingmitra/admin/viewfeedback.jsp">View Feedback</a>

				</div>
			</div>
			<div class="resource">
				<h2>Manage Support</h2>
				<div class="link-box" style="margin-top: 5%; margin-left: 20%;">

					<strong>Queries</strong> <a
						href="/Drivingmitra/admin/viewcontacts.jsp">View Support
						Requests</a>

				</div>
				
				
			</div>
			
            <div class="resource">
                <h2>Track Vehicle</h2>
                <p><a href="/Drivingmitra/admin/vehicletracking.jsp">TrackVehicle</a></p>
            </div>
			
			
		</div>


	</div>



















	<%
	} else {
	request.setAttribute("msg", "you are not admin");
	RequestDispatcher rd = request.getRequestDispatcher("/admin/admin_login.jsp");
	rd.forward(request, response);

	}

	}
	%>
	<%-- 	 <%@ include file="/admin/admin_footer.html" %> 
 --%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>