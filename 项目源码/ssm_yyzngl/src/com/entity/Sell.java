package com.entity;

import com.util.VeDate;

public class Sell {
	private String sellid = "S" + VeDate.getStringId();
	private String sno;
	private String drugsid;
	private String num;
	private String price;
	private String total;
	private String addtime;
	private String drugsname;

	public String getSellid() {
		return sellid;
	}

	public void setSellid(String sellid) {
		this.sellid = sellid;
	}

	public String getSno() {
		return this.sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public String getDrugsid() {
		return this.drugsid;
	}

	public void setDrugsid(String drugsid) {
		this.drugsid = drugsid;
	}

	public String getNum() {
		return this.num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getTotal() {
		return this.total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	public String getDrugsname() {
		return this.drugsname;
	}

	public void setDrugsname(String drugsname) {
		this.drugsname = drugsname;
	}
}
