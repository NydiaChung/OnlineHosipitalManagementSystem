$(function() {

$("#ano").blur(
		function() {
			$("#ano_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#ano").after("<span id='ano_msg' style='color: red'>医嘱号不能为空</span>");
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

$("#doctorid").blur(
		function() {
			$("#doctorid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#doctorid").after("<span id='doctorid_msg' style='color: red'>医生不能为空</span>");
			}
	});

$("#contents").blur(
		function() {
			$("#contents_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#contents").after("<span id='contents_msg' style='color: red'>内容不能为空</span>");
			}
	});







$('#sub').click(function(){
var ano = $("#ano").val();
var usersid = $("#usersid").val();
var doctorid = $("#doctorid").val();
var contents = $("#contents").val();
$("#ano_msg").empty();
$("#usersid_msg").empty();
$("#doctorid_msg").empty();
$("#contents_msg").empty();
if (ano == "" || ano == null) {
	$("#ano").after("<span id='ano_msg' style='color: red'>医嘱号不能为空</span>");
	return false;
}
if (usersid == "" || usersid == null) {
	$("#usersid").after("<span id='usersid_msg' style='color: red'>用户不能为空</span>");
	return false;
}
if (doctorid == "" || doctorid == null) {
	$("#doctorid").after("<span id='doctorid_msg' style='color: red'>医生不能为空</span>");
	return false;
}
if (contents == "" || contents == null) {
	$("#contents").after("<span id='contents_msg' style='color: red'>内容不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#ano_msg").empty();
$("#usersid_msg").empty();
$("#doctorid_msg").empty();
$("#contents_msg").empty();
});


});
