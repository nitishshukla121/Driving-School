<style>
.contenter {
	font-family: Arial, sans-serif;
	margin: 51px;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	width: auto;
}



form {
	/* background-color: #82d9bf; */
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 600px;
	height: flex;
	font-family: Gabriola;
	font-size: large;
	font-weight: bold;
	backdrop-filter: blur(5px);
	margin-top: 200px;
}

h2 {
	text-align: center;
	color: #333;
}

label {
	font-weight: bold;
}

input[type="text"], input[type="password"], input[type="email"],
	textarea {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

input[type="radio"] {
	margin-right: 5px;
}
</style>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TRAANIER ACCOUNT</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>


<%@include file="/common/common_css.html"%>

<!-- Ajax
 --><script>
	

	$(document).ready(function(){
	    $("#id").change(function(){
	       // alert("hello")
	        //console.log($(this).val());
	        
	        //document.getElementById("id").value
	        
	        var Trainer_id = $(this).val();//it will fetch the value from input text
	        
	        $.ajax({
	            url: "/Drivingmitra/Trainer_account",
	            
	            type : "GET",
	            data:{
	                'id': Trainer_id,
	               /*  'pass': */
	            },
	            //dataType: 'json',
	            success: function(response_data)
	            {
	              //alert(response_data)
	              if(response_data!="")
					{
						
	            //	  document.getElementById("ajaxmsg").innerText=response_data
						$("#ajaxmsg").text(response_data)
						$("#id").val("")
					
					}
	              else{
	            	 // $("#ajaxmsg").text("")
	              }
	                }
	            

	            
	                });
	    });
	})
	
	
	</script>



</head>
<body  style="background-color: #6F8FAF">

	<%@include file="/admin/admin_header.html"%>


	<%
String msg=(String)request.getAttribute("message");
if(msg!=null)
{

%>

	<%-- <span><%=msg %></span> --%>
	<div class="alert alert-primery" role="alert"><%=msg %></div>

	<%} %>



	<div class=contenter>
		<form action="/Drivingmitra/Trainer_account" method="post">

			<label for="id">ID:</label> <input type="text" id="id" name="id">
			<span id="ajaxmsg" style="color: brown;font-size: 21px"></span>

			<label for="password">Password:</label> <input type="password"
				id="password" name="password">
			<!--  -->
			<label for="name">Name:</label> <input type="text" id="name"
				name="name" onin>
			<!--  -->
			<label for="email">Email:</label> <input type="email" id="email"
				name="email">
			<!--  -->
			<label for="phone">Phone:</label> <input type="text" id="phone"
				name="phone" maxlength="10">
			<!--  -->
			<label for="experience">Experience:</label> <input type="text"
				id="experience" name="experience">
			<!--  -->
			<label for="gender">Gender:</label><br> <input type="radio"
				id="male" name="gender" value="male"> <label for="male">Male</label>
			<input type="radio" id="female" name="gender" value="female">
			<label for="female">Female</label> <br>
			<!--  -->
			<label for="address">Address:</label>
			<textarea id="address" name="address" rows="4" cols="50"></textarea>

			<label for="description">Description:</label>
			<textarea id="description" name="description" rows="4" cols="50"></textarea>

			<button type="submit" class="btn btn-danger">Submit</button>
			<button type="Reset" class="btn btn-info">Reset</button>


		</form>
	</div>



	<!-- 	script to allow only alphabets for textfields
 -->
	<script>
document.getElementById('phone').addEventListener('keydown', function(event) {
// Allow only digits and backspace/delete keys
if (!(event.key === 'Backspace' || event.key === 'Delete' || /\d/.test(event.key))) {
alert("only digits")
event.preventDefault();
}
});
</script>


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

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>