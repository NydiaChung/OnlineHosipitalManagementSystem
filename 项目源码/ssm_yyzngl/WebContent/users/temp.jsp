<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>${title}</title>
		<link href="css/css.css" rel="stylesheet" type="text/css" />
		<link href="css/css_2.css" rel="stylesheet" type="text/css" />
		<link href="css/nzcms_top.css" rel="stylesheet" type="text/css">
	</head>

	<body>
		<jsp:include page="header.jsp"></jsp:include>

		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>
