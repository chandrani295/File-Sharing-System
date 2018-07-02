<%@ page import="java.sql.*" %>
<%-- 
    Document   : showfile
    Created on : 2 Jul, 2017, 2:25:24 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="b.jpg">
        <div class="container">
<div class="row">
      <br/>
      <div class="col-md-12 "id="main"style="color:white;font-size:15px">
	<jsp:include page="studentmenu.jsp" />
</div>
<div class="col-md-12 " style="font-family:impact;color:black;font-size:35px;text-align:center">
	
	My Uploaded Files
        <hr/>
</div>

<div class="col-md-4 ">
</div>
<div class="col-md-4">
        <%
        
           String un,fn;
                   un=(String)session.getAttribute("UserName");
                   
       try
       {
                Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
		Statement st=con.createStatement();
                String sql="select Sno,file  from files where uname like '"+un+"'";
                //String sql="select file from files where uname='"+un+"'";
                ResultSet rs=st.executeQuery(sql);
		
                out.println("<table class='table table-bordered'>");
                
                out.println("<br>");
		while(rs.next())
		{
                   // String a=rs.getString(2);
			String no=rs.getString(2);
                        
                        no="usrupload/"+no;
                        session.setAttribute("Down",no);
                        out.println("<tr><td><img src='file.png' /></td>");
                            out.println("<td>ID=</td> <td  style=\"font-weight:bold;\">"+rs.getString(1)+"</td>");
                            out.println("  ");
			out.println("<td  style=\"font-weight:bold;\" > <a href='"+no+"'>"+no+"</a><br></td></tr>");
                        
                       
                       
                }
			
        }
       catch(Exception e)
       {   
           out.println(e.toString());
       }

     %>
     </div>
     </div>
     </div>
    </body>
</html>
