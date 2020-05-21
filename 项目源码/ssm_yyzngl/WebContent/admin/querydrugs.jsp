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
			<h1 class="page-title">药品信息列表</h1>
		</div>
		<div class="main-content">
			<table class="table">
				<thead>
					<tr>
						<th class="text-center">药品名称</th>
						<th class="text-center">销售价格</th>
						<th class="text-center">生产厂商</th>
						<th class="text-center">备注</th>
					</tr>
				</thead>
				<c:forEach items="${drugsList}" var="drugs">
					<tr align="center">
						<td class="center">${drugs.drugsname}</td>
						<td class="center">${drugs.price}</td>
						<td class="center">${drugs.productor}</td>
						<td class="center">${drugs.memo}</td>
					</tr>
				</c:forEach>
			</table>
			<ul class="pagination">
				<li>
					<form action="drugs/queryDrugsByCond.action" name="myform" method="post">
						<label>查询条件: <select name="cond" style="width: 100px">
								<option value="drugsname">按药品名称查询</option>
								<option value="price">按销售价格查询</option>
								<option value="productor">按生产厂商查询</option>
								<option value="memo">按备注查询</option>
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
