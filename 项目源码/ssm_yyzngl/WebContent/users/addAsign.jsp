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
<title>${title}</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/css_2.css" rel="stylesheet" type="text/css" />
<link href="css/nzcms_top.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-1.3.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/ajax.js" charset="utf-8"></script>
<script language="javascript" type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<%
	String message = (String) session.getAttribute("message");
	if (message == null) {
		message = "";
	}
	if (!message.trim().equals("")) {
		out.println("<script language='javascript'>");
		out.println("alert('" + message + "');");
		out.println("</script>");
	}
	session.removeAttribute("message");
%>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<table width="1004" border="0" align="center" cellpadding="0" cellspacing="10" bgcolor="#FFFFFF">
		<tr>
			<td align="center" valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F5F5F5" class="bg_qc">
					<tr>
						<td width="25" height="20" align="center"><img src="images/nzcms.xinxin.gif" alt="标" width="9" height="9" />
						</td>
						<td align="left" class="p12">您的位置： <a href="index.jsp">首页</a>&nbsp;&gt;&nbsp;&nbsp;预约挂号
						</td>
					</tr>
				</table>
				<table height="30" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<form action="index/addAsign.action" name="myform">
					<table width="46%" border="0" cellpadding="5" cellspacing="1" bgcolor="#E0EDB7">
						<tr>
							<td height="30" colspan="2" align="center" background="images/nzcms/list_bg.gif" class="white14B">预约挂号</td>
						</tr>
						<tr>
							<td height="50" align="right" bgcolor="#FFFFFF">挂号单号：</td>
							<td bgcolor="#FFFFFF">${ano }<input type="hidden" name="ano" id="ano" value="${ano }" />
							</td>
						</tr>
						<tr>
							<td width="80" height="50" align="right" bgcolor="#FFFFFF">科室：</td>
							<td bgcolor="#FFFFFF">${doctor.deptname }<input type="hidden" name="deptid" id="deptid"
								value="${doctor.deptid }" />
							</td>
						</tr>
						<tr>
							<td width="80" height="50" align="right" bgcolor="#FFFFFF">医生：</td>
							<td bgcolor="#FFFFFF">${doctor.realname }<input type="hidden" name="doctorid" id="doctorid"
								value="${doctor.doctorid }" />
							</td>
						</tr>
						<tr>
							<td height="50" align="right" bgcolor="#FFFFFF">预约日期：</td>
							<td bgcolor="#FFFFFF"><input type="text" name="orderdate" style="width: 260px; height: 30px" id="orderdate"
								onclick="WdatePicker()" readonly="readonly" /></td>
						</tr>
						<tr>
							<td height="50" align="right" bgcolor="#FFFFFF">备注：</td>
							<td bgcolor="#FFFFFF"><input type="text" name="memo" style="width: 260px; height: 30px" id="memo" /></td>
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
