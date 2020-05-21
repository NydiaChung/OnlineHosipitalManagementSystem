$(function() {

$("#sno").blur(
		function() {
			$("#sno_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#sno").after("<span id='sno_msg' style='color: red'>销售单号不能为空</span>");
			}
	});

$("#drugsid").blur(
		function() {
			$("#drugsid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#drugsid").after("<span id='drugsid_msg' style='color: red'>药品不能为空</span>");
			}
	});

$("#num").blur(
		function() {
			$("#num_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#num").after("<span id='num_msg' style='color: red'>数量不能为空</span>");
			}
	});

$("#price").blur(
		function() {
			$("#price_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#price").after("<span id='price_msg' style='color: red'>单价不能为空</span>");
			}
	});

$("#total").blur(
		function() {
			$("#total_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#total").after("<span id='total_msg' style='color: red'>小计不能为空</span>");
			}
	});

$("#addtime").blur(
		function() {
			$("#addtime_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#addtime").after("<span id='addtime_msg' style='color: red'>日期不能为空</span>");
			}
	});







$('#sub').click(function(){
var sno = $("#sno").val();
var drugsid = $("#drugsid").val();
var num = $("#num").val();
var price = $("#price").val();
var total = $("#total").val();
var addtime = $("#addtime").val();
$("#sno_msg").empty();
$("#drugsid_msg").empty();
$("#num_msg").empty();
$("#price_msg").empty();
$("#total_msg").empty();
$("#addtime_msg").empty();
if (sno == "" || sno == null) {
	$("#sno").after("<span id='sno_msg' style='color: red'>销售单号不能为空</span>");
	return false;
}
if (drugsid == "" || drugsid == null) {
	$("#drugsid").after("<span id='drugsid_msg' style='color: red'>药品不能为空</span>");
	return false;
}
if (num == "" || num == null) {
	$("#num").after("<span id='num_msg' style='color: red'>数量不能为空</span>");
	return false;
}
if (price == "" || price == null) {
	$("#price").after("<span id='price_msg' style='color: red'>单价不能为空</span>");
	return false;
}
if (total == "" || total == null) {
	$("#total").after("<span id='total_msg' style='color: red'>小计不能为空</span>");
	return false;
}
if (addtime == "" || addtime == null) {
	$("#addtime").after("<span id='addtime_msg' style='color: red'>日期不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#sno_msg").empty();
$("#drugsid_msg").empty();
$("#num_msg").empty();
$("#price_msg").empty();
$("#total_msg").empty();
$("#addtime_msg").empty();
});


});
