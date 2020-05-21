$(function() {

$("#ano").blur(
		function() {
			$("#ano_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#ano").after("<span id='ano_msg' style='color: red'>挂号单号不能为空</span>");
			}
	});

$("#usersid").blur(
		function() {
			$("#usersid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#usersid").after("<span id='usersid_msg' style='color: red'>用户不能为空</span>");
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

$("#doctorid").blur(
		function() {
			$("#doctorid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#doctorid").after("<span id='doctorid_msg' style='color: red'>医生不能为空</span>");
			}
	});

$("#orderdate").blur(
		function() {
			$("#orderdate_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#orderdate").after("<span id='orderdate_msg' style='color: red'>预约日期不能为空</span>");
			}
	});

$("#status").blur(
		function() {
			$("#status_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#status").after("<span id='status_msg' style='color: red'>状态不能为空</span>");
			}
	});

$("#memo").blur(
		function() {
			$("#memo_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
			}
	});







$('#sub').click(function(){
var ano = $("#ano").val();
var usersid = $("#usersid").val();
var deptid = $("#deptid").val();
var doctorid = $("#doctorid").val();
var orderdate = $("#orderdate").val();
var status = $("#status").val();
var memo = $("#memo").val();
$("#ano_msg").empty();
$("#usersid_msg").empty();
$("#deptid_msg").empty();
$("#doctorid_msg").empty();
$("#orderdate_msg").empty();
$("#status_msg").empty();
$("#memo_msg").empty();
if (ano == "" || ano == null) {
	$("#ano").after("<span id='ano_msg' style='color: red'>挂号单号不能为空</span>");
	return false;
}
if (usersid == "" || usersid == null) {
	$("#usersid").after("<span id='usersid_msg' style='color: red'>用户不能为空</span>");
	return false;
}
if (deptid == "" || deptid == null) {
	$("#deptid").after("<span id='deptid_msg' style='color: red'>科室不能为空</span>");
	return false;
}
if (doctorid == "" || doctorid == null) {
	$("#doctorid").after("<span id='doctorid_msg' style='color: red'>医生不能为空</span>");
	return false;
}
if (orderdate == "" || orderdate == null) {
	$("#orderdate").after("<span id='orderdate_msg' style='color: red'>预约日期不能为空</span>");
	return false;
}
if (status == "" || status == null) {
	$("#status").after("<span id='status_msg' style='color: red'>状态不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#ano_msg").empty();
$("#usersid_msg").empty();
$("#deptid_msg").empty();
$("#doctorid_msg").empty();
$("#orderdate_msg").empty();
$("#status_msg").empty();
$("#memo_msg").empty();
});


});
