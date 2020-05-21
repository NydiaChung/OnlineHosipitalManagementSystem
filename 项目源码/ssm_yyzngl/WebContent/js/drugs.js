$(function() {

$("#drugsname").blur(
		function() {
			$("#drugsname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#drugsname").after("<span id='drugsname_msg' style='color: red'>药品名称不能为空</span>");
			}
	});

$("#price").blur(
		function() {
			$("#price_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#price").after("<span id='price_msg' style='color: red'>销售价格不能为空</span>");
			}
	});

$("#productor").blur(
		function() {
			$("#productor_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#productor").after("<span id='productor_msg' style='color: red'>生产厂商不能为空</span>");
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
var drugsname = $("#drugsname").val();
var price = $("#price").val();
var productor = $("#productor").val();
var memo = $("#memo").val();
$("#drugsname_msg").empty();
$("#price_msg").empty();
$("#productor_msg").empty();
$("#memo_msg").empty();
if (drugsname == "" || drugsname == null) {
	$("#drugsname").after("<span id='drugsname_msg' style='color: red'>药品名称不能为空</span>");
	return false;
}
if (price == "" || price == null) {
	$("#price").after("<span id='price_msg' style='color: red'>销售价格不能为空</span>");
	return false;
}
if (productor == "" || productor == null) {
	$("#productor").after("<span id='productor_msg' style='color: red'>生产厂商不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#drugsname_msg").empty();
$("#price_msg").empty();
$("#productor_msg").empty();
$("#memo_msg").empty();
});


});
