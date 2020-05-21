<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!--下拉这里开始 -->
<script type="text/javascript">
<!--
	var timeout = 500;
	var closetimer = 0;
	var ddmenuitem = 0;
	// open hidden layer
	function mopen(id) {
		// cancel close timer
		mcancelclosetime();
		// close old layer
		if (ddmenuitem)
			ddmenuitem.style.visibility = 'hidden';
		// get new layer and show it
		ddmenuitem = document.getElementById(id);
		ddmenuitem.style.visibility = 'visible';
	}
	// close showed layer
	function mclose() {
		if (ddmenuitem)
			ddmenuitem.style.visibility = 'hidden';
	}
	// go close timer
	function mclosetime() {
		closetimer = window.setTimeout(mclose, timeout);
	}
	// cancel close timer
	function mcancelclosetime() {
		if (closetimer) {
			window.clearTimeout(closetimer);
			closetimer = null;
		}
	}
	// close layer when click-out
	document.onclick = mclose;
// -->
</script>
<!--下拉这里结束 -->
<script language="JavaScript">
	function Display(ID) {
		if (ID.style.display == 'none') {
			ID.style.display = '';
		} else {
			ID.style.display = 'none';
		}

	}
</script>

<!--导航FLASH -->
<table width="1004" border="0" align="center" cellpadding="0" cellspacing="0"
	background="flash/top/nzgov_06.jpg" bgcolor="#FFFFFF">
	<tr>
		<td align="center">
			<img alt="" src="images/top.jpg" width="1004" height="220">
		</td>
	</tr>
</table>
<!--导航FLASH -->

<!--导航 -->
<table width="1004" border="0" align="center" cellpadding="0" cellspacing="0"
	background="images/nzcms/nzcms_top01.gif" bgcolor="#093887" class="top">
	<tr>
		<td width="1004" height="38" align="center" valign="middle">
			<table border="0" cellpadding="0" cellspacing="0" id="sddm">
				<tr>

					<td align="left">
						<li>
							<table width="100" border="0" cellpadding="0" cellspacing="0"
								background="images/nzcms/nzcms.07.gif">
								<tr>
									<td height="38" align="center">
										<a href="<%=basePath%>" class="left"> 首页</a>
									</td>
								</tr>
							</table>
						</li>
					</td>
					<c:forEach items="${bannerList}" var="banner">
						<td align="left">
							<li>
								<table width="100" border="0" cellpadding="0" cellspacing="0"
									background="images/nzcms/nzcms.07.gif">
									<tr>
										<td height="38" align="center">
											<a href="index/article.action?id=${banner.bannerid}" class="left"> ${banner.bannername }</a>
										</td>
									</tr>
								</table>
							</li>
						</td>
					</c:forEach>
					<td align="left">
							<table width="100" border="0" cellpadding="0" cellspacing="0"
								background="images/nzcms/nzcms.07.gif">
								<tr>
									<td height="38" align="center">
										<a href="index/doctor.action" class="left">医生信息</a>
									</td>
								</tr>
							</table>
						<!--导航 -->
					</td>
					<td align="left">
							<table width="100" border="0" cellpadding="0" cellspacing="0"
								background="images/nzcms/nzcms.07.gif">
								<tr>
									<td height="38" align="center">
										<a href="index/bbs.action" class="left">留言板</a>
									</td>
								</tr>
							</table>
						<!--导航 -->
					</td>
					
					<c:if test="${sessionScope.userid != null }">
						<td align="left">
							<li>
								<table width="100" border="0" cellpadding="0" cellspacing="0"
									background="images/nzcms/nzcms.07.gif">
									<tr>
										<td height="38" align="center">
											<a href="javascript:void(0)" class="left" onmouseover="mopen('20')"
												onMouseOut="mclosetime()"> 用户菜单</a>
										</td>
									</tr>
								</table>
								<div id="20" onMouseOver="mcancelclosetime()" onMouseOut="mclosetime()">
									<table border="0" cellpadding="0" cellspacing="0" class="top01"
										background="images/BG/01.gif">
										<tr>
											<td align=left>
												<table width="100" height="35" border="0" cellpadding="0">
													<tr>
														<td align="left">
															<a href="index/prePwd.action"><font class="p14"><img src="images/biao.gif"
																	alt="图标" border="0">&nbsp;修改密码</font> </a>
														</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td align=left>
												<table width="100" height="35" border="0" cellpadding="0">
													<tr>
														<td align="left">
															<a href="index/userinfo.action"><font class="p14"><img src="images/biao.gif"
																	alt="图标" border="0">&nbsp;个人信息</font> </a>
														</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td align=left>
												<table width="100" height="35" border="0" cellpadding="0">
													<tr>
														<td align="left">
															<a href="index/myAsign.action"><font class="p14"><img src="images/biao.gif"
																	alt="图标" border="0">&nbsp;我的挂号</font> </a>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</div>
							</li>
						</td>
						<td align="left">
							<li>
								<table width="100" border="0" cellpadding="0" cellspacing="0"
									background="images/nzcms/nzcms.07.gif">
									<tr>
										<td height="38" align="center">
											<a href="index/exit.action" class="left">退出登录</a>
										</td>
									</tr>
								</table>
							</li>
							<!--导航 -->
						</td>
					</c:if>
					<c:if test="${sessionScope.userid == null }">
						<td align="left">
							<li>
								<table width="100" border="0" cellpadding="0" cellspacing="0"
									background="images/nzcms/nzcms.07.gif">
									<tr>
										<td height="38" align="center">
											<a href="index/preReg.action" class="left">用户注册</a>
										</td>
									</tr>
								</table>
							</li>
							<!--导航 -->
						</td>
						<td align="left">
							<li>
								<table width="100" border="0" cellpadding="0" cellspacing="0"
									background="images/nzcms/nzcms.07.gif">
									<tr>
										<td height="38" align="center">
											<a href="index/preLogin.action" class="left">用户登录</a>
										</td>
									</tr>
								</table>
							</li>
							<!--导航 -->
						</td>
					</c:if>
				</tr>
			</table>
		</td>
	</tr>
