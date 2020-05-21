$(function() {

$("#bannername").blur(
		function() {
			$("#bannername_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#bannername").after("<span id='bannername_msg' style='color: red'>主题名称不能为空</span>");
			}
	});







$('#sub').click(function(){
var bannername = $("#bannername").val();
$("#bannername_msg").empty();
if (bannername == "" || bannername == null) {
	$("#bannername").after("<span id='bannername_msg' style='color: red'>主题名称不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#bannername_msg").empty();
});


});
