<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="org.user.entity.Student"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap_flatly.css">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="photos/hicon.png">
    <script src="lib/jquery-3.3.1.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="lib/search.js"></script>
    <title>Heuristic | Profile</title>
</head>
<body>

<%
	String year = session.getAttribute("sidentiy").toString();
	if(year.equals("0")){
		year = "Freshman";
	}else if(year.equals("1")){
		year = "Sophomoreer";
	}else if(year.equals("2")){
		year = "junior";
	}else if(year.equals("3")){
		year = "senior";
	}else{
		year = "Other";
	}
	
	String identity = "Student";
	
%>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="navbar navbar-default navbar-fixed-top" role="navigation" id="temp_nav">
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
                        <li><a href="dashboard.jsp">Dashboard</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" id="file">File<strong
                                    class="caret"></strong></a>
                            <ul class="dropdown-menu">
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
                    <form action="" class="navbar-form navbar-left">
                        <input type="text" placeholder="Search" class="form-control" id="key">
                        <button type="submit" id="open">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>
                    </form>
                    <div class="profile navbar-right">
                        <ul class="nav navbar-nav">
                            <li><a href="">Log out</a></li>
                            <li>
                                <button class="btn btn-primary btn-xs navbar-btn navbar-right"><a href="profile.html">Profile</a>
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <p style="margin-top: 10%"></p>

    <div class="row">
        <div class="panel panel-default">
            <div class="panel-heading"><h4>User Profile</h4></div>
            <div class="panel-body">
                <!--Picture-->
                <div class="col-md-4 col-xs-12 col-sm-6 col-lg-4">
                    <img alt="User Pic"
                         src="photos/dashboard/profile.jpg"
                         id="profile-image1" class="img-circle img-responsive">
                </div>
                <div class="col-md-8 col-xs-12 col-sm-6 col-lg-8">
                    <div class="container">
                        <h2>Welcome, <%=session.getAttribute("sname")%></h2>
                    </div>
                    <hr>
                    <ul class="container details">
                        <li><p><span class="glyphicon glyphicon-asterisk one" style="width:50px;"></span><%=year%></p></li>
                        <li><p><span class="glyphicon glyphicon-envelope one" style="width:50px;"></span><%=session.getAttribute("semail")%>
                        </p></li>
                        <li><p><span class="glyphicon glyphicon-user one" style="width:50px;"></span><%=identity%></p></li>
                        <li><p><span class="glyphicon glyphicon-tasks one" style="width:50px;"></span><%=session.getAttribute("smajor")%></p></li>
                        <li><p><span class="glyphicon glyphicon-education one" style="width:50px;"></span><%=session.getAttribute("suniv")%></p></li>
                    </ul>
                    <hr>
                    <div class="col-sm-5 col-xs-6 tital "><a href="pro_editor.jsp">Edit your information</a></div>
                </div>
            </div>
        </div>

    </div>

</div>


</body>
</html>