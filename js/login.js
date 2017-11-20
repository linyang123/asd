
//模块一:完成用户登录
//1:为登录按钮绑定点击事件
console.log(1);
$("#btn").click(function(e){
    console.log(2);
    //2:阻止事件默认行为,原因:a默认行为
    e.preventDefault();
    //3:获取用户输入用户名和密码
    var n = $("#uname").val();
    var p = $("#upwd").val();
    console.log(3);
    //alert(n+p);
    //4:发送ajax请求
    $.ajax({
        type:"GET",
        url:"../data/login.php",
        data:{uname:n,upwd:p},
        success:function(data){
         //alert(data.code+":"+data.msg);
				 //将用户编号和用户名保存 sess
				 console.log(123);
					if(data.code>0){
						sessionStorage.setItem("uname",n);
						sessionStorage.setItem("uid",data.uid);
						console.log(4);
						var uid=sessionStorage.uid;
						var uname=sessionStorage.uname;
						console.log(sessionStorage);
						$(".yo_loginWinBox").css("display","none");
						$("#login").html("欢迎"+uname).attr("href","product.html");
						$("#register").html("退出").attr("href","#");

						$("#register").click(function(){
							console.log("电机提出");
							$.ajax({
									type:"GET",
									url:"../data/logout.php",
										success:function(){
											console.log("退出成功");
											$("#login").html("登录");
											$("#register").html("注册").attr("href","register.html");
										}
								})
						})
					}else{
						alert("用户名或密码错误");
					}
        },
        error:function(){
            alert("您的网络出现故障，请检查");
        }
    });
    //data/login.php
    //5:接收服务器返回结果
});

//登录
/*	
    $("#btn").click(e=>{
		var uid=sessionStorage.uid;
		console.log(sessionStorage.uid);
			$.post("../data/login.php",{uid})
			.then(()=>{
			  loadUser();
			})
    });
    function loadUser(){
      $.get("../data/hello.php")
          .then(text=>{
          $("#login").html(text);  
        });
    }
    loadUser();
*/