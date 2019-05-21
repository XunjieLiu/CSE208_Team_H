<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



         Please answer below question!
         
        
         
         <table>
			<tr>
		<td><%=request.getAttribute("questions1")%></td>
			</tr>
		</table>
         
		<form action="CheckAnswerServlet" method="post">

		My answer is： <input type="text" name="userAnswers"><br/>		
		<input type="submit" value="This is my name." >
	
		<a href="../Login/login.jsp">Back to Login</a><br/>
		
		</form>
		
     
		







</body>
</html>