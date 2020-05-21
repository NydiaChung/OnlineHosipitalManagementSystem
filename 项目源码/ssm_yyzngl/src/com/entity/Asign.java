package com.entity;

import com.util.VeDate;

public class Asign {
	private String asignid = "A" + VeDate.getStringId();
	private String ano;
	private String usersid;
	private String deptid;
	private String doctorid;
	private String orderdate;
	private String status;
	private String memo;
	private String username;
	private String deptname;
	private String realname;

	public String getAsignid() {
		return asignid;
	}

	public void setAsignid(String asignid) {
		this.asignid = asignid;
	}

	public String getAno() {
		return this.ano;
	}

	public void setAno(String ano) {
		this.ano = ano;
	}

	public String getUsersid() {
		return this.usersid;
	}

	public void setUsersid(String usersid) {
		this.usersid = usersid;
	}

	public String getDeptid() {
		return this.deptid;
	}

	public void setDeptid(String deptid) {
		this.deptid = deptid;
	}

	public String getDoctorid() {
		return this.doctorid;
	}

	public void setDoctorid(String doctorid) {
		this.doctorid = doctorid;
	}

	public String getOrderdate() {
		return this.orderdate;
	}

	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMemo() {
		return this.memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getDeptname() {
		return this.deptname;
	}

	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}

	public String getRealname() {
		return this.realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}
}
