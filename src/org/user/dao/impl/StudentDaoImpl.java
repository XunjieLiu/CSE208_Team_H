package org.user.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.user.dao.IStudentDao;
import org.user.entity.Student;
import org.user.util.UserUtil;

public class StudentDaoImpl implements IStudentDao {
	
	
//  1. qualify a person by name and password 
public boolean queryByNameAndPassword(Student student){
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;	
		try {
			Object[] obj={student.getSname(),student.getSname()};
			String  sql = "select* from login where sname = ? and spwd = ? ";
			rs = UserUtil.executeQuery(sql,obj);
			
			if(rs.next()) {return true;}
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}finally {	
			UserUtil.closeAll(rs, pstmt, UserUtil.connection);
		}
		
		return false;
		
		
	}



}
