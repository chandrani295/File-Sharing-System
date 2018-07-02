<%-- 
    Document   : index1
    Created on : 1 Jul, 2017, 10:52:03 AM
    Author     : hp
--%>
<%@ page import="java.sql.*" %>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Uploading files</title>
    </head>
    <body background="b.jpg">
        <div class="container">
<div class="row">
      <br/>
      <div class="col-md-12 "id="main"style="color:white;font-size:15px">
	<jsp:include page="studentmenu.jsp" />
</div>
<div class="col-md-12 " style="font-family:impact;color:black;font-size:35px;text-align:center">
	
	Uploading Files
        <hr/>
</div>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<div class="col-md-4 ">
</div>

<div class="col-md-4 ">
        <form name="uploadForm" action="upload.jsp" method="POST" enctype="multipart/form-data">
            <input type="file" name="file" value="" width="1000" style="font-weight:bold;font-size:15px" />
            <input type = "checkbox" name = "c"  value="0" unchecked/> <font style=" font-weight:bold;font-size:20px"> Want to Share Publicly?</font>
           
            <input type="submit" value="Upload" name="sub"  class="btn btn-success"/>
        </form>

</div>
        </div>
    </body>
</html>
