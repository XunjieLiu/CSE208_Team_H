package org.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.user.entity.Student;
import org.user.entity.Teacher;
import org.user.service.IStudentService;
import org.user.service.ITeacherService;
import org.user.service.impl.StudentServiceImpl;
import org.user.service.impl.TeacherServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/AccessServlet")
public class AccessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		boolean result = false;

		request.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String identity = request.getParameter("identity"); // identity前端传来默认是0，默认是学生

		if (identity.equals("1")) {
			// This is a teacher.
			request.setAttribute("identity", "1");
			Student student = new Student(name, pwd);
			IStudentService sservice = new StudentServiceImpl();
			result = sservice.queryByNameAndPassword(student);
		} else {
			// This is a student.
			Teacher teacher = new Teacher(name, pwd);
			ITeacherService tservice = new TeacherServiceImpl();
			result = tservice.queryByNameAndPassword(teacher);

		}

		if (result) {
			request.getRequestDispatcher("homepage.jsp").forward(request, response);
			request.setAttribute("status", true);
		} else {
			response.sendRedirect("loginFail.jsp");
		}

		// request.getRequestDispatcher("studentInfo.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
