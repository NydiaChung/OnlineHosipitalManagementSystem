<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<script type="text/javascript">
	$(function() {
		var uls = $('.sidebar-nav > ul > *').clone();
		uls.addClass('visible-xs');
		$('#main-menu').append(uls.clone());
	});
</script>
<script src="lib/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
	$("[rel=tooltip]").tooltip();
	$(function() {
		$('.demo-cancel-click').click(function() {
			return false;
		});
	});
</script>
<c:if test="${sessionScope.role eq '管理员' }">
	<div class="sidebar-nav">
		<ul>

			<li><a data-target=".legal-menu1" class="nav-header collapsed" data-toggle="collapse">管理员信息管理<i
					class="fa fa-collapse"></i></a></li>
			<li><ul class="legal-menu1 nav nav-list collapse">
					<li><a href="admin/createAdmin.action"><span class="fa fa-caret-right"></span>新增管理员信息</a></li>
					<li><a href="admin/getAllAdmin.action"><span class="fa fa-caret-right"></span>管理员信息列表</a></li>
					<li><a href="admin/queryAdminByCond.action"><span class="fa fa-caret-right"></span>管理员信息查询</a></li>
				</ul></li>

			<li><a data-target=".legal-menu2" class="nav-header collapsed" data-toggle="collapse">科室信息管理<i
					class="fa fa-collapse"></i></a></li>
			<li><ul class="legal-menu2 nav nav-list collapse">
					<li><a href="dept/createDept.action"><span class="fa fa-caret-right"></span>新增科室信息</a></li>
					<li><a href="dept/getAllDept.action"><span class="fa fa-caret-right"></span>科室信息列表</a></li>
					<li><a href="dept/queryDeptByCond.action"><span class="fa fa-caret-right"></span>科室信息查询</a></li>
				</ul></li>

			<li><a data-target=".legal-menu3" class="nav-header collapsed" data-toggle="collapse">医生信息管理<i
					class="fa fa-collapse"></i></a></li>
			<li><ul class="legal-menu3 nav nav-list collapse">
					<li><a href="doctor/createDoctor.action"><span class="fa fa-caret-right"></span>新增医生信息</a></li>
					<li><a href="doctor/getAllDoctor.action"><span class="fa fa-caret-right"></span>医生信息列表</a></li>
					<li><a href="doctor/queryDoctorByCond.action"><span class="fa fa-caret-right"></span>医生信息查询</a></li>
				</ul></li>

			<li><a data-target=".legal-menu4" class="nav-header collapsed" data-toggle="collapse">用户信息管理<i
					class="fa fa-collapse"></i></a></li>
			<li><ul class="legal-menu4 nav nav-list collapse">
					<li><a href="users/getAllUsers.action"><span class="fa fa-caret-right"></span>用户信息列表</a></li>
					<li><a href="users/queryUsersByCond.action"><span class="fa fa-caret-right"></span>用户信息查询</a></li>
				</ul></li>

			<li><a data-target=".legal-menu5" class="nav-header collapsed" data-toggle="collapse">内容主题信息管理<i
					class="fa fa-collapse"></i></a></li>
			<li><ul class="legal-menu5 nav nav-list collapse">
					<li><a href="banner/createBanner.action"><span class="fa fa-caret-right"></span>新增内容主题信息</a></li>
					<li><a href="banner/getAllBanner.action"><span class="fa fa-caret-right"></span>内容主题信息列表</a></li>
					<li><a href="banner/queryBannerByCond.action"><span class="fa fa-caret-right"></span>内容主题信息查询</a></li>
				</ul></li>

			<li><a data-target=".legal-menu6" class="nav-header collapsed" data-toggle="collapse">网站内容信息管理<i
					class="fa fa-collapse"></i></a></li>
			<li><ul class="legal-menu6 nav nav-list collapse">
					<li><a href="article/createArticle.action"><span class="fa fa-caret-right"></span>新增网站内容信息</a></li>
					<li><a href="article/getAllArticle.action"><span class="fa fa-caret-right"></span>网站内容信息列表</a></li>
					<li><a href="article/queryArticleByCond.action"><span class="fa fa-caret-right"></span>网站内容信息查询</a></li>
				</ul></li>

			<li><a data-target=".legal-menu7" class="nav-header collapsed" data-toggle="collapse">用户挂号信息管理<i
					class="fa fa-collapse"></i></a></li>
			<li><ul class="legal-menu7 nav nav-list collapse">
					<li><a href="asign/getAllAsign.action"><span class="fa fa-caret-right"></span>用户挂号信息列表</a></li>
					<li><a href="asign/queryAsignByCond.action"><span class="fa fa-caret-right"></span>用户挂号信息查询</a></li>
				</ul></li>

			<li><a data-target=".legal-menu8" class="nav-header collapsed" data-toggle="collapse">药品信息管理<i
					class="fa fa-collapse"></i></a></li>
			<li><ul class="legal-menu8 nav nav-list collapse">
					<li><a href="drugs/createDrugs.action"><span class="fa fa-caret-right"></span>新增药品信息</a></li>
					<li><a href="drugs/getAllDrugs.action"><span class="fa fa-caret-right"></span>药品信息列表</a></li>
					<li><a href="drugs/queryDrugsByCond.action"><span class="fa fa-caret-right"></span>药品信息查询</a></li>
				</ul></li>

			<li><a data-target=".legal-menu9" class="nav-header collapsed" data-toggle="collapse">医嘱信息管理<i
					class="fa fa-collapse"></i></a></li>
			<li><ul class="legal-menu9 nav nav-list collapse">
					<li><a href="advice/getAllAdvice.action"><span class="fa fa-caret-right"></span>医嘱信息列表</a></li>
					<li><a href="advice/queryAdviceByCond.action"><span class="fa fa-caret-right"></span>医嘱信息查询</a></li>
				</ul></li>

			<li><a data-target=".legal-menu10" class="nav-header collapsed" data-toggle="collapse">药品销售信息管理<i
					class="fa fa-collapse"></i></a></li>
			<li><ul class="legal-menu10 nav nav-list collapse">
					<li><a href="sell/getAllSell.action"><span class="fa fa-caret-right"></span>药品销售信息列表</a></li>
					<li><a href="sell/querySellByCond.action"><span class="fa fa-caret-right"></span>药品销售信息查询</a></li>
				</ul></li>

			<li><a data-target=".legal-menu11" class="nav-header collapsed" data-toggle="collapse">患者交流信息管理<i
					class="fa fa-collapse"></i></a></li>
			<li><ul class="legal-menu11 nav nav-list collapse">
					<li><a href="bbs/getAllBbs.action"><span class="fa fa-caret-right"></span>患者交流信息列表</a></li>
					<li><a href="bbs/queryBbsByCond.action"><span class="fa fa-caret-right"></span>患者交流信息查询</a></li>
				</ul></li>
		</ul>
	</div>
