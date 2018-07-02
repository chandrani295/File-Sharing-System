<!DOCTYPE html>
<html>
<head>
    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




</head>
<body >
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
      <a class="navbar-brand" href="shome.jsp">Home</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="update.jsp">My Profile</a></li>
        <li><a href="showfile.jsp">My Files</a></li>
         <li><a href="index1.jsp">Upload</a></li>
          <li><a href="searchFile.jsp">Search Files </a></li>
           <li><a href="del_file.jsp">Delete Files</a></li>
            
                </ul>
        </li>
      </ul>
    
      <ul class="nav navbar-nav navbar-right">
        <li><a href="javascript:AlertIt();">Logout</a></li>
      
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
   </div>
    </div>
</body>
<script type="text/javascript">
function AlertIt() {
    
alert ("You have successfully logged out.");

window.location="index_1.jsp";

}
</script>
</html>
