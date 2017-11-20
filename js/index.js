/*头部搜索图标*/
$(".zoom").click(e=>{
	var zoom=$(e.target);
	zoom.next().children().last().children().css("right",0);
});
$(".btn-close").click(e=>{
	var close=$(e.target);
	close.parent().css("right","-380px");
});
/*微信*/
$(".weixin").mouseenter(function(){
	$(".weixin").parent().parent().parent().parent()
		.next().css({
						'top':'145px',
						'left':'68%',
						})
}).mouseleave(function(){
	$(".weixin").parent().parent().parent().parent()
		.next().css({
						'top':'0px',
						'left':'-9999px',
						})
})
/*登录框*/
	$(".yo_login").click(e=>{
		$(e.target).parent().parent().parent().parent().parent()
			.parent().parent().next().children().show();
	});
	$(".login_close").click(e=>{
		$(e.target).parent().parent().parent().parent().hide();
	});
/*轮播左右按钮*/
$(".banner1").mouseenter(function(){
	console.log(1);
	$(".banner1 .hiSlider-btn-prev").css("left","10px");
	$(".banner1 .hiSlider-btn-next").css("right","10px");
}).mouseleave(function(){
	$(".banner1 .hiSlider-btn-prev").css("left","-40px");
	$(".banner1 .hiSlider-btn-next").css("right","-40px");
})
/*促销倒计时*/
function task(){
	var end=new Date("2018/1/1 00:00:00");
	var now=new Date();
	var countDown=document.getElementById("count_down");
	var s=parseInt((end-now)/1000);
	if(s>0){
		var d=parseInt(s/3600/24);
		if(d<10) d="0"+d;
		var h=parseInt(s%(3600*24)/3600);
		h<10&&(h="0"+h);
		var m=parseInt(s%3600/60);
		m<10&&(m="0"+m);
		s%=60;
		s<10&&(s="0"+s);
		countDown.innerHTML="抢购结束还有:"+d+"天 "+h+":"+m+":"+s;
	}else{
		clearInterval(timer);
		timer=null;
		countDown.innerHTML="结束啦！";
	}
}
task();
var timer=setInterval(task,1000);
/**/
$("#tag span").mouseenter(e=>{
	console.log($(e.target));
	$(e.target).addClass('on').siblings().removeClass('on');
	
})












