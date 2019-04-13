<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="RegisterServlet">
		User name: <input type="text" name="uname" />		Email address: <input type="text" name="uemail" /><br />
		Password: <input type="password" name="upwd" />		Confirm password: <input type="password" /><br />

		Identity: <select name="uidentity">
		
				<option value ="0">Student</option>

				<option value ="1">Teacher</option>

				</select> <br/>
				
		Grade: <select name="ugrade">

				<option value ="1">Year 1</option>

				<option value ="2">Year 2</option>
				
				<option value ="3">Year 3</option>

				<option value ="4">Year 4</option>

				</select> 
				
		Major: <input type="text" name="umajor" /><br/>
		
		Security question 1: <input type="text" name="uquestion1" />		Answer: <input type="text" name="uanswer1" /><br />
		Security question 2: <input type="text" name="uquestion2" />		Answer: <input type="text" name="uanswer2" /><br />
		Security question 3: <input type="text" name="uquestion3" />		Answer: <input type="text" name="uanswer3" /><br />
		
		
		<input type="submit" value="Create my account">
	</form>

</body>
</html>