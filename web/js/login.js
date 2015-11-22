$(function() {
    $("#submit").click(function() {

        $.ajax({
            url : "user-loginUser",
            type : "POST",
            data : {
                "user.name" : $("#username").val(),

                "user.password" : $("#password").val()
            },
            dataType : "json",
            success : function(data) {
                $("#username").html("");
                if(data.registedMessage=="登陆成功"){
                    location.href="/index.jsp";
                }else{
                    alert(data.registedMessage);
                }
            }
        });
    });
});