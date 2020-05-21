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
<title>${title }</title>
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
						<td align="left" class="p12">您的位置： <a href="index.jsp">首页</a>&nbsp;&gt;&nbsp;&nbsp;<a
							href="index/doctor.action" class="left">医生信息</a>
							&nbsp;&gt;&nbsp;&nbsp;${doctor.realname }
						</td>
					</tr>
				</table>
				<table height="35" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<table height="25" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td align="center" class="p28"><font class="p28">${doctor.realname }</font>
						</td>
					</tr>
				</table>
				<table height="35" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<table width="98%" border="0" cellpadding="0" cellspacing="0"
					bgcolor="#F6F6F6" class="dx">
					<tr>
						<td height="20" align="center">
						&nbsp;&nbsp;‖&nbsp;&nbsp;性别：${doctor.sex }
						&nbsp;&nbsp;‖&nbsp;&nbsp;出生日期：${doctor.birthday }
						&nbsp;&nbsp;‖&nbsp;&nbsp;所在科室：${doctor.deptname }
						&nbsp;&nbsp;‖&nbsp;&nbsp;<a href="index/preAsign.action?doctorid=${doctor.doctorid }">预约挂号</a>
					</tr>
				</table>

				<table height="15" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>

				<table height="15" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td align="left">
							<div class="z" id="z">
								<center>
									<img alt="" src="${doctor.image }" width="55%" height="450" />
								</center>
								${doctor.contents }
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
