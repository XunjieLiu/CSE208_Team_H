<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
</head>
<body>
	<form action="AccessServlet" method="post">
	
		User name： <input type="text" name="name"><br/>		    
		Password: <input type="password" name="pwd"><br/>
		Identity: <input type="checkbox" name ="identity" value= "0" />学生
			 	<input type="checkbox" name ="identity"  value= "1" />老师<br/>

		<input type="submit" value="Login" >
		
		<a href="../register.jsp">Register</a><br/>
		<a href="forgot.jsp">Forget password</a><br/>	
	</form>
	
	
	
	

</body>
</html>