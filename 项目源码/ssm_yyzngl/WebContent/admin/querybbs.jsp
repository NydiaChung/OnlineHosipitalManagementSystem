<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%><jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%><!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>欢迎使用后台管理系统</title>
<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">
<script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
<link rel="stylesheet" type="text/css" href="stylesheets/premium.css">
</head>
<body class=" theme-blue">
	<jsp:include page="top.jsp"></jsp:include>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="content">
		<div class="header">
			<h1 class="page-title">患者交流信息列表</h1>
		</div>
		<div class="main-content">
			<table class="table">
				<thead>
					<tr>
						<th class="text-center">用户</th>
						<th class="text-center">标题</th>
						<th class="text-center">内容</th>
						<th class="text-center">发布日期</th>
						<th class="text-center">点击数</th>
						<th class="text-center">回复数</th>
					</tr>
				</thead>
				<c:forEach items="${bbsList}" var="bbs">
					<tr align="center">
						<td class="center">${bbs.username}</td>
						<td class="center">${bbs.title}</td>
						<td class="center">${bbs.contents}</td>
						<td class="center">${bbs.addtime}</td>
						<td class="center">${bbs.hits}</td>
						<td class="center">${bbs.repnum}</td>
					</tr>
				</c:forEach>
			</table>
			<ul class="pagination">
				<li>
					<form action="bbs/queryBbsByCond.action" name="myform" method="post">
						<label>查询条件: <select name="cond" style="width: 100px">
								<option value="usersid">按用户查询</option>
								<option value="title">按标题查询</option>
								<option value="contents">按内容查询</option>
								<option value="addtime">按发布日期查询</option>
								<option value="hits">按点击数查询</option>
								<option value="repnum">按回复数查询</option>
						</select>
						</label>&nbsp;&nbsp;&nbsp; <label>关键字: <input type="text" name="name" required style="width: 100px" /></label>&nbsp;&nbsp;&nbsp;
						<label><input type="submit" value="查询" class="mws-button green" /> </label>${html }
					</form>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>
