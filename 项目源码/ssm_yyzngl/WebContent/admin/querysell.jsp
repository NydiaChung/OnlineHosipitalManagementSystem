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
			<h1 class="page-title">药品销售信息列表</h1>
		</div>
		<div class="main-content">
			<table class="table">
				<thead>
					<tr>
						<th class="text-center">销售单号</th>
						<th class="text-center">药品</th>
						<th class="text-center">数量</th>
						<th class="text-center">单价</th>
						<th class="text-center">小计</th>
						<th class="text-center">日期</th>
					</tr>
				</thead>
				<c:forEach items="${sellList}" var="sell">
					<tr align="center">
						<td class="center">${sell.sno}</td>
						<td class="center">${sell.drugsname}</td>
						<td class="center">${sell.num}</td>
						<td class="center">${sell.price}</td>
						<td class="center">${sell.total}</td>
						<td class="center">${sell.addtime}</td>
					</tr>
				</c:forEach>
			</table>
			<ul class="pagination">
				<li>
					<form action="sell/querySellByCond.action" name="myform" method="post">
						<label>查询条件: <select name="cond" style="width: 100px">
								<option value="sno">按销售单号查询</option>
								<option value="drugsid">按药品查询</option>
								<option value="num">按数量查询</option>
								<option value="price">按单价查询</option>
								<option value="total">按小计查询</option>
								<option value="addtime">按日期查询</option>
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
