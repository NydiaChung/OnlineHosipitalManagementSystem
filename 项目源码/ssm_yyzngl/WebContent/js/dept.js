$(function() {

$("#deptname").blur(
		function() {
			$("#deptname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#deptname").after("<span id='deptname_msg' style='color: red'>科室名称不能为空</span>");
			}
	});







$('#sub').click(function(){
var deptname = $("#deptname").val();
$("#deptname_msg").empty();
if (deptname == "" || deptname == null) {
	$("#deptname").after("<span id='deptname_msg' style='color: red'>科室名称不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#deptname_msg").empty();
});


});
