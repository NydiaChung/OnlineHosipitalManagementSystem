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
<script language="javascript" src="js/validator.js"></script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<table width="1004" border="0" align="center" cellpadding="0"
		cellspacing="8" bgcolor="#FFFFFF">
		<tr valign="top">
			<td width="260" align="center" valign="top"
				background="images/nzcms/nzcms_left_bg.gif">
				<!--左侧栏目 -->
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					class="nzcms_left_bg">
					<tr>
						<td width="35" height="35" align="center"><img
							src="images/word.gif" alt="分类" width="16" height="16" /></td>
						<td align="left"><span class="white14B">信息导航 </span></td>
					</tr>
				</table>
				<table height="10" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>


				<table width="96%" height="250" border="0" cellpadding="0"
					cellspacing="0" bordercolor="#FFFFFF" background="images/bg/01.gif"
					class="kk22">
					<tr>
						<td valign="top">
							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="90" height="28" align="center"
										background="images/nzcms/left.gif" class="title14b">信息导航</td>
									<td align="right" background="images/nzcms/left2.gif"><img
										src="images/HOT.gif" /></td>
								</tr>
							</table>
							<table width="98%" height="24" border="0" align="center"
								cellpadding="0" cellspacing="0">
								<c:forEach items="${bannerList}" var="banner">
									<tr>
										<td height="27" align="left" valign="middle">
											&nbsp; <img src="images/HOT2.gif" width="7" height="7" /> &nbsp; <a
												href="index/article.action?id=${banner.bannerid }" title="标题：${banner.bannername }">${banner.bannername }</a>
										</td>
									</tr>
								</c:forEach>
							</table>
						</td>
					</tr>
				</table>
				<table height="5" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table> <!--左侧推荐文章 -->
			</td>
			<td align="center">
				<table width="98%" border="0" cellpadding="0" cellspacing="0"
					bgcolor="#F5F5F5" class="bg_qc">
					<tr>
						<td width="25" height="20" align="center"><img
							src="images/nzcms.xinxin.gif" alt="标" /></td>
						<td align="left" class="p12">您的位置：<a href="index.jsp">首页</a>&nbsp;&gt;&nbsp;&nbsp;医生信息
						</td>
					</tr>
				</table>
				<table height="10" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table> <!--文章显示 -->
				<table width="98%" border="0" cellpadding="0" cellspacing="0"
					background="images/nzcms/list_news_bg.gif">
					<tr>
						<td width="190" height="33" align="center" class="title14b">医生信息</td>
						<td align="right">&nbsp;&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
				<table height="20" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table> <!--图片格式显示 -->

				<table height="20" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<table border="0" align="center" cellpadding="0" cellspacing="0"
					bordercolor="#FF9900">
					<tr>
						<c:forEach items="${doctorList}" var="doctor" varStatus="status">
							<c:if test="${status.count eq 1 || (status.count-1) % 3 eq 0}">
								<tr>
							</c:if>
							<td align="center" valign="top" whith="200"><table
									width="170" height="150" border="1" cellpadding="0"
									cellspacing="3" bordercolor="#FFFFFF" bgcolor="#F5F5F5"
									class="bg_qc">
									<tr>
										<td align="center" valign="middle" bgcolor="#FFFFFF"><a
											href="index/doctorDetail.action?id=${doctor.doctorid }"
											target="_blank"><img src="${doctor.image }" alt="${doctor.realname }"
												width="190" height="140" border="0"></a></td>
									</tr>
								</table>
								<table width="220" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td height="35" align="center"><a href="index/dept.action?id=${doctor.deptid }">[${doctor.deptname }]</a><a
											href="index/doctorDetail.action?id=${doctor.doctorid }"
											target="_blank"> ${doctor.realname } </a></td>
									</tr>
								</table></td>

							<c:if test="${status.count % 3 eq 0 || status.count eq 3}">
					</tr>
					</c:if>

					</c:forEach>


					</tr>
				</table>
			</td>
		</tr>
	</table>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
