

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Admin Login</title>
<style>
body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
		flex-direction: column;
	
}


.container1 {
	width: 300px;
	padding: 20px;
	background-color: #f0f0f0;
	border-radius: 10px;
	border: 2px solid #ccc;

}

.form-group {
	margin-bottom: 15px;
}

label {
	display: block;
	margin-bottom: 5px;
}

input[type="text"], input[type="password"], input[type="submit"] {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: #4caf50;
	color: white;
	cursor: pointer;
}

H1 {
	font-family: Gabriola;
	text-align: center;
	text-weight: bold;
	color: red;
}
</style>

<%@include file="/common/common_css.html"%>

</head>
<body style="background-color: #E5AA70;">
	<%@include file= "/common/common_header.html" %> 

	<h1 style="color: red;margin-bottom: 30px; text-size:large;">Here only Admins can login</h1>

	<div class="container1">
		<form action="/Drivingmitra/Admin_login" method="post" novalidate class="needs-validation">
			<div class="form-group">
				<label for="id">ID:</label> <input type="text" id="id" name="id" required>
				 <div class="invalid-feedback">
        Please choose a id.
      </div>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					id="password" name="password" required="required">
			 <div class="invalid-feedback">
        Please choose a password.
      </div>
			</div>
			<input type="submit" value="Submit">

<%String message= (String)request.getAttribute("msg");%>
<%-- <h2><%=message %></h2> --%>

<%if(message!=null){%>
<div class="alert alert-dismissible fade show" role="alert" style="background-color: pink;">
  <strong><%=message %></strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<%} %>

		</form>
	</div>

<%-- 	<%@ include file="/common/common_footer.html"%>
 --%>	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="/Drivingmitra/common/validation.js"></script>
		
</body>
</html>