</c:if>
<c:if test="${sessionScope.role eq '医生' }">
	<div class="sidebar-nav">
		<ul>
			<li><a data-target=".legal-menu7" class="nav-header collapsed" data-toggle="collapse">用户挂号信息管理<i
					class="fa fa-collapse"></i></a></li>
			<li><ul class="legal-menu7 nav nav-list collapse">
					<li><a href="asign/getDoctorAsign.action"> <span class="title">我的用户挂号信息列表</span></a></li>
				</ul></li>
			<li><a data-target=".legal-menu8" class="nav-header collapsed" data-toggle="collapse">药品信息管理<i
					class="fa fa-collapse"></i></a></li>
			<li><ul class="legal-menu8 nav nav-list collapse">
					<li><a href="drugs/queryDrugsByCond.action"><span class="fa fa-caret-right"></span>药品信息查询</a></li>
				</ul></li>
			<li><a data-target=".legal-menu9" class="nav-header collapsed" data-toggle="collapse">医嘱信息管理<i
					class="fa fa-collapse"></i></a></li>
			<li><ul class="legal-menu9 nav nav-list collapse">
					<li><a href="advice/getDoctorAdvice.action"> <span class="title">我的医嘱信息列表</span></a></li>
				</ul></li>
		</ul>
	</div>
</c:if>
