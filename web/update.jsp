<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="newcss1.css" type="text/css"/>

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
	<jsp:include page="studentmenu.jsp" />
   
     <div class="col-md-12 " style="font-family:impact;color:black;font-size:35px;text-align:center">
	
	My Profile
        <hr/>
</div>
     
</div>
<div class="col-md-3 ">
</div>
<div class="col-md-6 ">
<%
	try{
         
         if(session.getAttribute("UserName")!=null)
         {
             String un=(String)session.getAttribute("UserName");
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
		Statement st=con.createStatement();
		String sql="select *  from user2 where uname='"+un+"'";
		ResultSet rs=st.executeQuery(sql);
		out.println("<table class='table table-bordered'style=\" border-style:solid;border-color:black; border-width: 2px;\">");	
		while(rs.next())
		{
			String gid=rs.getString(1);
                        out.println(" <br/><br/><br/><br/><br/><br/><br/><br/>");
			out.println("<tr ><td  style=\"font-weight:bold;size=\"35px\";\" >User Id</td><td  style=\"font-weight:bold;\">"+rs.getString(1)+"</td></tr>");
			out.println("<tr class =success><td  style=\"font-weight:bold;\">Username</td><td  style=\"font-weight:bold;\">"+rs.getString(2)+"</td></tr>");
			out.println("<tr><td style=\"font-weight:bold;\">Name</td><td  style=\"font-weight:bold;\">"+rs.getString(3)+"</td></tr>");
			out.println("<tr class =success><td style=\"font-weight:bold;\">Email</td><td  style=\"font-weight:bold;\">"+rs.getString(4)+"</td></tr>");
			out.println("<tr><td style=\"font-weight:bold;\">Password</td><td  style=\"font-weight:bold;\">"+rs.getString(5)+"</td></tr>");
                        out.println("<tr class =success><td style=\"font-weight:bold;\">Want to EDIT??</td>" );
			%>
			<td>
			<a href="record_update_query1.jsp?id=<%=gid %>" ><span class="glyphicon glyphicon-pencil"></span>
</a>
			</td>
			<%
			out.println("</tr>");		
			}
		out.println("</table>");
	}
}catch(Exception e)
	{
		out.println(e.toString());
	}

%>
</div>
<div class="col-md-3 ">

</div>
</div>
</div>
</body>
</html>
