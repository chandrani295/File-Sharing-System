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
<script>  
function validateform(){  
var name=document.myform.t2.value;  
var password=document.myform.t4.value;  
  var x=document.myform.t3.value; 
  var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
if (name==null || name==""){  
  alert("Name can't be blank");  
  return false;  
}else if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }  
  else if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  alert("Please enter a valid e-mail address");  
  return false;  
} 
}
</script>  


</head>

  <body style="background-image: url('black.jpg')">
<div class="container">
<div class="row">

<nav  class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index_1.jsp">Home</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="abt.jsp">About <span class="sr-only">(current)</span></a></li>
       
                </ul>
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
       
    
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
     <div class="col-md-12 " style="font-family:impact;color:white;font-size:35px;text-align:center">
	
	Register Yourself!
</div>
    
<div class="container">
<div class="row">
   
<div class="col-md-3 ">

</div>
<div class="col-md-6 ">
<form role="form" name="myform" onsubmit="return validateform()">
    <table class="table" style="color: white">
<tr>
	<td>Username</td>
	<td><input type="text" name="t1" class="form-control" required/></td>
</tr>

<tr>
	<td>Name</td>
	<td><input type="text" name="t2" class="form-control"required /></td>
</tr>
<tr>
	<td>Email</td>
	<td><input type="text" name="t3" class="form-control"required /></td>
</tr>
<tr>
	<td>Enter Password</td>
	<td><input type="password" name="t4" class="form-control"required /></td>
</tr>


<tr>
	<td>Confirm Password</td>
	<td><input type="password" name="t5" class="form-control"required /></td>
</tr>
<tr>
	<td></td>
	<td><input type="submit" value="Register Me" class="btn btn-success" name="btn_reg" />
</tr>
</table>
    <div  style="font-weight:bold;color:white;font-size:15px;">
<%
if(request.getParameter("btn_reg")!=null)
{
	String uname,name,email,cpass,password;
        
	uname=request.getParameter("t1");
	name=request.getParameter("t2");
	email=request.getParameter("t3");
	password=request.getParameter("t4");
	cpass=request.getParameter("t5");
        
	try{
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
		Statement st=con.createStatement();
                
               if(password.equals(cpass))
               {
		String sql="insert into user2(uname,name,email,password) values('"+uname+"','"+name+"','"+email+"','"+password+"')";
                
		int res=st.executeUpdate(sql);
                
		if(res!=0){
			out.println("<br>Your account has been successfully created");
                        //response.sendRedirect("cregister.jsp");
                }
		else
			out.println("<br>Sorry..Create your account again");
               }
               else 
               {
                   out.println("Password mismatch");
                            response.sendRedirect("cregister.jsp");
               }
                
	}catch(Exception e)
	{
		out.println("Username already used");
	}
}
%>
</form>
</div>
<div class="col-md-3 ">

</div>
</div>
</div>
</body>
</html>
