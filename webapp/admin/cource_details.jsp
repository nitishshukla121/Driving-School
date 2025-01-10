<style>
    body {
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
       
    }
   /*  form {
        width: 700px;
        
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    } */
    
 form {
    max-width: 700px;
    margin: 50px auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
    }
    input[type="text"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    textarea {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        resize: vertical;
    }
    .form-group {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    button {
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    button[type="reset"] {
        background-color: #dc3545;
    }
</style>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course details</title>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<%@include file="/common/common_css.html"%>

</head>
<body  style="background-color: #6F8FAF">
	<%@include file="/admin/admin_header.html"%>


<form method="post" action="/Drivingmitra/Course_details">
    <div class="form-group">
        <label for="courseName">Course Name:</label>
        <input type="text" id="courseName" name="courseName"  oninput="validateInput(event)">
    </div>
    <div class="form-group">
        <label for="charge">Charge:</label>
        <input type="text" id="charge" name="charge">
    </div>
    <div class="form-group">
        <label for="description">Description:</label>
        <textarea id="description" name="description" rows="5"></textarea>
    </div>
    <div class="form-group" style="margin-top: 11px;">
        <label for="duration">Duration:</label>
        <input type="text" id="charge" name="duration">
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-danger">Submit</button>
        <button type="reset" class="btn btn-warning">Reset</button>
    </div>
</form>

	
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

</body>
</html>