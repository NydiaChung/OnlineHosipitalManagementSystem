<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>${title }</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/css_2.css" rel="stylesheet" type="text/css" />
<link href="css/nzcms_top.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/validator.js"></script>
<script language="javascript" type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<table width="1004" border="0" align="center" cellpadding="0" cellspacing="10" bgcolor="#FFFFFF">
		<tr>
			<td align="center" valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F5F5F5" class="bg_qc">
					<tr>
						<td width="25" height="20" align="center"><img src="images/nzcms.xinxin.gif" alt="标" width="9" height="9" />
						</td>
						<td align="left" class="p12">您的位置： <a href="index.jsp">首页</a>&nbsp;&gt;&nbsp;&nbsp;个人信息
						</td>
					</tr>
				</table>
				<table height="30" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<form action="index/personal.action" name="myform">
					<table width="56%" border="0" cellpadding="5" cellspacing="1" bgcolor="#E0EDB7">
						<tr>
							<td height="30" colspan="2" align="center" background="images/nzcms/list_bg.gif" class="white14B">个人信息</td>
						</tr>
						<tr>
							<td width="80" height="50" align="right" bgcolor="#FFFFFF">账号：</td>
							<td bgcolor="#FFFFFF">${sessionScope.users.username }<input type="hidden" name="username" id="username"
								value="${sessionScope.users.username }" /> <input type="hidden" name="password" id="password"
								value="${sessionScope.users.password }" /> <input type="hidden" name="usersid" id="usersid"
								value="${sessionScope.users.usersid }" /> <input type="hidden" name="regdate" id="regdate"
								value="${sessionScope.users.regdate }" />
							</td>
						</tr>
						<tr>
							<td width="80" height="50" align="right" bgcolor="#FFFFFF">姓名：</td>
							<td bgcolor="#FFFFFF"><input type="text" name="realname" style="width: 260px; height: 30px" id="realname"
								value="${sessionScope.users.realname }" /></td>
						</tr>
						<tr>
							<td height="50" align="right" bgcolor="#FFFFFF">性别：</td>
							<td bgcolor="#FFFFFF"><input type="radio" name="sex" id="sex" value="男" checked="checked" />男 &nbsp;&nbsp;
								<input type="radio" name="sex" id="sex" value="女" />女</td>
						</tr>
						<tr>
							<td height="50" align="right" bgcolor="#FFFFFF">出生日期：</td>
							<td bgcolor="#FFFFFF"><input type="text" name="birthday" onclick="WdatePicker()" readonly="readonly"
								style="width: 260px; height: 30px" id="birthday" value="${sessionScope.users.birthday }" /></td>
						</tr>
						<tr>
							<td height="50" align="right" bgcolor="#FFFFFF">联系方式：</td>
							<td bgcolor="#FFFFFF"><input type="text" name="contact" style="width: 260px; height: 30px" id="contact"
								value="${sessionScope.users.contact }" /></td>
						</tr>
						<tr>
							<td height="50" align="right" bgcolor="#FFFFFF">联系地址：</td>
							<td bgcolor="#FFFFFF"><input type="text" name="address" style="width: 260px; height: 30px" id="address"
								value="${sessionScope.users.address }" /></td>
						</tr>
						<tr>
							<td bgcolor="#FFFFFF" colspan="2" align="center"><label> <input type="submit" name="Submit"
									value="提交" /> &nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" name="Submit2" value="重置" />
							</label></td>
						</tr>
					</table>
				</form>
				<table height="50" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
