<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="dm.dao.*,dm.beans.*,java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Course</title>
<style>
.footer{
margin-top: 100px;
}
.card{ background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 20px;
    margin: 20px;
    overflow: hidden;
    
	font-weight: bold;
	font-family: Gabriola;
 
}


</style>

<%@include file="/common/common_css.html" %>

</head>
<body style="background-color: orange;">
<%@include file= "/common/common_header.html" %>
<%
Userdao dao= new Userdao();
ArrayList<Courses>CoursesList=dao.viewcouses();
%>

<div class="row">
<%for(Courses c:CoursesList) 
{
%>
<div class="col-3 ">
<div class="card" style="margin-top: 100px;">
<div class="card-body">
<h5 class="card-tittle"> <b>Course Name: </b>  <%=c.getCourse_name() %></h5>
<h5 class="card-text"><b>Charge For The Course:</b>   <%=c.getCharge()%></h5>
<h5 class="card-text"> <b>Description: </b>  <%=c.getDiscription() %> </h5>
<h5 class="card-text"> <b>Duration: <%=c.getDuration() %>  </b> </h5>


</div>
</div>
</div>
<%} %>
</div>




<%@ include file="/common/common_footer.html" %>
<script src = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>