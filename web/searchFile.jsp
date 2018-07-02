
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<body style="background-image: url(b.jpg)">
 
<div class="container">
<div class="row">
    <br/>
  <div class="col-md-12 "id="main"style="color:white;font-size:15px">
	<jsp:include page="studentmenu.jsp" />
</div>

<div class="col-md-3 ">

</div>
<div class="col-md-6 " style="font-weight:bold;color:black;font-size:15px;">
<form role="form">
<table class="table" style="font-family:impact;color:black;font-size:25px;">
    <tr height="60">
        
    </tr>
<tr class="bg-success">
	<td colspan="2">Search File</td>
</tr>
<tr>
	<td>Enter Keyword </td>
	<td><input type="text" name="t1" class="form-control" required /></td>
</tr>
<tr>
	<td></td>
	<td><input type="submit" value="Search" class="btn btn-danger" name="btn_search" />
<td>
</tr>
</table>
<%
if(request.getParameter("btn_search")!=null)
{
	String fn;
	fn=request.getParameter("t1");
        String un;
		un=(String)session.getAttribute("UserName");
	try{
            int flag=0;
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
		Statement st=con.createStatement();
                String s='%'+fn+'%';
		String sql="select file from files where file like '"+s+"' and (permission=1 || uname= '"+un+"')";
		ResultSet rs=st.executeQuery(sql);
		//out.println("<table class='table table-bordered'>");	
                //int x;
                //x=0;
		while(rs.next())
		{
                    flag=1; 
			String no=rs.getString(1);
                        no="usrupload/"+no;
                        session.setAttribute("Searching",no);
                        
                       // if(x!=0)
                        //{
                        out.println(" <br/>");
                        out.println("<tr><td><img src='file.png' /></td>");
			out.println(" <a href='"+no+"'>"+no+"</a>");
                       // }
                       // x++;
                }
		if(flag==0)
                     out.println(" <br/>File not found");
	}
        catch(Exception e)
	{
            
		out.println("File not Found");
	}
}
%>
</form>
</div>

</div>
</div>

    </body>
</html>
