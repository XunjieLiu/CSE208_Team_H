package org.user.service;

import org.user.entity.Student;

public interface IStudentService {

	public boolean queryByNameAndPassword(Student student);

}