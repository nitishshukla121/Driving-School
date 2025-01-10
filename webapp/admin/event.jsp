<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event</title>

<%@include file="/common/common_css.html" %>
<style>
     
     
    form {
    max-width: 700px;
    margin: 50px auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }
  </style>

</head>
<body  style="background-color: #6F8FAF">
	<%@include file="/admin/admin_header.html"%>


<div class="container-fluid d-flex justify-content-center align-items-center vh-100">
  <div class="col-lg-6 col-md-8 col-sm-10 col-12 form-container">
    <h2 class="text-center mb-4">Event Details</h2>
    <form  method="post" action="/Drivingmitra/Event">
      <div class="form-group">
        <label for="eventName" class="form-label" >Event Name:</label>
        <input type="text" class="form-control" id="eventName" name="eventName" placeholder="Enter event name" required >
      </div>
      <div class="form-group">
        <label for="venue" class="form-label">Venue:</label>
        <input type="text" class="form-control" id="venue" name="venue"  placeholder="Enter venue" required>
      </div>
      <div class="form-group">
        <label for="organizer" class="form-label">Organizer:</label>
        <input type="text" class="form-control" id="organizer" name="organizer"  placeholder="Enter organizer" required>
      </div>
      <div class="form-group">
        <label for="description" class="form-label">Description:</label>
        <textarea class="form-control" id="description" name="description"  rows="4" placeholder="Enter event description" ></textarea>
      </div>
      <div class="form-group">
        <label for="eventDate" class="form-label">Event Date:</label>
        <input type="date" class="form-control" id="eventDate" name="date"  required>
      </div>
      <button type="submit" class="btn btn-primary btn-Danger">Submit</button>
      <button type="reset" class="btn btn-secondary btn-block mt-3">Reset</button>
    </form>
  </div>
</div>



	


 <script src = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>