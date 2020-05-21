$(function() {

$("#username").blur(
		function() {
			$("#username_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#username").after("<span id='username_msg' style='color: red'>用户名不能为空</span>");
			}
	});

$("#password").blur(
		function() {
			$("#password_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#password").after("<span id='password_msg' style='color: red'>密码不能为空</span>");
			}
	});

$("#realname").blur(
		function() {
			$("#realname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#realname").after("<span id='realname_msg' style='color: red'>姓名不能为空</span>");
			}
	});

$("#deptid").blur(
		function() {
			$("#deptid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#deptid").after("<span id='deptid_msg' style='color: red'>科室不能为空</span>");
			}
	});

$("#image").blur(
		function() {
			$("#image_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#image").after("<span id='image_msg' style='color: red'>照片不能为空</span>");
			}
	});

$("#birthday").blur(
		function() {
			$("#birthday_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#birthday").after("<span id='birthday_msg' style='color: red'>出生日期不能为空</span>");
			}
	});

$("#xueli").blur(
		function() {
			$("#xueli_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#xueli").after("<span id='xueli_msg' style='color: red'>学历不能为空</span>");
			}
	});

$("#biye").blur(
		function() {
			$("#biye_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#biye").after("<span id='biye_msg' style='color: red'>毕业院校不能为空</span>");
			}
	});

$("#themax").blur(
		function() {
			$("#themax_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#themax").after("<span id='themax_msg' style='color: red'>最大接诊数不能为空</span>");
			}
	});

$("#contents").blur(
		function() {
			$("#contents_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#contents").after("<span id='contents_msg' style='color: red'>医生介绍不能为空</span>");
			}
	});







$('#sub').click(function(){
var username = $("#username").val();
var password = $("#password").val();
var realname = $("#realname").val();
var deptid = $("#deptid").val();
var image = $("#image").val();
var birthday = $("#birthday").val();
var xueli = $("#xueli").val();
var biye = $("#biye").val();
var themax = $("#themax").val();
var contents = $("#contents").val();
$("#username_msg").empty();
$("#password_msg").empty();
$("#realname_msg").empty();
$("#deptid_msg").empty();
$("#image_msg").empty();
$("#birthday_msg").empty();
$("#xueli_msg").empty();
$("#biye_msg").empty();
$("#themax_msg").empty();
$("#contents_msg").empty();
if (username == "" || username == null) {
	$("#username").after("<span id='username_msg' style='color: red'>用户名不能为空</span>");
	return false;
}
if (password == "" || password == null) {
	$("#password").after("<span id='password_msg' style='color: red'>密码不能为空</span>");
	return false;
}
if (realname == "" || realname == null) {
	$("#realname").after("<span id='realname_msg' style='color: red'>姓名不能为空</span>");
	return false;
}
if (deptid == "" || deptid == null) {
	$("#deptid").after("<span id='deptid_msg' style='color: red'>科室不能为空</span>");
	return false;
}
if (image == "" || image == null) {
	$("#image").after("<span id='image_msg' style='color: red'>照片不能为空</span>");
	return false;
}
if (birthday == "" || birthday == null) {
	$("#birthday").after("<span id='birthday_msg' style='color: red'>出生日期不能为空</span>");
	return false;
}
if (xueli == "" || xueli == null) {
	$("#xueli").after("<span id='xueli_msg' style='color: red'>学历不能为空</span>");
	return false;
}
if (biye == "" || biye == null) {
	$("#biye").after("<span id='biye_msg' style='color: red'>毕业院校不能为空</span>");
	return false;
}
if (themax == "" || themax == null) {
	$("#themax").after("<span id='themax_msg' style='color: red'>最大接诊数不能为空</span>");
	return false;
}
if (contents == "" || contents == null) {
	$("#contents").after("<span id='contents_msg' style='color: red'>医生介绍不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#username_msg").empty();
$("#password_msg").empty();
$("#realname_msg").empty();
$("#deptid_msg").empty();
$("#image_msg").empty();
$("#birthday_msg").empty();
$("#xueli_msg").empty();
$("#biye_msg").empty();
$("#themax_msg").empty();
$("#contents_msg").empty();
});


});
