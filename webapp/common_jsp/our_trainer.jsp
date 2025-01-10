<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dm.dao.*,dm.beans.*,java.util.*"%>
<!DOCTYPE html>
<html>
<style>
.card {
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	margin: 10px;
	overflow: hidden;
	transition: box-shadow 0.3s ease-in-out;
	width: auto;
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
<head>
<meta charset="ISO-8859-1">
<title>Our Trainer</title>

<%@include file="/common/common_css.html"%>

</head>
<body style="background-color: orange">
	<%@include file="/common/common_header.html"%>
<body>
	<%
	Userdao dao = new Userdao();
	ArrayList<TrainerAccount> TrainerList = dao.viewtrainer();
	%>

	<div class="row">
		<%
		for (TrainerAccount t : TrainerList) {
		%>
		<%-- <div class="col-3 ">

			<div class="card">
				<div class="card-body">
					<div class="transaction">

						<div class="instructor-card">
							<img src="/Drivingmitra/images/Screenshot.png" alt="Instructor"
								style="height: 300px;">

							<div class="instructor-info">
								<h3 class="card-tittle">
									Name:
									<%=t.getName()%></h3>
								<p class="card-text">
									Email:<%=t.getEmail()%>
								</p>
								<h5 class="card-text">
									Experience:<%=t.getExperience()%>
								</h5>
							</div>
						</div>
					</div>
				</div>
		</div> --%>
		

	</div>
	
	<div class="col-3 ">
			<div class="card">
				<div class="card-body">
					<h3 class="card-tittle">
						Trainer Name:<%=t.getName()%></h3>
					<div class="transaction">
						<p class="card-text">
							Email :<%=t.getEmail()%></p>
						<h5 class="card-text">
							Experience :<%=t.getExperience()%>
						</h5>
						<p class="card-text">
							Gender :<%=t.getGender()%></p>
						<%-- <p class="card-text">
							Description :<%=t.getDricption()%></p>
						 --%>
						<!-- Add more transactions here -->
					</div>
				</div>
			</div>

		</div>

<%
		}
		%>
	<%-- <%@ include file="/common/common_footer.html" %>
 --%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>