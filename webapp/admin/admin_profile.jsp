<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="dm.dao.* ,dm.beans.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin profile</title>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>

<%@include file="/common/common_css.html"%>



</head>
<body  style="background-color: #6F8FAF">

	<%
String admin_id=(String)session.getAttribute("sessionKey");
	String role=(String)session.getAttribute("role");

if(admin_id==null||session.isNew()){
	request.setAttribute("msg", "Unotharised Acess login first");
	RequestDispatcher rd= request.getRequestDispatcher("/admin/admin_login.jsp");
	rd.forward(request, response);
	
}
else{
	if(role.equals("admin")){
%>
	<!-- <div style=" width: 100% ; background-color: red; margin-top: 80px;  text-align: center;">
</div> -->
	<div class="container">

		<%
Admindao dao = new Admindao();
 Admins a= dao.viewProfile(admin_id);//passing  session id value
%>

		<section class="vh-100" >
			<div class="container py-5 h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col col-lg-6 mb-4 mb-lg-0">
						<div class="card mb-3" style="border-radius: .5rem;">
							<div class="row g-0">
								<div class="col-md-4 gradient-custom text-center "
									style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
									<img
										src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
										alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
									<h5 style="color: red"><%=a.getName() %></h5>
									<p></p>
									<a href="/Drivingmitra/admin/admin_edit_profile.jsp"><i
										class="far fa-edit mb-5"></i></a>
								</div>
								<div class="col-md-8">
									<div class="card-body p-4">
										<h6>your Information</h6>
										<hr class="mt-0 mb-4">
										<div class="row pt-1">
											<div class="col-6 mb-3">
												<h6>Email</h6>
												<p class="text-muted">
													<%=a.getEmail() %>
												</p>
											</div>
											<div class="col-6 mb-3">
												<h6>Phone</h6>
												<p class="text-muted"><%=a.getPhone() %></p>
											</div>
										</div>


									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>



	<%@include file="/admin/admin_header.html"%>

	<%} 
	else{
		request.setAttribute("msg", "you are not admin");
		RequestDispatcher rd= request.getRequestDispatcher("/admin/admin_login.jsp");
		rd.forward(request, response);
	}
	}%>
	<%-- <%@ include file="/admin/admin_footer.html" %> --%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>