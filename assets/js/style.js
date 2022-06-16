/*-------浮出登入框動畫--------*/
$(function(){
	$("#bg").hide();
	$("#click").click(function(){
		
	$("#bg").fadeIn(200);
	});
	$("#login").click(function(){
	$("#bg").fadeOut(300);
	});
	$("#signin").click(function(){
		$("#bg").fadeOut(300);
		});

});

/*-------登入註冊滑動--------- */

$(function(){
	$('dd[id !="acc1"]').css("width","0px");
	$("a").click(function(){
		if(!$(this).hasClass("currentBtn")){
		$(".current").animate({"width":"0px"},300);
		$($(this).attr("href")).animate({"width":"500px"},300);
		$("dd").removeClass();
		$($(this).attr("href")).addClass("current");
		$("a").removeClass();
		$(this).addClass("currentBtn");
	}
		return false;
	});
});