</table>
<!--导航-->
<!--滚动栏插件 -->

<table width="1004" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td>
			<table width="1004" border="0" align="center" cellpadding="3" cellspacing="0" bgcolor="#000000"
				style="border: 5px solid #000000;">
				<tr>
					<td width="120" height="60" align="center" background="images/timebg.gif" class="white18">

						<span id=localtime></span>
						<script type="text/javascript">
							function showLocale(objD) {
								var str, colorhead, colorfoot;
								var yy = objD.getYear();
								if (yy < 1900)
									yy = yy + 1900;
								var MM = objD.getMonth() + 1;
								if (MM < 10)
									MM = '0' + MM;
								var dd = objD.getDate();
								if (dd < 10)
									dd = '0' + dd;
								var hh = objD.getHours();
								if (hh < 10)
									hh = '0' + hh;
								var mm = objD.getMinutes();
								if (mm < 10)
									mm = '0' + mm;
								var ss = objD.getSeconds();
								if (ss < 10)
									ss = '0' + ss;
								var ww = objD.getDay();
								if (ww == 0)
									colorhead = "<font color=\"#FF5300\">";
								if (ww > 0 && ww < 6)
									colorhead = "<font color=\"#FF5300\">";
								if (ww == 6)
									colorhead = "<font color=\"#FF5300\">";
								if (ww == 0)
									ww = "星期日";
								if (ww == 1)
									ww = "星期一";
								if (ww == 2)
									ww = "星期二";
								if (ww == 3)
									ww = "星期三";
								if (ww == 4)
									ww = "星期四";
								if (ww == 5)
									ww = "星期五";
								if (ww == 6)
									ww = "星期六";
								colorfoot = "</font>"
								str = colorhead
										+ hh
										+ ":"
										+ mm
										+ ":"
										+ ss
										+ "<br><font style='font-size: 24px':font-family: '微软雅黑';>"
										+ ww + colorfoot;
								return (str);
							}
							function tick() {
								var today;
								today = new Date();
								document.getElementById("localtime").innerHTML = showLocale(today);
								window.setTimeout("tick()", 1000);
							}
							tick();
						</script>

					</td>
					<td align="left" background="images/timebg.gif">
						<marquee scrollamount=5 width=870 onmouseover="stop()" onmouseout="start()">
							<span style='font-family: Microsoft YaHei; color: #FFFF00; font-size: 24px;'>欢迎访问${title}</span>
						</marquee>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<!--滚动栏插件 -->


