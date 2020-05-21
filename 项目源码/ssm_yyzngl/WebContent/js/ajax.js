//table增加一个新行 clone已存在的第一行
$(function() {
	$("#btnAdd").click(
			function() {
				var num = $("#hidNum").val(); //
				num = parseInt(num);
				num++; // 点击自加
				$("#hidNum").val(num); // 重新赋值
				$("#tRow0").clone(true).attr("id", "tRow" + num).appendTo(
						"#tblData"); // clone tr 并重新给定ID,装到table
				$("#tRow" + num + " td").each(
						function() {// 循环克隆的新行里面的td
							$(this).find("input[type='text']").val(""); // 清空克隆行的数据
							// 修改相关属性
							$(this).find("input[name='num0']").attr("id",
									"num" + num).attr("name", "num" + num);
						});
			});
});

$(function() {
	$("#btnSave").click(function() {
		var rowid = $(this).parent().parent().attr("id");
		var objT0 = $(this).closest("tr").find(".m0").val();// 找到同行的t0元素
		var objT2 = $(this).closest("tr").find(".m1").val();// 药品id
		var objT4 = $(this).closest("tr").find(".m2").val();// 药品数量
		var objT5 = $(this).closest("tr").find(".m4").val();// 销售单号
		var objTx = $(this).closest("tr").find(".m3");// 明细单ID
		var loc = $("input[name='basepath']").val();
		var str = "" + objT2 + "," + objT4 + "," + objT5;
		if (objT4 == '') {
			alert("请输入数量");
		} else if (objT2 == '') {
			alert("请选择药品");
		} else {
			$.ajax({
				type : "POST",
				url : loc + "ajax/save.action?str=" + str,
				contentType : "application/json; charset=utf-8",
				dataType : "text",
				success : function(json) {
					var d = json;
					d = d.replace('"', '');
					d = d.replace('"', '');
					objTx.val(d);
				},
				error : function() {
					alert("ajax请求发生错误3");
				}
			});
		}
	});
});
$(function() {
	$('#deptid').click(function() {

	})

});