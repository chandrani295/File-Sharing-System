
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />



  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="newcss.css" type="text/css"/>

</head>
<body style="background-image: url(black.jpg)">
    
<div class="container">
      
<div class="col-md-12 "id="main"style="color:white;font-size:15px">
	<jsp:include page="studentmenu.jsp" />
</div>

    <div class="col-md-12 " style="font-family:impact;color:whitesmoke;font-size:35px;text-align:center">
<% if(session.getAttribute("UserName")!=null)
	{
            String un;
		un=(String)session.getAttribute("UserName");
		out.println("Welcome "+un );
	}
	else
		response.sendRedirect("index_1.jsp");	
%>
</div>
<div class="col-md-12 " style="color:whitesmoke;font-size:20px;text-align:center">
    Get Started with Sync,share,store..!
</div>

  <div class="col-md-12 " style="font-family:impact;color:white;font-size:35px;text-align:center">
  <div  id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="pic6.jpg" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    <div class="item">
      <img src="lock.png" alt="...">
      <div class="carousel-caption">
        ...
      </div>
    </div>
    ...
  </div>
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</div>

</body>
</html>
