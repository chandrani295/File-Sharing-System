<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">

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
        <li><a href="contact.jsp">Contact Us</a></li>
                </ul>
        </li>
      </ul>
    
      <ul class="nav navbar-nav navbar-right">
        <li><a href="cregister.jsp">New User?Sign Up For Free</a></li>
      
          </ul>
        </li>
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
    <br/>
    <br/>
    <br/>
  
    <div class="col-md-12 " style="font-family:impact;color:white;font-size:35px;text-align:center">
	
	Sync,store,share...
</div>
    
    <div class="col-md-4">
       
    
        
    </div>
<div class="col-md-4" >
<hr>
<form role="form"  >
  <div class="form-group" >
      <label for="t1" style="color: white">User Name</label>
    <input type="text" class="form-control" id="t1" name="t1" placeholder="Enter User Name" required>
  </div>
  <div class="form-group">
    <label for="t2" style="color: white">Password</label>
    <input type="password" class="form-control" id="t2" name="t2" placeholder="Password" required>
  </div>
  <input type="submit" class="btn btn-primary" value="Login" />
</form>
    
<hr>

</div>
<!---jdbc start
<%
if(request.getParameter("t1")!=null || request.getParameter("t2")!=null)
{
    
	String un=request.getParameter("t1");
	String pw=request.getParameter("t2");
	int flag=0;
	try{
		Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
		Statement st=con.createStatement();
                if(un.equals("admin") && pw.equals("admin@1234"))
			{    
				response.sendRedirect("ahome.jsp");
			}
               
                    
		ResultSet rs=st.executeQuery("select * from user2 where uname='"+un+"' and password='"+pw+"'");
		while(rs.next())
		{
			flag=1;	
                    session.setAttribute("UserName",un);
                    response.sendRedirect("shome.jsp"); 
                   
		}
                if(flag==0 )
                {
                  // session.setAttribute("errorMessage", "Invalid user or password");
                   //request.getRequestDispatcher("/index_1.jsp").forward(request,response);
                    
               
			out.println("<p style=\"color:white;\">Invalid User Name or Password</p>");
                      
		}	

	}
        catch(Exception e)
	{
		out.println(e.toString());
	}
}
%>

jdbc end -->



<div class="col-md-12">
       
    <marquee style="color:white"> Developed by :The CS Team</marquee>
        
    </div>
</div>
</body>
</html>
