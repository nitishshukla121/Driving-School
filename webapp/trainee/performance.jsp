<%@page import="dm.beans.Ride_log"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dm.dao.*,java.util.*,dm.beans.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Performance</title>

<style >

body{	background-image: url("/Drivingmitra/images/traineeperformance.png");
	background-size: cover;
	}
</style>

<%@include file="/common/common_css.html"%>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
response.setHeader("Pragma", "no-cache"); //HTTP 1.0
response.setDateHeader("Expires", 0); //prevents caching at the proxy server
%>

</head>
<body>
<%@include file="/trainee/trainee_header.html" %>

	<%
	String trainee_id = (String) session.getAttribute("sessionKey");
	String role = (String) session.getAttribute("role");

	if (trainee_id == null || session.isNew()) {
		request.setAttribute("msg", "Unotharised Acess login first");
		RequestDispatcher rd = request.getRequestDispatcher("/Drivingmitra/trainee/trainee_login.jsp");
		rd.forward(request, response);

	} else {
		if (role.equals("Trainee")) {
	%>

	<%
	Traineedao dao = new Traineedao();
	ArrayList<Ride_log> PerformanceList = dao.viewPerformance(trainee_id);
	%>
	
	
	<table class="table" style="margin-top: 75px; width: 100%;">
		<thead>
			<tr class="table-danger">
				<th scope="col">Performance</th>
				<th scope="col">Date</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Ride_log r : PerformanceList) {
			%>
			<tr class="table-info">
				<th><%=r.getTrainee_performance() %></th>
				<th><%=r.getDate() %></th>

			</tr>
			<%
			}
			
		}
		}
			%>


		</tbody>

	</table>





	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>