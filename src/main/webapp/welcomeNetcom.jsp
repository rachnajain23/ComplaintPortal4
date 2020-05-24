<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome-InternetCom</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>

<%

	 response.setHeader("Cache-Control" , "no-cache , no-store , must-revalidae");

     if(session.getAttribute("username") == null){
    	 response.sendRedirect("/fcomlogin");
     }
%>
<br>
<div class="container" align="right">
  <a  href="/netcomlogout" class="btn btn-info" role="button">Log Out</a>
</div>


<center><h2>Welcome Internet Commitee</h2></center>

<br><br>
  <c:if test = "${complaints.content.size() == 0}">
  <h1 class="text-center">No complaints yet. </h1>
  </c:if>
  <c:if test = "${complaints.content.size() > 0}">
<table class="table table-striped table-hover">

    <thead class="thead-dark text-center">
    <tr>
      <th  scope="col">Roll No</th>
      <th scope="col">Name</th>
      <th scope="col">Date</th>
      <th scope="col">Complaint</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody class="text-center">
  <c:forEach items="${complaints.content}" var="comp">
	  <c:if test="${comp.status == 'Pending'}">
	    <tr>
	      <td><a href = "/netcomplaint/${comp.id}">${comp.roll}</a></td>
	      <td>${comp.name}</td>
	      <td>${comp.timestamp}</td>
        <td>${comp.comptitle}</td>
	      <td class="text-center bg-secondary text-white">${comp.status}</td>
		  </tr>
	   </c:if>
	  <c:if test="${comp.status == 'Accepted'}">
	    <tr>
	      <td><a href = "/netcomplaint/${comp.id}">${comp.roll}</a></td>
	      <td>${comp.name}</td>
	      <td>${comp.timestamp}</td>
        <td style="max-with : 45%;">${comp.comptitle}</td>
	      <td class="text-center bg-primary text-white">${comp.status}</td>
		  </tr>
	   </c:if>
	  <c:if test="${comp.status == 'Rejected'}">
	    <tr>
	      <td><a href = "/netcomplaint/${comp.id}">${comp.roll}</a></td>
	      <td>${comp.name}</td>
	      <td>${comp.timestamp}</td>
        <td>${comp.comptitle}</td>
	      <td class="text-center bg-danger text-white">${comp.status}</td>
		  </tr>
	   </c:if>
	  <c:if test="${comp.status == 'Resolved'}">
	    <tr>
	      <td><a href = "/netcomplaint/${comp.id}">${comp.roll}</a></td>
	      <td>${comp.name}</td>
	      <td>${comp.timestamp}</td>
        <td>${comp.comptitle}</td>
	      <td class="text-center bg-success text-white">${comp.status}</td>
		  </tr>
	   </c:if>
   </c:forEach>

  </tbody>

</table>
<div class="d-flex">
<ul class="pagination list-inline mx-auto justify-content-center">
 <c:forEach begin="0" end="${complaints.totalPages-1}" var="pno">
 <li class="${currentpage==(pno+1)?'page-item active list-inline-item':'list-inline-item page-item'}">
 <a class="page-link" href="/netcom/${pno}"> ${pno+1} </a>
 </li>
 </c:forEach>
 </ul>
 </div>
</c:if>
</body>
</html>
