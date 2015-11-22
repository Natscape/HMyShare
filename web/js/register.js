$(function() {
	$("#submit").click(function() {
		
		$.ajax({
			url : "user-registUser",
			type : "POST",
			data : {
				"user.name" : $("#username").val(),
				"user.phone" : $("#userphone").val(),
				"user.password" : $("#password").val()
			},
			dataType : "json",
			success : function(data) {
				$("#username").html("");
				if(data.registedMessage=="注册成功"){
					location.href="/index.jsp";
				}else{
					alert(data.registedMessage);
				}
			}
		});
	});
});