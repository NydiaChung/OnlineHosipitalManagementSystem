package com.entity;

import com.util.VeDate;

public class Dept {
	private String deptid = "D" + VeDate.getStringId();
	private String deptname;

	public String getDeptid() {
		return deptid;
	}

	public void setDeptid(String deptid) {
		this.deptid = deptid;
	}

	public String getDeptname() {
		return this.deptname;
	}

	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
}
