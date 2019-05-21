<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../lib/bootstrap/css/bootstrap_flatly.css">
    <link rel="stylesheet" href="../style.css">
    <link rel="icon" href="../photos/hicon.png">
    <script src="../lib/jquery-3.3.1.js"></script>
    <script src="../lib/bootstrap/js/bootstrap.min.js"></script>
    <title>Architecture</title>
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
                    <a href="../dashboard.html" class="href navbar-brand"><strong>Heuristic</strong></a>
                </div>

                <div class="collapse navbar-collapse" id="responsive-navbar">
                    <ul class="nav navbar-nav">
                        <li><a href="../dashboard.html">Dashboard</a></li>
                        <li class="dropdown">
                            <a href="../file_index.html" class="dropdown-toggle" data-toggle="dropdown">File<strong
                                    class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="../file_upload.html">Upload</a>
                                </li>
                                <li>
                                    <a href="../file_download.html">Download</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="../calendar.html">Calendar</a></li>
                    </ul>
                    <!--                    search-->
                    <form action="" class="navbar-form navbar-left">
                        <input type="text" placeholder="Search" class="form-control">
                        <button type="submit">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>
                    </form>
                    <div class="profile navbar-right">
                        <ul class="nav navbar-nav">
                            <li><a href="">Log out</a></li>
                            <li>
                                <button class="btn btn-primary btn-xs navbar-btn navbar-right"><a
                                        href="../profile.html">Profile</a>
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column" style="margin-top: 5%">
            <h3>
                Architecture
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="../dashboard.html">Dashboard</a>
                </li>
                <li>
                    <a href="../file_download.html">Download</a>
                </li>
                <li class="active">
                    Architecture
                </li>
            </ul>
            <p>
					<%
						List<File> list = (List<File>) session.getAttribute("file_list");
						if (list == null) {
							System.out.println("Session is null");
						} else {
							for (File f1 : list) {
								String abs = f1.getAbsolutePath();
								System.out.println("Absolute path" + f1.getAbsolutePath());
								String name = f1.getName();
								String href = "../down_file/arc/" + name;
								String img = "../photos/file/";

								String[] temp = name.split("\\.");
								String postfix = temp[1];
								if(postfix.equals("pptx")){
									postfix = "ppt";
								}
								name = temp[0];
								img = img + postfix + ".png";
					%>
					<img src=<%=img%>><a href=<%=href%>>&nbsp;<%=name%></a> <br> <br>
					<%
						}
						}
					%>
            </p>
        </div>
    </div>

</div>

</body>
</html>