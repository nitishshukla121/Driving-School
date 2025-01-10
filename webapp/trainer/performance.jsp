<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
    background-image: url("/Drivingmitra/images/maxim-berg-JiM_eFf2O3M-unsplash.jpg");
	background-size: cover;
	padding: 20px;
}

.dropdown {
	margin: 30px;
}

 form {
    max-width: 700px;
    margin: 50px auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }

.textarea {
	margin: 30px;
}

.container {
	text-align: center;
	width: 50%;
	height: 40%; 
	display : flex;
	flex-direction: row;
	display: flex;
}

select {
	padding: 10px;
	font-size: 16px;
	margin-bottom: 20px;
} /* 
 form {
        flex-wrap: wrap;
        justify-content: space-between; /* or other alignment options like space-around, space-evenly */
}
* /

  form label {
	flex-basis: 30%; /* Set the width of labels */
	margin-bottom: 10px;
}

button {
	padding: 10px 20px;
	font-size: 16px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
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
<title>Performance</title>

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
	Trainerdao dao = new Trainerdao();
	ArrayList<Ride_log> traineeList = dao.viewTrainee(trainer_id);
	if (traineeList.size() == 0) {
	%>
	<h2>No Trainees to fill the performance</h2>
	<%
	} else {
	%>

	<form action="/Drivingmitra/Performance" method="post"
		style="margin: 50px;">
		
		<table>
		<tr><th>
			<label for="selectcourse" class="form-label">Select Trainee:</label> </th>
			
			
			<th><select
				name="ride_id" id="selectTrainee" class="form-select">

				<option>Select Trainee</option>

				<%
				for (Ride_log r : traineeList) {
				%>

				<option value="<%=r.getRideId()%>">
					<%=r.getTrainee_id()%>
				</option>
			</select></th></tr>
		
		<tr><th>
			<label class="form-label">Performance</label></th>
			<th><textarea id="textbox" name="performance" class="form-control"></textarea></th>

		</tr>
		</table>
		<div class="text-center">
		<button type="submit" class="btn btn-danger">Submit</button>
</div>
		<%
		}
		}
		}
		%>

	</form>
	<%
	}
	%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>