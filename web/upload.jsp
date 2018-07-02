<%@ page import="java.sql.*" %>
 <%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>  

<!DOCTYPE html>
<html lang = "en">
<body>


<%  
MultipartRequest m = new MultipartRequest(request,"C:\\Users\\hp\\Desktop\\summer_training\\demo\\build\\web\\usrupload");  
  
  
 Enumeration files = m.getFileNames(); 
 String name1 = (String)files.nextElement();
 String tempname = m.getFilesystemName(name1);
 

	
	
	String un;
                   un=(String)session.getAttribute("UserName");
                   
       
       
       try
       {
                Class.forName("com.mysql.jdbc.Driver");	
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
		Statement st=con.createStatement();
                String sql;
               
              if(m.getParameter("c")!=null)
                { sql="insert into files(uname,file,permission) values('"+un+"','"+tempname+"',1)";
                }
              else {
                  sql="insert into files(uname,file,permission) values('"+un+"','"+tempname+"',0)";
                }
		int res=st.executeUpdate(sql);
                
                response.sendRedirect("index1.jsp");
                
        }
       catch(Exception e)
       {    out.println(e.toString());
       }
                

%>
</body>

</html>