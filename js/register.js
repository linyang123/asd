/*验证用户名是否存在*/
function check_uname(){
	//1、获取 uname 的值
	var uname=$("uname").value;
	//2、验证 uname 是否为空，如果为空，给出提示，否则 验证用户名是否存在
	if(uname == ""){
		$("uname_show").innerHTML="用户名不能为空";
		$("uname_show").style.color="red";
	}else{
		//AJAX验证用户名称是否存在
		//1、获取xhr对象
		var xhr = getXhr();
		//2、创建请求
		var url="../data/check_uname.php?uname="+uname;
		xhr.open("get",url,true);
		//3、设置回调函数
		xhr.onreadystatechange=function(){
			if(xhr.readyState==4 && xhr.status==200){
				//获取响应数据
				var resText = xhr.responseText;
				//将响应数据显示在 uname-show
				$("uname_show").innerHTML=resText;
			}
		}
		//4、发送请求
		xhr.send(null);
	}
}