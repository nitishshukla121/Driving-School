
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background-image: url("/Drivingmitra/images/maxim-berg-JiM_eFf2O3M-unsplash.jpg");
	background-size: cover;
	padding: 20px;
  }
  form {
    max-width: 600px;
    margin: 50px auto;
    margin-top:90px;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  label {
    display: block;
    margin-bottom: 10px;
  }
  input[type="text"],
  select,
  textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
    resize: none;
  }
  textarea {
    height: 150px;
  }
  input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
  }
  input[type="submit"]:hover {
    background-color: #45a049;
  }
</style>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tips for vehicle</title>
<%@include file="/common/common_css.html"%>

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



<form action="/Drivingmitra/Add_Tips" method="post">
  <label for="department">Types:</label>
  <select id="department" name="vtype" required>
    <option value="">vehicle_type </option>
    <option value="IT">Two wheeler</option>
    <option value="Marketing">Four Wheeler</option>
    <option value="Finance">Commercial Vehicle</option>
    <option value="HR">Farm Vehicle</option>
  </select>

  <label for="tips">Tips:</label>
  <textarea id="tips" name="tips" placeholder="Enter tips here"></textarea>

  <input type="submit" value="Submit" class="btn btn-danger" style="margin: 20px;">
</form>


<%}} %>



<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>