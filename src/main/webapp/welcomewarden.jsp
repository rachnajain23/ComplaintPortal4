




<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="UTF-8"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->

<%-- <% --%>

<!-- // 	 response.setHeader("Cache-Control" , "no-cache , no-store , must-revalidae");    -->

<!-- //     if(session.getAttribute("username") == null) -->
<!-- // 	 response.sendRedirect("/wardenlogin"); -->

<%-- %> --%>
<!-- <a href = "/wardenlogout">Logout</a> -->

<!-- <br> -->
<!-- Welcome Warden -->

<!-- <br> -->
<!-- <a href = "/bhaskaracomplist">Bhaskar Complaint List</a> -->
<!-- <br> -->
<!-- <a href = "/lilavaticomplist">Lilavati Complaint List</a> -->


<!-- </body> -->
<!-- </html> -->






<!DOCTYPE>
<html>
	<head>
	  <title>Welcome-Wardens</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	</head>
	<body>

		<div class="container">
			<div class="col-sm-3 col-md-3"></div>
			<div class="col-sm-3 col-md-6">
				<h1 style="font-size: 48px; margin-top:20% ">Welcome Wardens</h1>
		  		<p>Please click on respective hostel to View Complaints</p>
			</div>
		  <div class="col-sm-3 col-md-3"><a href = "/wardenlogout"><button type="button" style="margin-left: 99%;margin-top: 5%;" class="btn btn-primary">Logout</button></a></div>
		</div>
		<div class="container-fluid" style="margin-top: 2%;">
			<div class="col-md-2"></div>
			<div class="col-sm-3 col-md-4"><img src="http://photogallery.iiitb.ac.in/uploads/photo_record/photo/381/BoysHostelBuliding.jpg" style="height:500px;width: 500px" ><a href = "/bhaskaracomplist"><button type="button" style="margin-left: 36%; margin-top: -65%" class="btn btn-warning btn-lg">Bhaskara</button></a></div>

			 <div class="col-sm-3 col-md-4"><img src="http://photogallery.iiitb.ac.in/uploads/photo_record/photo/388/PhotofromKTejas_4_.jpg" style="height:500px;width: 500px" ><a href = "/lilavaticomplist"><button type="button" style="margin-left: 54%; margin-top: -65%" class="btn btn-warning btn-lg">Lilavati</button></a></div>
			<div class="col-md-2"></div>
		</div>
	</body>
</html>
