<%-- 
    Document   : stud_del
    Created on : 29 Jun, 2017, 9:30:22 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
       <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
   
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background-image: url(b.jpg)">
 
<div class="container">
<div class="row">
    <br/>
  <div class="col-md-12 "id="main"style="color:white;font-size:15px">
	<jsp:include page="adminmenu.jsp" />
</div>

<div class="col-md-3 ">

</div>
<div class="col-md-6 " style="font-weight:bold;color:black;font-size:15px;">
<form role="form">
<table class="table" style="font-family:impact;color:black;font-size:25px;">
    <tr height="60">
        
    </tr>
<tr class="bg-success">
	<td colspan="2">Delete User Record</td>
</tr>
<tr>
	<td>ID </td>
	<td><input type="text" name="t1" class="form-control" required /></td>
</tr>
<tr>
	<td></td>
	<td><input type="submit" value="Delete" class="btn btn-danger" name="btn_del" />
<td>
</tr>
</table>
<%
if(request.getParameter("btn_del")!=null)
{
	String id;
	id=request.getParameter("t1");
	try{
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
		Statement st=con.createStatement();
		String sql="delete from user2 where id='"+id+"'";
		int res=st.executeUpdate(sql);
		if(res!=0)
			out.println("<br>Record Deleted");
		else
			out.println("<br>Record Not Deleted");
	}catch(Exception e)
	{
		out.println(e.toString());
	}
}
%>
</form>

</div>
</div>
</div>
    </body>
</html>
