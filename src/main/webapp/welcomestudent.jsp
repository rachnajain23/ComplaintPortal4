<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<body>
<%

 	 response.setHeader("Cache-Control" , "no-cache , no-store , must-revalidate");

      if(session.getAttribute("username") == null){
     	 response.sendRedirect("/studentlogin");
      }
      
%>
<br>
<div class="container" align="right">
  <a  href="/change" class="btn btn-info" role="button">Change Password</a>
  <a  href="/studentlogout" class="btn btn-info" role="button">Log Out</a>

</div>
<h1>Hello <%= (String)session.getAttribute("name") %> </h1>

<div class="container" align="center">
  <a  href="/addComplaint" class="btn btn-info" role="button">Add Complaint</a>
</div>

<h3>Your Complaints</h3>
<c:if test = "${complaints.content.size() == 0}">
<h1 class="text-center">No complaints yet. </h1>
</c:if>
<c:if test = "${complaints.content.size() > 0}">
<table class="table table-striped table-hover">

    <thead class="thead-dark">
    <tr>
      <th scope="col" class="text-center">Complaint Type</th>
      <th scope="col" class="text-center">Date</th>
      <th scope="col" class="text-center">Your Complaint</th>
      <th scope="col" class="text-center">Status</th>
      <th scope="col" class="text-center">Message</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${complaints.content}" var="comp" varStatus="counter">
	  <c:if test="${comp.status == 'Pending'}">
	    <tr class="text-center" data-toggle="modal" data-target="#desc${counter.index}">
	      <td>${comp.ctype}</td>
		  <td>${comp.timestamp}</td>
	      <td data-toggle="modal" data-target="#exampleModalCenter">${comp.comptitle}</td>
	      <td class="text-center bg-secondary text-white">${comp.status}</td>
	       <td>${comp.message}</td>
		  </tr>
	   </c:if>

    <c:if test="${comp.status == 'Accepted'}">
   <!--  	 <tr class="table-info"> -->
		<tr class="text-center" data-toggle="modal" data-target="#desc${counter.index}">
	      <td>${comp.ctype}</td>
		  <td>${comp.timestamp}</td>
	      <td data-toggle="modal" data-target="#exampleModalCenter">${comp.comptitle}</td>
	      <td class="text-white bg-primary text-center">${comp.status}</td>
	       <td>${comp.message}</td>
		  </tr>
	   </c:if>

    <c:if test="${comp.status == 'Rejected'}">
	    <!-- <tr class="table-danger">  -->
	 	<tr class="text-center" data-toggle="modal" data-target="#desc${counter.index}">
	 	  <td>${comp.ctype}</td>
		  <td>${comp.timestamp}</td>
	      <td data-toggle="modal" data-target="#exampleModalCenter">${comp.comptitle}</td>
	      <td class="text-white bg-danger text-center">${comp.status}</td>
	       <td>${comp.message}</td>
		  </tr>
	   </c:if>
    <c:if test="${comp.status == 'Resolved'}">
<!--  	    <tr class="table-success"> -->
	    <tr class="text-center" data-toggle="modal" data-target="#desc${counter.index}">
	      <td>${comp.ctype}</td>
		  <td>${comp.timestamp}</td>
	      <td data-toggle="modal" data-target="#exampleModalCenter">${comp.comptitle}</td>
	      <td class="text-white bg-success text-center">${comp.status}</td>
	       <td>${comp.message}</td>
		  </tr>
	   </c:if>


   </c:forEach>
<c:forEach items="${complaints.content}" var="comp" varStatus="counter">
  <div class="modal fade" id="desc${counter.index}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">"${comp.comptitle}"</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        "${comp.compbody}"
      </div>
    </div>
  </div>
  </div>
</c:forEach>

      </tbody>

    </table>



<div class="d-flex">
<ul class="pagination list-inline mx-auto justify-content-center">
	<c:forEach begin="0" end="${complaints.totalPages-1}" var="pno">
	<li class="${currentpage==(pno+1)?'page-item active list-inline-item':'list-inline-item page-item'}">
	<a class="page-link" href="/pages/${pno}"> ${pno+1} </a>
	</li>
	</c:forEach>
 </ul>
 </div>
</c:if>




</body>
</html>
