<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dm.dao.*,dm.beans.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Feedbacks</title>
<%@include file="/common/common_css.html"%>
<style>
.card {
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	margin: 10px;
	overflow: hidden;
	transition: box-shadow 0.3s ease-in-out;
	width: 300px;
	margin-top: 80px;
}

.card:hover {
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.card .card-body {
	padding: 20px;
}

.card .card-body .transaction {
	display: none;
}

.card:hover .card-body .transaction {
	display: block;
}

.h3 {
	margin-top: 50px;
}
</style>

</head>
<body style="background-color: #f87609">
	<%@include file="/common/common_header.html"%>

	<%
	Userdao dao = new Userdao();
	ArrayList<Feedbacks> feedbackList = dao.viewfeebacks();
	%>

	<div class="row">
		<%
		for (Feedbacks f : feedbackList) {
		%>
		<div class="col-3 ">
			<div class="card">
				<div class="card-body">
					<h3 class="card-tittle">
						User:<%=f.getName()%></h3>
					<div class="transaction">
						<p class="card-text">
							Remark :<%=f.getRemarks()%></p>
						<h5 class="card-text">
							Rating out of 5:<%=f.getRating()%>
						</h5>
						<!-- Add more transactions here -->
					</div>
				</div>
			</div>

		</div>

		<%
		}
		%>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>