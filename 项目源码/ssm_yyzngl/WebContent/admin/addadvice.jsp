<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用后台管理系统</title>
<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">
<script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
<link rel="stylesheet" type="text/css" href="stylesheets/premium.css">
<script type="text/javascript" src="js/advice.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body class=" theme-blue">
	<jsp:include page="top.jsp"></jsp:include>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="content">
		<div class="header">
			<h1 class="page-title">新增医嘱信息</h1>
		</div>
		<div class="main-content">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div id="myTabContent" class="tab-content">
						<form action="advice/addAdvice.action" name="myform" method="post" onsubmit="return check()" class="form">
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>医嘱号</label> ${asign.ano } <input type="hidden" name="ano" id="ano" value="${asign.ano }" /> <input
										type="hidden" name="usersid" id="usersid" value="${asign.usersid }" /> <input type="hidden" name="doctorid"
										id="doctorid" value="${asign.doctorid }" /> <input type="hidden" name="asignid" id="asignid"
										value="${asign.asignid }" />
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label class="col-sm-2 control-label">内容</label>
									<div class="col-sm-10">
										<textarea name="contents" class="form-control" id="contents" placeholder="请输入内容" style="height: 160px;"></textarea>
									</div>
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<iframe width="100%" frameborder="0" src="sell/createSell.action?id=${asign.ano }" frameborder="0"></iframe>
								</div>
							</div>
							<div>
								<button type="submit" id="sub" class="btn btn-primary">提交保存</button>
								&nbsp;&nbsp;&nbsp;
								<button type="reset" id="res" class="btn btn-primary">取消重置</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

