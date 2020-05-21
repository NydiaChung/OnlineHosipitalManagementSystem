<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
<script type="text/javascript" src="js/doctor.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body class=" theme-blue">
	<jsp:include page="top.jsp"></jsp:include>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="content">
		<div class="header">
			<h1 class="page-title">新增医生信息</h1>
		</div>
		<div class="main-content">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div id="myTabContent" class="tab-content">
						<form action="doctor/addDoctor.action" name="myform" method="post" onsubmit="return check()" class="form">
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>用户名</label> <input type="text" name="username" class="form-control" id="username" placeholder="请输入用户名" />
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>密码</label> <input type="password" name="password" class="form-control" id="password" placeholder="请输入密码" />
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>姓名</label> <input type="text" name="realname" class="form-control" id="realname" placeholder="请输入姓名" />
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>科室</label> <select name="deptid" class="form-control" id="deptid"><c:forEach
											items="${deptList}" var="dept">
											<option value="${dept.deptid}">${dept.deptname }</option>
										</c:forEach></select>
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>照片</label> <input class="form-control" type="text" name="image" id="image" onclick="selimage();"
										placeholder="请选择图片" readonly="readonly" />
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>性别</label> <select class="form-control" name="sex" id="sex"><option value="男">男</option>
										<option value="女">女</option></select>
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>出生日期</label> <input type="text" name="birthday" class="form-control" id="birthday"
										onclick="WdatePicker()" readonly="readonly" placeholder="请输入出生日期" />
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>学历</label> <input type="text" name="xueli" class="form-control" id="xueli" placeholder="请输入学历" />
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>毕业院校</label> <input type="text" name="biye" class="form-control" id="biye" placeholder="请输入毕业院校" />
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>最大接诊数</label> <input type="text" name="themax" class="form-control" id="themax" placeholder="请输入最大接诊数" />
								</div>
							</div>
							<div class="tab-pane active in" id="home">
								<div class="form-group">
									<label>医生介绍</label>
									<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
									<textarea cols="80" name="contents" id="contents" rows="10" placeholder="请输入医生介绍"> </textarea>
									<script type="text/javascript">
										CKEDITOR.replace('contents', {
											language : 'zh-cn'
										});
									</script>
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

