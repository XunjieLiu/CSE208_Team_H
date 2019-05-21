<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap_flatly.css">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="photos/hicon.png">
    <link rel="stylesheet" href="https://cdn.bootcss.com/animate.css/3.7.0/animate.css">
    <script src="lib/jquery-3.3.1.js"></script>
    <script src="lib/dashboardjquery.js"></script>
    <script src="lib/rotate.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="lib/search.js"></script>
    <title>Heuristic | Dashboard</title>
</head>
<body>

<% 
      if(session.getAttribute("student") == null){
    	  response.sendRedirect("/online_learning_platform/HTML/login.html");
      }
      
    %>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target="#responsive-navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="dashboard.jsp" class="href navbar-brand"><strong>Heuristic</strong></a>
                </div>

                <div class="collapse navbar-collapse" id="responsive-navbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="dashboard.jsp">Dashboard</a></li>
                        <li class="dropdown">
                            <a href="file_download.jsp" class="dropdown-toggle" data-toggle="dropdown"
                               id="file">File<strong
                                    class="caret"></strong></a>
                            <ul class="dropdown-menu" id="menu">
                                <li>
                                    <a href="file_upload.html">Upload</a>
                                </li>
                                <li>
                                    <a href="file_download.html">Download</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="calendar.html">Calendar</a></li>
                    </ul>
                    <!--                    Navigation-->
                    <form action="" class="navbar-form navbar-left">
                        <input type="text" placeholder="Search" class="form-control" id="key">
                        <button type="submit" id="open">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>
                    </form>

                    <div class="profile navbar-right">
                        <ul class="nav navbar-nav">
                            <li><a href="login.html">Log out</a></li>
                            <li>
                                <button class="btn btn-primary btn-xs navbar-btn navbar-right"><a href="../ShowMyInfoServlet">Profile</a>
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--This is the main contents in dashboard-->
    <div class="row clearfix" style="margin-top: 15%">
        <!--Section 2 - Calender-->
        <div class="col-md-4 column" id="calendaricon">
            <a href="calendar.html">
                <img src="photos/dashboard/calendar.jpg" class="img-circle">
                <h3 class="text-center">
                    Calendar
                </h3>
            </a>
        </div>
        <!--Section 1 - File-->
        <div class="col-md-4 column" id="fileicon">
            <a href="file_download.html">
                <img src="photos/dashboard/file.jpg" class="img-circle">
                <h3 class="text-center">
                    Academic Files
                </h3>
            </a>
        </div>
        <!--Section 3 - Profile-->
        <div class="col-md-4 column" id="profileicon">
            <a href="profile.html">
                <img src="photos/dashboard/profile.jpg" class="img-circle">
                <h3 class="text-center">
                    Profile Management
                </h3>
            </a>
        </div>
    </div>
</div>
</body>
</html>