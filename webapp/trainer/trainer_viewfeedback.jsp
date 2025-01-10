

<%@page import="dm.dao.Admindao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dm.dao.*,java.util.*,dm.beans.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view contacts</title>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>

<%@include file="/common/common_css.html"%>

</head>
<body>
	<%@include file="/trainer/trainer_header.html"%>


	<% Admindao dao= new Admindao();
ArrayList<Feedbacks> feedbackList = dao.viewfeebacks();
%>
	<table class="table table-striped" style="margin: 68px;">
		<thead>
			<tr>
				<th scope="col">name</th>
				<th scope="col">email</th>
				<th scope="col">remark</th>
				<th scope="col">rating</th>
			</tr>
		</thead>
		<tbody>
			<!-- //id, name, email, remark, rating, date -->
			<%
			for( Feedbacks f: feedbackList) {
			%>
			<tr>
				<th><%=f.getName()%></th>
				<th><%=f.getEmail()%></th>
				<th><%=f.getRemarks()%></th>
				<th><%=f.getRating()%></th>
			</tr>
			<%
			}
			%>


		</tbody>

	</table>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>