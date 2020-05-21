<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
			<h1 class="page-title">用户挂号信息列表</h1>
		</div>
		<div class="main-content">
			<table class="table">

				<thead>
					<tr>
						<th class="text-center">挂号单号</th>
						<th class="text-center">用户</th>
						<th class="text-center">科室</th>
						<th class="text-center">医生</th>
						<th class="text-center">预约日期</th>
						<th class="text-center">状态</th>
						<th class="text-center">备注</th>
						<th class="text-center">操作</th>
					</tr>
				</thead>
				<c:forEach items="${asignList}" var="asign">
					<tr align="center">
						<td>${asign.ano}</td>
						<td>${asign.username}</td>
						<td>${asign.deptname}</td>
						<td>${asign.realname}</td>
						<td>${asign.orderdate}</td>
						<td>${asign.status}</td>
						<td>${asign.memo}</td>
						<td><a href="asign/getAsignById.action?id=${asign.asignid}"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;<a
							href="asign/deleteAsign.action?id=${asign.asignid}" onclick="{if(confirm('确定要删除吗?')){return true;}return false;}"><i
								class="fa fa-trash-o"></i></a></td>
					</tr>
				</c:forEach>
			</table>
			<div class="pagination">${html }</div>
		</div>
	</div>
</body>
</html>
