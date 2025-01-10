<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dm.dao.* ,dm.beans.*,java.util.*"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle Tracking</title>
<%@include file="/common/common_css.html"%>
<style >
body
{
	margin: 0 auto;
	padding: 0 auto;
	height: 100vh;
	background-image: url(/Driving_Mitra/images/for1.jpg);
	background-size: cover;
	font-family: sans-serif;
}
</style>
</head>
<body>
<%
 String id=(String)session.getAttribute("sessionKey");
if(id==null)
{

//request.setAttribute("message", Messages.UNATHORIZED_MESSAGE);

RequestDispatcher rd=request.getRequestDispatcher("/admin/admin_login.jsp");
}
else
{
%>
	<%@include file="/admin/admin_header.html"%>
<div class="container">
<h3>Hello<%=id %></h3>
</div>
<%
Traineedao dao = new Traineedao();
ArrayList<Ride_log> ridlist= dao.viewRideAdmin();
   
%>

<div class="container-fluid bg-primary"> <h4 style="text-align: center">Ride Details</h4></div>
	<table class="table">
		<thead>
			<tr>
				
				<th scope="col">Device Number</th>
				<th scope="col">Vehicle Number</th>
				<th scope="col">Trainer Id</th>
			    <th scope="col">Trainee Id</th>
				<th scope="col">Source</th>
			    <th scope="col">Destination</th>
			    <th scope="col">Track Vehicle</th>
			</tr>
		</thead>
		<tbody>
			<%
  for(Ride_log r:ridlist)
  {
  Vehicle_Details vd=r.getVd();
  
  %>
			<tr>
<th><%=vd.getDeviceno()%></th>
<th><%=r.getVehicle_no() %></th>
<th><%=r.getTrainer_id() %></th>
<th><%=r.getTrainee_id() %></th>
<th><%=r.getSource() %></th>
<th><%=r.getDestination() %></th>
<th><a  href="/Drivingmitra/common_jsp/livetrack.jsp?did=<%=vd.getDeviceno() %>"><button style="color: #000" class="btn btn-warning btn-rounded">Track Vehicle</button></a></th>
 </tr>
<%} %>
		</tbody>
	</table>
<%}%> 
	<%@ include file="/common/common_footer.html"%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>