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
    <script src="lib/jquery-3.3.1.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="lib/search.js"></script>
    <title>Edit your profile</title>
</head>
<body>
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

    <div class="row clearfix">

        <h1>Edit Profile</h1>
        <hr>
        <div class="row">
            <!-- picture column -->
            <div class="col-md-3">
                <div class="text-center">
                    <img src="photos/dashboard/profile.jpg" class="avatar img-circle">
                </div>
            </div>

            <div class="col-md-9 personal-info">

                <h3>Personal info</h3>

                <form class="form-horizontal" role="form" action="../ChangeMyInfo">
                    <!--Username-->
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Username:</label>
                        <div class="col-lg-8">
                            <input class="form-control" type="text" readonly disabled value="Jane">
                        </div>
                    </div>
                    <!--Email-->
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Email:</label>
                        <div class="col-lg-8">
                            <input class="form-control" type="text" readonly disabled value="janesemail@gmail.com">
                        </div>
                    </div>
                    <!--Identity-->
                    <div class="form-group">
                        <label class="col-md-3 control-label">Identity:</label>
                        <div class="col-md-8">
                            <input class="form-control" type="text" readonly disabled value="Student">
                        </div>
                    </div>
                    <!--Year-->
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Year:</label>
                        <div class="col-lg-8">
                            <div class="ui-select">
                                <select id="user_year" name="syear" class="form-control">
                                    <option value="1">Freshman</option>
                                    <option value="2">Sophomoreer</option>
                                    <option value="3">Junior</option>
                                    <option value="4">Senior</option>
                                    <option value="5">Other</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!--Major-->
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Major:</label>
                        <div class="col-lg-8">
                            <div class="ui-select">
                                <select id="user_major" name="smajor" class="form-control">
                                    <option value="Architecture & Design">Architecture & Design</option>
                                    <option value="Business, Art, Language & Literature">Business, Art, Language & Literature</option>
                                    <option value="Computer Science">Computer Science</option>
                                    <option value="Electronic Engineering">Electronic Engineering</option>
                                    <option value="Physics, Chemistry, Biology & Science">Physics, Chemistry, Biology & Science</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <!--University-->
                    <div class="form-group">
                        <label class="col-md-3 control-label">University:</label>
                        <div class="col-md-8">
                            <input class="form-control" type="text" name = "suniv" value="Liverpool University">
                        </div>
                    </div>

                    <!--Buttons-->
                    <div class="form-group">
                        <label class="col-md-3 control-label"></label>
                        <div class="col-md-8">
                            <input type="submit" class="btn btn-primary btn-info" value="Save Changes"
                                   data-toggle="modal" data-target="#save">
                                   
                                   
                          <!--   <form action="../ChangeMyInfo">
                            	<input type="submit" value="save changes">
                            </form> -->
                            
                            
                            <span></span>
                            <input id="cancel" type="reset" class="btn btn-default " value="Cancel">
                        </div>
                        <div class="modal fade" id="save" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                    </div>
                                    <div class="modal-body"
                                         style="text-align: center;font-family:sans-serif;font-size: large">
                                        Changes have been made successfully!
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <hr>
</div>
</body>
</html>