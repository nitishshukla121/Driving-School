<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dm.dao.*,java.util.*,dm.beans.Assignment"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assign Trainees</title>
<%@include file="/common/common_css.html" %>

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

	<%
	Trainerdao dao = new Trainerdao();
	ArrayList<Assignment> traineeList = dao.viewTrainees(trainer_id);
	%>
	<table class="table table-striped" style="margin-top: 68px;">
		<thead>
			<tr>
				<th scope="col">name</th>
				<th scope="col">email</th>
				<th scope="col">phone</th>
				<th scope="col">city</th>
				<th scope="col">address</th>
				
				


			</tr>
		</thead>
		<tbody>
			<%
			for (Assignment t : traineeList) {
			%>
			<tr>
				<th><%=t.getTr().getName()%></th>
				<th><%=t.getTr().getEmail()%></th>
				<th><%=t.getTr().getPhone()%></th>
				<th><%=t.getTr().getCity()%></th>
				<th><%=t.getTr().getAddress()%></th>

			</tr>
			<%
			}
			}
			}
			%>


		</tbody>

	</table>


</body>
</html>