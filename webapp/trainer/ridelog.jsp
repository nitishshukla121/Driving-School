
<style>
body {
	font-family: Arial, sans-serif;
	
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
    background-image: url("/Drivingmitra/images/maxim-berg-JiM_eFf2O3M-unsplash.jpg");
	background-size: cover;
	padding: 20px;
}
 .form-item{
margin: 30px;
} 
 form {
    max-width: 700px;
    margin: 50px auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }

.container {
	text-align: center;
	width: 50%;
	height: auto; 
	display : flex;
	
	display: flex;
}
select {
	padding: 10px;
	font-size: 16px;
	margin-bottom: 20px;
}

button:hover {
	background-color: #45a049;
}
</style>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dm.dao.*,dm.beans.*,java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment</title>
<%@include file="/common/common_css.html"%>

</head>
<body>
	<%@include file="/trainer/trainer_header.html"%>

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
	Admindao dao = new Admindao();

	ArrayList<Assignment> assignList = dao.trainerWiseTrainee(trainer_id);
	%>



	<div class="container">
		

		<form method="post" action="/Drivingmitra/Ridelog">
		<h2>Ride log</h2>
		<table>
		<tr><th>
				<label for="selectcourse" class="form-label">Select Trainee:</label></th>
				
				<th> <select
					name="trainee_id" id="Trainee">

					<option>Select Trainee</option>

					<%
					for (Assignment a : assignList) {
					%>

					<option value="<%=a.getTrainee_id()%>">
						<%=a.getTrainee_id()%>
					</option>
					<%
					}
					}
					}
					%>

				</select></th>
			<tr><th>
				<label class="form-label">Source</label></th><th><input type="text" name="Source" ></th>
			
				<th><label class="form-label">Destination</label></th><th><input type="text" name="Destination" >
			</th>
				<th><label class="form-label">Time</label></th><th><input type="time" name="time"></th>
				</tr>
			</table>
			<div class="text-center">
			<button type="submit" class="btn btn-danger">Submit</button>
	</div>
		</form>
	</div>
	
	
	
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

	
	
	
</body>
</html>