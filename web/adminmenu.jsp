<!DOCTYPE html>
<html>
<head>

    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<a href="adminmenu.jsp"></a>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
function AlertIt() {
    
alert ("You have successfully logged out.");
window.location="index_1.jsp";
}
</script>
</head>

<body>

  <nav  class="navbar navbar-inverse"">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="ahome.jsp">Home</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class><a href="ashowall.jsp">Show Users <span class="sr-only">(current)</span></a></li>
        <li><a href="usr_del.jsp">Delete User</a></li>
         <li><a href="asearch.jsp">Search by ID</a></li>
         <li><a href="afile.jsp">Show Files</a></li>
            <li><a href="javascript:AlertIt();">Logout</a></li>
                </ul>
       
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    
</body>
</html>
