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
<script language="javascript" src="js/validator.js"></script>

<style type="text/css">
<!--
body, td, th {
	color: #666666;
	font: 12px "宋体";
	text-decoration: none;
}

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #FFFFFF; /*背景*/
	scrollbar-face-color: #F0F0F0; /*中间*/
	scrollbar-highlight-color: #DFDFDF; /*左边*/
	scrollbar-shadow-color: #FFFFFF; /*背景*/
	scrollbar-3dlight-color: #ffffff; /*背景*/
	scrollbar-arrow-color: #C3C3C3; /*箭头*/
	scrollbar-track-color: #ffffff; /*背景*/
	scrollbar-darkshadow-color: #F2F2F2; /*右边*/
}

.red {
	color: #FF3300;
}

a:link {
	color: #666666;
	text-decoration: none;
}

a:visited {
	color: #666666;
	text-decoration: none;
}

a:hover {
	color: #FF0000;
	text-decoration: none;
}
-->
</style>

</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<table width="1004" border="0" align="center" cellpadding="0"
		cellspacing="5" bgcolor="#FFFFFF">
		<tr>
			<td width="355" align="center" valign="top" bgcolor="#FFFFFF"
				class="kk">
				<!-- 图片栏调用--> <jsp:include page="flash.jsp"></jsp:include> <!-- 图片栏调用-->
			</td>
			<td align="center" valign="top" bgcolor="#FFFFFF" class="kk">
				<!-- 顶条新闻栏-->
				<table height="6" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<table width="98%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td width="20" height="25" align="center" valign="top"
							background="images/123.gif">&nbsp;</td>
						<td align="center" valign="top">
							<table width="100%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<c:forEach items="${topList}" var="article">
									<tr>
										<td height="25" align="left" valign="middle"><a
											href="index/read.action?id=${article.articleid }"
											target="_blank" title="${article.title }">
												${article.title } </a></td>
										<td width="120" align="right" valign="middle">${article.addtime }
										</td>
									</tr>
								</c:forEach>
							</table>
						</td>
					</tr>
				</table> <!-- 顶条新闻栏-->
			</td>
		</tr>
	</table>
	<!-- 这里开始横副栏-->
	<!-- 这里开始政务公开栏-->
	<table width="1004" border="0" align="center" cellpadding="0"
		cellspacing="4" bgcolor="#FFFFFF">
		<tr>
			<td align="center" valign="top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<c:forEach items="${frontList}" var="article" varStatus="status">
							<c:if test="${status.count eq 1 || (status.count-1) % 2 eq 0}">
								<tr>
							</c:if>
							<td align="center" valign="top">
								<table height="210" width="363" width="363" border="0"
									cellpadding="0" cellspacing="0" bordercolor="#FFFFFF"
									class="kk">
									<tr>
										<td align="center" valign="top">
											<table width="100%" border="0" cellpadding="0"
												cellspacing="0" bordercolor="#FFFFFF"
												background="images/nzcms/news_bg.gif">
												<tr>
													<td width="25" height="29" align="center" class="white12B">
														<img src="images/nzcms/nzcms_bh.gif" alt="标识" />
													</td>
													<td width="150" align="left" class="white14B">
														${article.bannername }</td>
													<td align="right" class="p12"><a
														href="index/article.action?id=${article.bannerid }">
															更多&gt;&gt;&gt;</a>&nbsp;&nbsp;</td>
												</tr>
											</table>
											<table width="99%" height="24" border="0" align="center"
												cellpadding="0" cellspacing="0">
												<c:forEach items="${article.articleList}" var="a">
													<tr>
														<td height="25" align="left" valign="middle">
															&nbsp;·&nbsp; <a
															href="index/read.action?id=${a.articleid }"
															target="_blank" title="标题：${a.title }">${a.title }</a>
														</td>
														<td width="70" align="center" valign="middle">${a.addtime }</td>
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
								</table>
							</td>
							<c:if test="${status.count % 2 eq 0 || status.count eq 2}">
					</tr>
					</c:if>

					</c:forEach>
				</table>
			</td>



			<!-- 这里左栏开始-->


			<td width="250" align="center" valign="top" class="kk">
				<!-- 这里开始便民链接栏-->
				<table width="100%" height="27" border="0" cellpadding="0"
					cellspacing="0" background="images/nzcms/right_bg2.gif">
					<tr>
						<td height="30" align="center" class="white12B">
							::&nbsp;&nbsp;便民链接&nbsp;&nbsp;::</td>
					</tr>
				</table>
				<table border="0" cellpadding="0" cellspacing="5">
					<tr>

						<td align="left" height="20">· <a
							href="http://www.hao123.com/haoserver/showjicc.htm"
							target="_blank">手机号码查询</a>&nbsp;&nbsp;
						</td>

						<td align="left" height="20">· <a href="http://www.ip138.com"
							target="_blank">IP查询</a>&nbsp;&nbsp;
						</td>

					</tr>
					<tr>

						<td align="left" height="20">· <a
							href="http://www.ip138.com/" target="_blank">IP查询</a>&nbsp;&nbsp;
						</td>

						<td align="left" height="20">· <a
							href="http://weather.news.sina.com.cn/" target="_blank">国内天气预报</a>&nbsp;&nbsp;
						</td>

					</tr>
					<tr>

						<td align="left" height="20">· <a
							href="http://www.ip138.com/post/" target="_blank">邮编电话查询</a>&nbsp;&nbsp;
						</td>

						<td align="left" height="20">· <a
							href="http://www.hao123.com/ss/lccx.htm" target="_blank">列车时刻查询</a>&nbsp;&nbsp;
						</td>

					</tr>
					<tr>

						<td align="left" height="20">· <a
							href="http://www.hao123.com/ss/fy.htm" target="_blank">在线翻译</a>&nbsp;&nbsp;
						</td>

						<td align="left" height="20">· <a
							href="http://www.hao123.com/haoserver/wn.htm" target="_blank">万年历</a>&nbsp;&nbsp;
						</td>

					</tr>
					<tr>

						<td align="left" height="20">· <a
							href="http://wz.gocar.cn/changtu/" target="_blank">长途汽车客运时刻</a>&nbsp;&nbsp;
						</td>

						<td align="left" height="20">· <a href="http://www.nz519.cn"
							target="_blank">好收藏网站址</a>&nbsp;&nbsp;
						</td>

					</tr>
					<tr>

						<td align="left" height="20">· <a
							href="http://www.hao123.com/haoserver/tefudh.htm" target="_blank">常用电话</a>&nbsp;&nbsp;
						</td>

						<td align="left" height="20">· <a href="http://www.gov.cn"
							target="_blank">中国政府网</a>&nbsp;&nbsp;
						</td>

					</tr>
					<tr>

					</tr>
				</table> <!-- 这里结束便民链接栏-->


			</td>

			<!-- 这里左栏关闭-->
		</tr>
	</table>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
