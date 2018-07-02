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
    <body>
      <a href="shome.jsp" ><font size="6px" style="font-family:impact" >Home </font> </a>
        <%
        
           String un,fn;
                   un=(String)session.getAttribute("UserName");
                   
       try
       {
                Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
		Statement st=con.createStatement();
                String sql="select file  from files where uname like '"+un+"'";
                //String sql="select file from files where uname='"+un+"'";
                ResultSet rs=st.executeQuery(sql);
		out.println("<table class='table table-bordered'>");	
                int x;
                out.println("<br>");
		while(rs.next())
		{
			String no=rs.getString(1);
                        no="usrupload/"+no;
                        session.setAttribute("Down",no);
                        out.println("<img src='file.png' />");
                            out.println("");
			out.println(" <a href='"+no+"'>"+no+"</a><br>");
                        
                       
                }
			
        }
       catch(Exception e)
       {   
           out.println(e.toString());
       }

     %>
    </body>
</html>
