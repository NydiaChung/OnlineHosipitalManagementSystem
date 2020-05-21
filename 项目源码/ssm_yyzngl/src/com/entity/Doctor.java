package com.entity;

import com.util.VeDate;

public class Doctor {
	private String doctorid = "D" + VeDate.getStringId();
	private String username;
	private String password;
	private String realname;
	private String deptid;
	private String image;
	private String sex;
	private String birthday;
	private String xueli;
	private String biye;
	private String themax;
	private String contents;
	private String deptname;

	public String getDoctorid() {
		return doctorid;
	}

	public void setDoctorid(String doctorid) {
		this.doctorid = doctorid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRealname() {
		return this.realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getDeptid() {
		return this.deptid;
	}

	public void setDeptid(String deptid) {
		this.deptid = deptid;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return this.birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getXueli() {
		return this.xueli;
	}

	public void setXueli(String xueli) {
		this.xueli = xueli;
	}

	public String getBiye() {
		return this.biye;
	}

	public void setBiye(String biye) {
		this.biye = biye;
	}

	public String getThemax() {
		return this.themax;
	}

	public void setThemax(String themax) {
		this.themax = themax;
	}

	public String getContents() {
		return this.contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getDeptname() {
		return this.deptname;
	}

	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
}
