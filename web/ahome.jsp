<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
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
      <div class="col-md-12 "id="main"style="color:white;font-size:15px">
	<jsp:include page="adminmenu.jsp" />
</div>
<div class="col-md-12 " style="font-family:impact;color:black;font-size:35px;text-align:center">
	
	Welcome Admin
        <hr/>
</div>

<div class="col-md-4 ">
</div>
<div class="col-md-4" style="font-weight:bold;font-size:15px" >
        
        Registered Users:
        <%
            try{
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
		Statement st=con.createStatement();
               ResultSet rs=st.executeQuery("select count(*) from user2");
               while(rs.next()){
                out.println(""+rs.getInt(1));}
               con.close();
            }catch(Exception e){
                out.println(e);
            }
           
            %>
            <br/>
            <br/>
           
        Files Reported  :
        <%
      try{
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
		Statement st=con.createStatement();
               ResultSet rs=st.executeQuery("select count(*) from files");
               while(rs.next()){
                out.println(""+rs.getInt(1));}
               con.close();
            }catch(Exception e){
                out.println(e);
            }
           
        %>
</div>


</div>
</div>
</body>
</html>
