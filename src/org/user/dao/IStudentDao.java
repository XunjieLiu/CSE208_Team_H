package org.user.dao;

import org.user.entity.Student;

public interface IStudentDao {

	boolean queryByNameAndPassword(Student student);
}