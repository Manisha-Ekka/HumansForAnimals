<%-- 
    Document   : adminnavbar
    Created on : Mar 30, 2023, 12:56:07 PM
    Author     : asus
--%>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
    <a class="navbar-brand" href="#">Hello Admin!</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
   

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="adminhome.jsp">
            <i class="fa fa-home" aria-hidden="true">
            </i>Home 
            <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="see_review.jsp">
            <i class="fa fa-star" aria-hidden="true"></i>
            See Reviews</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="view_user.jsp">
            <i class="fa fa-user-secret" aria-hidden="true"></i>
            View Users</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="member_application.jsp">
            <i class="fa fa-file-text" aria-hidden="true"></i>
            Membership Applications</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="see_report.jsp">
            <i class="fa fa-exclamation" aria-hidden="true"></i>
            Issued Reports</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="admin_event.jsp">
            <i class="fa fa-eye" aria-hidden="true"></i>
            View Events</a>
      </li>
      
    </ul>
      
      
      
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">  
      
      <!--<div class="dropdown">
  <button class="btn btn-dark dropdown-toggle my-2 my-sm-0 mr-3" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Login
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="userlogin.jsp">As User</a>
    <a class="dropdown-item" href="adminlogin.jsp">As Admin</a>
  </div>
</div>-->
      
      
      
      
      
    <!--  
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-sign-in" aria-hidden="true"></i>
          Login
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">
              <i class="fa fa-user-circle-o" aria-hidden="true"></i>
              As User</a>
          <a class="dropdown-item" href="#">
              <i class="fa fa-unlock-alt" aria-hidden="true"></i>
              As Admin</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>-->
      <li>
          <a href="index.jsp" class="btn btn-dark my-2 my-sm-0" type="submit">
            <i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a>
      </li>
      </ul>

     <!-- 
    <form class="form-inline my-2 my-lg-0">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Register</button>
    </form>
     -->
  </div>
</nav>

