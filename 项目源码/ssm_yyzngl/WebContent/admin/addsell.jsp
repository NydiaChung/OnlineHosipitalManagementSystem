<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%@ taglib
	prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf8" />
<script type="text/javascript" src="js/sell.js" charset="utf-8"></script>
<script type="text/javascript" src="js/date.js" charset="utf-8"></script>
<script language="javascript" type="text/javascript"
	src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
<link href="css/four.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"
	charset="utf-8"></script>
<script type="text/javascript" src="js/ajax.js" charset="utf-8"></script>
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr valign="top">
			<td bgcolor="#FFFFFF">
				<table width="99%" border="0" align="center" cellpadding="4"
					cellspacing="1" bgcolor="#aec3de" class="tab" id="tblData">
					<tr align="center" bgcolor="#F2FDFF">
						<td>药品</td>
						<td>数量</td>
						<td><input type="button" id="btnAdd" value="十" /></td>
					</tr>
					<tr align="center" bgcolor="#F2FDFF" id="tRow0">
						<td align="left"><select name="drugsid" style="width: 160px"
							id="drugsid" class="m1"><c:forEach items="${drugsList}" var="drugs">
									<option value="${drugs.drugsid}">${drugs.drugsname }</option>
								</c:forEach></select></td>
						<td align="left"><input type="text" placeholder="请输入数量"
							name="num" style="width: 160px" id="num" class="m2"/></td>
						<td>
						<input type="hidden" id="basepath" name="basepath" value="<%=basePath%>" />
						<input type="hidden" id="hidNum" name="hidNum" value="0" />
							<input type="hidden" id="detailsid" name="detailsid" value="0" class="m3" />
							<input type="hidden" name="drugsell.drugsellno" id="drugsellid" class="m4" value="${id }" />
							<input type="button" id="btnSave" value="保存" />
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>