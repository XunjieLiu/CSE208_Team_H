<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

         Please input your name! we will give your questions !
         
		<form action="../ShowQuestionsServlet" method="post">
		User name： <input type="text" name="name"><br/>		
		<input type="submit" value="This is my name." >
		    
		
		<a href="../Login/login.jsp">Back to Login</a><br/>
		
		</form>
		
	

</body>
</html>