<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-12 ">
<br>
<h1>Student Records</h1>
<br>
<table class="table table-bordered">
<tr>
	<td colspan="4" class="bg-success text-info">Students Record</td>
<tr>
<tr class="bg-danger">
	<th>ID</th><th>Name</th><th>Age</th><th>Address</th>
</tr>

<%
try{
	Class.forName("com.mysql.jdbc.Driver");	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mnnit","root","");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from record");
		System.out.println("ID\tName\t\tAge\tAddress");
		while(rs.next())
		{
			%>
			<tr>
			<td><%=rs.getInt(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getInt(3) %></td>
			<td><%=rs.getString(4) %></td>
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
