package org.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.user.entity.Student;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static int id = 0;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("I am register servlet");
		
		HttpSession session = request.getSession(true);

		Map<String, String> securityQ = new HashMap<String, String>();
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("uname");
		String pwd = request.getParameter("upwd");
		String email = request.getParameter("uemail");
		String identity = "0";
		String grade = request.getParameter("ugrade");
		String major = request.getParameter("umajor");
		String securityQ1 = request.getParameter("uquestion1");
		String securityQ2 = request.getParameter("uquestion2");
		String securityQ3 = request.getParameter("uquestion3");
		String answer1 = request.getParameter("uanswer1");
		String answer2 = request.getParameter("uanswer2");
		String answer3 = request.getParameter("uanswer3");
		securityQ.put(securityQ1, answer1);
		securityQ.put(securityQ2, answer2);
		securityQ.put(securityQ3, answer3);
		String university = "XJTLU";

		if (identity.equals("0")) {
			System.out.println("Identity == 0");
			Student student = new Student(id++, name, pwd, Integer.parseInt(identity), university,
					Integer.parseInt(grade), major, email, securityQ);

			session.setAttribute("user", student);
			session.setAttribute("sname", student.getSname());
			
			request.getRequestDispatcher("TestSession").forward(request, response);
		} else {
			System.out.println("Identity != 0");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
