<%@ page import="java.sql.*" %>
<%-- 

    Document   : download
    Created on : 2 Jul, 2017, 7:42:19 AM
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
       
        <%
             String f;
                   f=(String)session.getAttribute("Down");
            //out.println("Enter the file name");
  String filename = "+f+";   
  String filepath = "uploadData/";   
  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
  
  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
            
  int i;   
  while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   
  }   
  fileInputStream.close();   
%>   
      
    </body>
</html>
