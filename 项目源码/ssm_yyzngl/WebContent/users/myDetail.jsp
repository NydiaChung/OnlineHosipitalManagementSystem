<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
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
	<table width="1004" border="0" align="center" cellpadding="1"
		cellspacing="10" bordercolor="#FFFFFF" bgcolor="#FFFFFF">
		<tr>
			<td align="center" valign="top" bgcolor="#FFFFFF" class="bg_qc">
				<table width="100%" height="27" border="0" cellpadding="8"
					cellspacing="0" bgcolor="#F6F6F6">
					<tr>
						<td align="left" class="p12">您的位置： <a href="<%=basePath%>">首页</a>&nbsp;&gt;&gt;&nbsp;我的医嘱
						</td>
					</tr>
				</table>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td align="left">
							<div class="z" id="z">
								<table width="99%" border="0" cellpadding="5" cellspacing="1"
									bgcolor="#E0EDB7">
									<tr>
										<td height="30" colspan="6" align="left"
											background="images/nzcms/list_bg.gif" class="white14B">
											我的医嘱</td>
									</tr>
									<tr>
										<td align="center" bgcolor="#FFFFFF" colspan="3">医嘱号</td>
										<td align="center" bgcolor="#FFFFFF">医生</td>
										<td align="center" bgcolor="#FFFFFF">内容</td>
										<td align="center" bgcolor="#FFFFFF">日期</td>
									</tr>
									<c:forEach items="${adviceList}" var="advice">
										<tr align="center" bgcolor="#FFFFFF">
											<td align="center" colspan="3">${advice.ano}</td>
											<td align="center">${advice.realname}</td>
											<td align="center">${advice.contents}</td>
											<td align="center">${advice.addtime}</td>
										</tr>
									</c:forEach>
									<tr>
										<td height="30" colspan="6" align="left"></td>
									</tr>
									<tr>
										<td height="30" colspan="6" align="left"
											background="images/nzcms/list_bg.gif" class="white14B">
											处方</td>
									</tr>
									<tr align="center">
										<td align="center" bgcolor="#FFFFFF">医嘱号</td>
										<td align="center" bgcolor="#FFFFFF">药品</td>
										<td align="center" bgcolor="#FFFFFF">数量</td>
										<td align="center" bgcolor="#FFFFFF">单价</td>
										<td align="center" bgcolor="#FFFFFF">总计</td>
										<td align="center" bgcolor="#FFFFFF">日期</td>
									</tr>
									<c:forEach items="${sellList}" var="sell">
										<tr align="center" bgcolor="#FFFFFF">
											<td align="center">${sell.sno}</td>
											<td align="center">${sell.drugsname}</td>
											<td align="center">${sell.num}</td>
											<td align="center">${sell.price}</td>
											<td align="center">${sell.total}</td>
											<td align="center">${sell.addtime}</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
