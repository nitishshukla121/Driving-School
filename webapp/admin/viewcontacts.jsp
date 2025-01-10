

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="dm.dao.*,java.util.*,dm.beans.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view feedback</title>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>

<%@include file="/common/common_css.html"%>

</head>
<body style="background-color: powderblue">
	<%@include file="/admin/admin_header.html"%>

	<%
	Admindao dao = new Admindao();
	ArrayList<Contacts> conList = dao.viewcontacts();
	%>

	<table class="table table-dark table-striped-columns" style="margin-top: 75px;">
		<thead>
			<tr class="table-danger">
				<th scope="col">name</th>
				<th scope="col">Email</th>
				<th scope="col">phone</th>
				<th scope="col">Query</th>
			</tr>
		</thead>
		<tbody>

			<%
			for( Contacts contact: conList) {
			%>
			<tr class="table-warning">
				<th><%=contact.getUser_name()%></th>
				<th><%=contact.getUser_email()%></th>
				<th><%=contact.getUser_phone()%></th>
				<th><%=contact.getUser_question()%></th>
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