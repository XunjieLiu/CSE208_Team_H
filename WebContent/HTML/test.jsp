<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome to Heuristic</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap_flatly.css">
    <link rel="stylesheet" href="validator/dist/css/bootstrapValidator.css"/>
    <link rel="icon" href="photos/hicon.png">

    <script type="text/javascript" src="lib/jquery-3.3.1.js"></script>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="validator/dist/js/bootstrapValidator.js"></script>
    <script src="lib/background.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
    <div class="col-md-6 col-md-offset-3  text-center" style="margin-top: 50px;background-color: rgba(220,220,220,0.4)">

        <div class="col-md-12">

            <h1 style="font-size: 45px;padding:25px"><strong>Heuristic</strong></h1>
            <div class="description">
                <p>
                    <i>Designed for academic learning and time efficiency</i>
                </p>

					<%!/*Java 代码：声明全局变量和方法*/
	public String name;

	public void init() {
		name = "Xunjie";
	}%>

					<%
						String myName = "Xunjie Liu";
						out.print("My name is " + myName);
					%>
				</div>
			
        </div>
    </div>
</div>

<div class="backstretch" id="box1"
     style="left: 0px; top: 0px; overflow: hidden; margin: 0px; padding: 0px; height: 1080px; width: 1920px; z-index: -1; position: fixed;background-image: url(photos/backimg/1.jpg)">
</div>

<div class="backstretch" id="box2"
     style="left: 0px; top: 0px; overflow: hidden; margin: 0px; padding: 0px; height: 1080px; width: 1920px; z-index: -2; position: fixed;">
</div>

</body>
</html>