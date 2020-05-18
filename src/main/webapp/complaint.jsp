<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Complaint</title>

<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="http://twitter.github.io/typeahead.js/releases/latest/typeahead.bundle.js" charset="utf-8"></script>
<script src="js/suggest.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">



    <style>
    @import url('https://fonts.googleapis.com/css2?family=Bitter:ital@1&family=Oswald:wght@500&family=Roboto:ital@1&family=Work+Sans:ital@1&display=swap');

  @import url('https://fonts.googleapis.com/css2?family=Lato&family=Open+Sans:wght@300&display=swap');
  #comptitle{
    width: 450px;
  }

  .tt-hint {
      color: #999;
  }

  .tt-menu { /* UPDATE: newer versions use tt-menu instead of tt-dropdown-menu */
      width: 450px;

      padding: 8px 0;
      background-color: #fff;

  }

  .tt-suggestion {
      width : auto;
      padding: 3px 20px;
      font-size: 18px;
      border: 1px solid #ccc;
      border: 1px solid rgba(0, 0, 0, 0.2);
      border-radius: 3px;
      box-shadow: 0 5px 10px rgba(0,0,0,.2);
      font-family: 'Oswald', sans-serif;
  font-family: 'Work Sans', sans-serif;
  font-family: 'Bitter', serif;
  font-family: 'Roboto', sans-serif;
  font-weight: bold;
  }
  .tt-suggestion span{
    font-size:15px;
    font-style: normal;
    font-weight: normal;
    font-family: 'Lato', sans-serif;
  font-family: 'Open Sans', sans-serif;
  }

  .tt-suggestion.tt-cursor { /* UPDATE: newer versions use .tt-suggestion.tt-cursor */
      color: #fff;
      background-color: #0097cf;

  }


  </style>


</head>
<body>
<%

 	 response.setHeader("Cache-Control" , "no-cache , no-store , must-revalidate");

      if(session.getAttribute("username") == null){
     	 response.sendRedirect("/studentlogin");
      }
%>

<div class="container" align="right">
  <a  href="/studentlogout" class="btn btn-info" role="button">Log Out</a>
</div>
<h1>Hello <%= (String)session.getAttribute("name") %> </h1>

<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3">
        <div class="well well-sm">
 <form class="form-horizontal" action="/success" method = "post">
  <fieldset>
            <legend class="text-center">Add Complaint</legend>
   		<div class="form-group col-sm-12">
		    <label for="ctype" class="control-label">Complaint Type:</label>
		    <select class="form-control " id="ctype" name = "ctype">
		        <option value="SAC">Electricity</option>
				<option value="Food Commitee">Food/Canteen</option>
				<option value="SAC">Cleaning</option>
				<option value="Sports Committee">Sports</option>
				<option value="Hostel">Hostel</option>
        <option value="Internet Commitee">Internet</option>
		    </select>
		  </div>

      <div class="form-group col-sm-12">
		    <label for="comptitle" class="control-label">Complaint Title</label><br>
        <input type="text" class="form-control" id="comptitle" name="comptitle" placeholder="Complaint title" aria-label="complaint-title" aria-describedby="basic-addon2">
      </div>



		  <div class="form-group col-sm-12">
		    <label for="compbody" class="control-label">Describe your problem</label>
		    <textarea class="form-control " id="compbody" rows="4" name = "compbody"></textarea>
		  </div>
<!--      <ul id="searchResult"></ul>
    <div class="clear"></div> <div id="userDetail"></div>
-->

            <!-- Form actions -->
            <div class="form-group">
              <div class="col-md-12 text-center">
                <button type="submit" class="btn btn-primary btn-lg">Submit</button>
              </div>
            </div>
          </fieldset>

  </form>
  </div>
  </div>
  </div>
  </div>


</body>
</html>
