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
			<h1 class="page-title">医生信息列表</h1>
		</div>
		<div class="main-content">
			<table class="table">
				<thead>
					<tr>
						<th class="text-center">用户名</th>
						<th class="text-center">姓名</th>
						<th class="text-center">科室</th>
						<th class="text-center">性别</th>
						<th class="text-center">出生日期</th>
						<th class="text-center">学历</th>
						<th class="text-center">毕业院校</th>
						<th class="text-center">最大接诊数</th>
					</tr>
				</thead>
				<c:forEach items="${doctorList}" var="doctor">
					<tr align="center">
						<td class="center">${doctor.username}</td>
						<td class="center">${doctor.realname}</td>
						<td class="center">${doctor.deptname}</td>
						<td class="center">${doctor.sex}</td>
						<td class="center">${doctor.birthday}</td>
						<td class="center">${doctor.xueli}</td>
						<td class="center">${doctor.biye}</td>
						<td class="center">${doctor.themax}</td>
					</tr>
				</c:forEach>
			</table>
			<ul class="pagination">
				<li>
					<form action="doctor/queryDoctorByCond.action" name="myform" method="post">
						<label>查询条件: <select name="cond" style="width: 100px">
								<option value="username">按用户名查询</option>
								<option value="password">按密码查询</option>
								<option value="realname">按姓名查询</option>
								<option value="deptid">按科室查询</option>
								<option value="image">按照片查询</option>
								<option value="sex">按性别查询</option>
								<option value="birthday">按出生日期查询</option>
								<option value="xueli">按学历查询</option>
								<option value="biye">按毕业院校查询</option>
								<option value="themax">按最大接诊数查询</option>
								<option value="contents">按医生介绍查询</option>
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
