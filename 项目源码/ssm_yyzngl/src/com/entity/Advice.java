package com.entity;

import com.util.VeDate;

public class Advice {
	private String adviceid = "A" + VeDate.getStringId();
	private String ano;
	private String usersid;
	private String doctorid;
	private String contents;
	private String addtime;
	private String username;
	private String realname;

	public String getAdviceid() {
		return adviceid;
	}

	public void setAdviceid(String adviceid) {
		this.adviceid = adviceid;
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

	public String getDoctorid() {
		return this.doctorid;
	}

	public void setDoctorid(String doctorid) {
		this.doctorid = doctorid;
	}

	public String getContents() {
		return this.contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRealname() {
		return this.realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}
}
