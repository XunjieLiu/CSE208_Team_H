<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("uname");
		String pwd = request.getParameter("upwd");
		String email = request.getParameter("uemail");
		String identity = request.getParameter("uidentity") == "1" ? "Teacher":"Student";
		String grade = request.getParameter("ugrade");
		String major = request.getParameter("umajor");
		String securityQ1 = request.getParameter("uquestion1");
		String securityQ2 = request.getParameter("uquestion2");
		String securityQ3 = request.getParameter("uquestion3");
		String answer1 = request.getParameter("uanswer1");
		String answer2 = request.getParameter("uanswer2");
		String answer3 = request.getParameter("uanswer3");
		
		out.println("Name: " + name + " Password: " + pwd);
		out.println("Email: " + email + " Identity: " + identity);
		out.println("Grade: " + grade + " Major: " + major);
		out.println("Security question 1: " + securityQ1 + " Answer: " + answer1);
		out.println("Security question 2: " + securityQ2 + " Answer: " + answer2);
		out.println("Security question 3: " + securityQ3 + " Answer: " + answer3);
		
		session.setAttribute("uname", name);
		session.setAttribute("upwd", pwd);
		session.setAttribute("uemail", email);
		session.setAttribute("uidentity", identity);
		session.setAttribute("ugrade", grade);
		session.setAttribute("umajor", major);
		session.setAttribute("uquestion1", securityQ1);
		session.setAttribute("uquestion2", securityQ2);
		session.setAttribute("uquestion3", securityQ3);
		session.setAttribute("uanswer1", answer1);
		session.setAttribute("uanswer2", answer1);
		session.setAttribute("uanswer3", answer1);
		
		System.out.println("Session ID" + session.getId());
		
		session.setMaxInactiveInterval(10); //seconds
		
		request.getRequestDispatcher("welcome.jsp").forward(request, response);

		
	%>

</body>
</html>