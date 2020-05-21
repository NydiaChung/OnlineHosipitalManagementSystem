package com.entity;

import java.util.ArrayList;
import java.util.List;

import com.util.VeDate;

public class Banner {
	private String bannerid = "B" + VeDate.getStringId();
	private String bannername;
	private String addtime;
	private List<Article> articleList = new ArrayList<Article>();

	public List<Article> getArticleList() {
		return articleList;
	}

	public void setArticleList(List<Article> articleList) {
		this.articleList = articleList;
	}

	public String getBannerid() {
		return bannerid;
	}

	public void setBannerid(String bannerid) {
		this.bannerid = bannerid;
	}

	public String getBannername() {
		return this.bannername;
	}

	public void setBannername(String bannername) {
		this.bannername = bannername;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}
}
