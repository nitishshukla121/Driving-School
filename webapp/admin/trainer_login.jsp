<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainer Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #E5AA70;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
       
    }
    .login-container {
        background-color: #fff;
        border-radius: 8px;
        padding: 20px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }
    .login-container h2 {
        text-align: center;
    }
    .login-form input[type="text"],
    .login-form input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    .login-form button {
        width: 100%;
        padding: 10px;
        background-color: #4caf50;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .login-form button:hover {
        background-color: #45a049;
    }
</style>
    <%@include file="/common/common_css.html"  %>

</head>
<body style="background-color: #E5AA70">
	<%@include file="/common/common_header.html"%>

<div class="login-container">
    <h2> Trainer Login Here</h2>
    
    
    <form  method="post" action="/Drivingmitra/trainer_login" novalidate class="needs-validation login-form" >
        <input type="text" name="trainer-id" placeholder=" login ID" required>
         <div class="invalid-feedback">
        Please choose a id.
      </div>
        <input type="password" name="password" placeholder="Password" required>
         <div class="invalid-feedback">
        Please choose a password.
      </div>
        <button type="submit">Login</button>
        <%String message= (String)request.getAttribute("msg");%>
        
        
<%if(message!=null){%>
<div class="alert alert-dismissible fade show" role="alert" style="background-color: pink;">
  <strong><%=message %></strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<%} %>
        
    </form>
    
    
</div>
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
		<script src="/Drivingmitra/common/validation.js"></script>
	
</body>
</html>