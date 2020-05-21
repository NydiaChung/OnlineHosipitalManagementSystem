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
						<th class="text-center">操作</th>
					</tr>
				</thead>
				<c:forEach items="${sellList}" var="sell">
					<tr align="center">
						<td>${sell.sno}</td>
						<td>${sell.drugsname}</td>
						<td>${sell.num}</td>
						<td>${sell.price}</td>
						<td>${sell.total}</td>
						<td>${sell.addtime}</td>
						<td><a href="sell/getSellById.action?id=${sell.sellid}"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;<a
							href="sell/deleteSell.action?id=${sell.sellid}" onclick="{if(confirm('确定要删除吗?')){return true;}return false;}"><i
								class="fa fa-trash-o"></i></a></td>
					</tr>
				</c:forEach>
			</table>
			<div class="pagination">${html }</div>
		</div>
	</div>
</body>
</html>
