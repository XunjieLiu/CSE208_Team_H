<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="lib/bootstrap/css/bootstrap_flatly.css">
<link rel="icon" href="photos/hicon.png">
<link rel="stylesheet" href="style.css">
<script src="lib/jquery-3.3.1.js"></script>
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<script src="lib/search.js"></script>
<style type="text/css">
        .img-responsive {
            width: 200px;
            height: 200px;
        }

        .img-responsive:hover {
            transform: scale(0.95);

        }
    </style>
<title>Heuristic | Download</title>
</head>
<body>

<div class="container">
    <!--    Navigation-->
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
                        <li class="dropdown active">
                            <a href="file_download.jsp" class="dropdown-toggle" data-toggle="dropdown">File<strong
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
                            <li><a href="login.html">Log out</a></li>
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
    <div class="container" style="margin-top: 20%">
    
    <%
      String test  = "Hellorld";
    %>
    
        <div class="row clearfix">
            <div class="col-md-4 column">
                <ul id="doc1" class="list-unstyled">
                    <li><button type="button" onclick="alert('<%=test%>')">Architecture</button></li>
                    <br>
                    <li><a href="down_pages/busi.html">Business</a></li>
                </ul>
            </div>
            <div class="col-md-4 column">
                <ul id="doc2" class="list-unstyled">
                    <li><a href="down_pages/eng.html">Engineering</a></li>
                    <br>
                    <li><a href="down_pages/sci.html">Science</a></li>
                </ul>
            </div>
            <div class="col-md-4 column">
                <ul  id="doc3" class="list-unstyled">
                    <li><a href="down_pages/lit.html">Literature</a></li>
                    <br>
                    <li><a href="down_pages/oth.html">Other</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

</body>
</html>