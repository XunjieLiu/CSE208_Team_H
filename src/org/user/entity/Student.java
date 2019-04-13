package org.user.entity;

import java.util.Map;

public class Student {
	private int sno;
	private String sname;
	private String spwd;
	private int sidentity;
	private String suniversity;
	private int sgrade;
	private String smajor;
	private String semail;
	private Map<String, String> questions;

	
	public Student(String sname, String spwd) {
		this.sname = sname;
		this.spwd = spwd;
	}
	
	public Student(int sno, String sname, String spwd) {
		this.sno = sno;
		this.sname = sname;
		this.spwd = spwd;
	}
	
	public Student(int sno, String sname, String spwd, int sidentity, String suniversity, int sgrade, String smajor,
			String semail, Map<String, String> questions) {
		super();
		this.sno = sno;
		this.sname = sname;
		this.spwd = spwd;
		this.sidentity = sidentity;
		this.suniversity = suniversity;
		this.sgrade = sgrade;
		this.smajor = smajor;
		this.semail = semail;
		this.questions = questions;
	}
	
	public Student(String sname,int sgrade,String semail) {
		this.sname = sname;
		this.sgrade = sgrade;
		this.semail = semail;
	}

	public String getSuniversity() {
		return suniversity;
	}

	public void setSuniversity(String suniversity) {
		this.suniversity = suniversity;
	}

	public int getSno() {
		return sno;
	}


	public void setSno(int sno) {
		this.sno = sno;
	}


	public String getSname() {
		return sname;
	}


	public void setSname(String sname) {
		this.sname = sname;
	}


	public String getSpwd() {
		return spwd;
	}


	public void setSpwd(String spwd) {
		this.spwd = spwd;
	}


	public int getSidentity() {
		return sidentity;
	}


	public void setSidentity(int sidentity) {
		this.sidentity = sidentity;
	}


	public int getSgrade() {
		return sgrade;
	}


	public void setSgrade(int sgrade) {
		this.sgrade = sgrade;
	}


	public String getSmajor() {
		return smajor;
	}


	public void setSmajor(String smajor) {
		this.smajor = smajor;
	}


	public String getSemail() {
		return semail;
	}


	public void setSemail(String semail) {
		this.semail = semail;
	}


	public Map<String, String> getQuestions() {
		return questions;
	}


	public void setQuestions(Map<String, String> questions) {
		this.questions = questions;
	}


	public Student() {
	
	}

	@Override
	public String toString() {
		return "Student [sno=" + sno + ", sname=" + sname + ", spwd=" + spwd + ", sidentity=" + sidentity
				+ ", suniversity=" + suniversity + ", sgrade=" + sgrade + ", smajor=" + smajor + ", semail=" + semail
				+ ", questions=" + questions + "]";
	}
	
	
}


