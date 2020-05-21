package com.entity;

import com.util.VeDate;

public class Drugs {
	private String drugsid = "D" + VeDate.getStringId();
	private String drugsname;
	private String price;
	private String productor;
	private String memo;

	public String getDrugsid() {
		return drugsid;
	}

	public void setDrugsid(String drugsid) {
		this.drugsid = drugsid;
	}

	public String getDrugsname() {
		return this.drugsname;
	}

	public void setDrugsname(String drugsname) {
		this.drugsname = drugsname;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getProductor() {
		return this.productor;
	}

	public void setProductor(String productor) {
		this.productor = productor;
	}

	public String getMemo() {
		return this.memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}
}
