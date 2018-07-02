<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>

    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body background="b.jpg">
        <div class="container">
<div class="row">
      <br/>
      <div class="col-md-12 "id="main"style="color:black;font-size:15px">
	<jsp:include page="adminmenu.jsp" />
</div>
<div class="col-md-12 " style="color:black;">
<table class="table table-stripped" >
<tr>
	<td colspan="5" class="bg-success text-info" style="font-size:25px;font-family:impact;text-align:center">User Record</td>
<tr>
<tr class="bg-danger">
	<th>ID</th><th>UserName</th><th>Name</th><th>Email</th><th>Password</th>
</tr>
        
<%
try{
	Class.forName("com.mysql.jdbc.Driver");	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from user2");
		while(rs.next())
		{
			%>
			<tr>
			<td bgcolor="white" ><%=rs.getString(1) %></td>
			<td bgcolor="white" ><%=rs.getString(2) %></td>
			<td bgcolor="white" ><%=rs.getString(3) %></td>
			<td bgcolor="white" ><%=rs.getString(4) %></td>
			<td bgcolor="white" ><%=rs.getString(5) %></td>
			</tr>
			<%
		}
		}catch(Exception e)
		{
			out.println(e.toString());
		}
%>
</table>

</div>



</div>
</div>
</body>
</html>
