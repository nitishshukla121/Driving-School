 <style>

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            
        }

        .form-container {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            background-color: white;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }
       
    </style>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment </title>
<%@include file="/common/common_css.html"%>

</head>
<body style=" background-color: #D27D2D;">
	<%@include file="/common/common_header.html"%>
  <%
  
  String courseFees=(String)request.getAttribute("fee");
  
  String licence=(String)request.getAttribute("licence");
  %>
<%--   <input type="text" name="licence" value="<%=licence %>">
 --%>    <div class="form-container">
        <h1>Update Transaction</h1>
        <form action="/Drivingmitra/Payment" method="post">
        
        <img alt="payment QR" src="/Drivingmitra/images/Screenshot 2024-04-04 223659.png" style="length:150px;width: 150px; float: right;">
        
          <input type="text" name="licence" value="<%=licence %>">
            <label for="fees">Fees:</label>
            <input type="text" id="fees" name="fee" placeholder="Enter fees amount" required value="<%=courseFees%>" readonly="readonly">

            <label for="transactionId">Transaction ID:</label>
            <input type="text" id="transactionId" name="transactionId" placeholder="Enter transaction ID" required>

            <input type="submit" value="Update">
        </form>
    </div>

<%-- 	<%@ include file="/common/common_footer.html"%>
 --%>	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>