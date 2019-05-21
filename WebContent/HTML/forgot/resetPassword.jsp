<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

You can input your new password here !

		<form action="ChangePasswordServlet" method="post">

		My new password is： <input type="text" name="newUserPassword"><br/>		
		<input type="submit" value="This is my new password." >
	
		<a href="../Login/login.jsp">Back to Login</a><br/>
		
		</form>

</body>
</html>