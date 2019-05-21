<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.List"%>
<%@page import="org.user.entity.Student"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table align="center" width="450" border="1" height="180"
    bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1"> 
    <tr bgcolor="white"> 
      <td align="center" colspan="7"> 
        <h2>Students</h2> 
      </td> 
    </tr> 
    <tr align="center" bgcolor="#e1ffc1"> 
      <td><b>name</b></td> 
      <td><b>password</b></td> 
    </tr> 
    <% 
      // 获取图书信息集合 
      List<Student> student = (List<Student>) request.getAttribute("student"); 
      // 判断集合是否有效 
      if (student == null || student.size() < 1) { 
        out.print("没有数据！"); 
      } else { 
        // 遍历图书集合中的数据 
        for (Student s : student) { 
    %> 
    <tr align="center" bgcolor="white"> 
      <td><%=s.getSname()%></td> 
      <td><%=s.getSpwd()%></td> 
    </tr> 
    <% 
      } 
      } 
    %> 
  </table>
</body>
</html>