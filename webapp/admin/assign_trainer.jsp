
<style>
body {
	font-family: Arial, sans-serif;
	background-color: powderblue;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	   
 	 
}

 form {
    max-width: 700px;
    margin: 50px auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
h2{
margin-bottom: 30px;
}

.container {
	text-align: center;
	width: 500px;
}

select {
	padding: 10px;
	font-size: 16px;
	margin-bottom: 20px;
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
<title>Assignment</title>
<%@include file="/common/common_css.html"%>

</head>
<body  style="background-color: #6F8FAF">


	<%
Admindao dao= new Admindao();
ArrayList<TrainerAccount>TrainerList=dao.viewTrainer();

 	ArrayList<Trainee>TraineeList=dao.viewTrainee();
 %>
		<%@include file="/admin/admin_header.html"%>
	

	<div class="container">
		<h2>Assign The Trainer To The Trainee</h2>
		<form  method="post" action="/Drivingmitra/Assign_trainer">
			<div><label for="selectcourse">Select Trainer:</label> <select
				name="trainer_id">

				<option>Select Trainer</option>

				<%
              for(TrainerAccount t:TrainerList)
                  {
                 %>

				<option value="<%=t.getTrainer_id() %>"><%=t.getName() %></option>
				<%} %>
				
			</select>
			</div>
			<br>
			<div> <label for="selectcourse" >Select Trainee:</label> <select
				name="trainee_id" id="selectTrainee">

				<option>Select Trainee</option>

				<%
                 for(Trainee t:TraineeList)
                       {
                         %>

				<option value="<%=t.getId() %>">
					<%=t.getName()%>
				</option>
				<%} %>

			</select> 
			</div>
			<br>
			<button type="submit" class="btn btn-danger">Assign</button>
		</form>
	</div>
	
	
	
</body>
</html>