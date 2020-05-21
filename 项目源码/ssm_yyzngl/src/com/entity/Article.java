package com.entity;

import com.util.VeDate;

public class Article {
	private String articleid = "A" + VeDate.getStringId();
	private String title;
	private String bannerid;
	private String image;
	private String istop;
	private String isflv;
	private String contents;
	private String addtime;
	private String hits;
	private String bannername;

	public String getArticleid() {
		return articleid;
	}

	public void setArticleid(String articleid) {
		this.articleid = articleid;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBannerid() {
		return this.bannerid;
	}

	public void setBannerid(String bannerid) {
		this.bannerid = bannerid;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getIstop() {
		return this.istop;
	}

	public void setIstop(String istop) {
		this.istop = istop;
	}

	public String getIsflv() {
		return this.isflv;
	}

	public void setIsflv(String isflv) {
		this.isflv = isflv;
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

	public String getHits() {
		return hits;
	}

	public void setHits(String hits) {
		this.hits = hits;
	}

	public String getBannername() {
		return this.bannername;
	}

	public void setBannername(String bannername) {
		this.bannername = bannername;
	}
}
