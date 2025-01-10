<style>
.table {
	border: 11px;
	border-radius: 30px;
	border-collapse: collapse;
	margin-top: 68px;
}

.th {
	background-color: #f2f2f2;
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

.tr {
	background-color: #f2f2f2;
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

.td {
	border: 1px solid #ddd;
	padding: 8px;
}

.tr:hover {
	background-color: #ddd;
}



.input {
	margin-top: 20px;
}
.data {
	max-width: 300px;
	margin: 50px auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
}
.message{
text-align: center;
align-content: center;
margin-top: 300px;
font-size: xx-large;
}

</style>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dm.dao.*,java.util.*,dm.beans.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pending Admissions</title>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
	integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<%@include file="/common/common_css.html"%>

<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>


<!-- Ajax
 -->
<script>
	

	$(document).ready(function(){
	    $("#id").change(function(){
	       // alert("hello")
	        //console.log($(this).val());
	        
	        //document.getElementById("id").value
	        
	        var id = $(this).val();//it will fetch the value from input text
	        
	        $.ajax({
	            url: "//Drivingmitra/Trainee_account",
	            
	            type : "GET",
	            data:{
	                'id': id,
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

	<form method="post" action="/Drivingmitra/Trainee_account">
		<% Traineedao dao= new Traineedao();
ArrayList<Trainee> TraineeList = dao.viewTrainee();
if(TraineeList.size()>0)
{
%>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Select</th>
					<th scope="col">Course</th>
					<th scope="col">Name</th>
					<th scope="col">Age</th>
					<th scope="col">phone</th>

					<th scope="col">Email</th>
					<th scope="col">Occupation</th>
					<th scope="col">Address</th>
					<th scope="col">City</th>
					<th scope="col">Learning Licence No.</th>
					<th scope="col">Gender</th>
					<th scope="col">Mother Name</th>
					<th scope="col">Father Name</th>
					<th scope="col">Alternate Number</th>

				</tr>
			</thead>
			<tbody>
				<%
			for( Trainee t: TraineeList) {
			%>
				<tr style="border: 11px">

					<th><input type=radio name="formid"
						value="<%=t.getSnumber()%>"><%=t.getSnumber()%></th>

					<th><%=t.getSelectcourse()%></th>
					<th><%=t.getName()%></th>
					<th><%=t.getAge()%></th>
					<th><%=t.getPhone()%></th>
					<th><%=t.getEmail()%></th>
					<th><%=t.getOccupation()%></th>
					<th><%=t.getAddress()%></th>
					<th><%=t.getCity()%></th>
					<th><%=t.getLearning_licence()%></th>
					<th><%=t.getGender()%></th>
					<th><%=t.getMothername()%></th>
					<th><%=t.getFathername()%></th>
					<th><%=t.getAltnumber()%></th>

				</tr>
				<%
			}
			%>

			</tbody>
		</table>
		<div class="data">
			<label>ID</label> <input class="input" type="text" name="id" id="id">
			<span id="ajaxmsg"></span> <br> <label style="margin: 3px;">Password</label>
			<input class="input" type="password" name="password" > <br>
			<button type="submit" class="btn btn-danger" style="margin: 3px; ">submit</button>

		</div>
		<%}
else{%>

		<div class="message">No Admission left to confirm</div>
		<%} %>

	</form>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/Drivingmitra/common/validation.js"></script>

</body>
</html>