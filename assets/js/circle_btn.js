$(function(){
	var count = $("#detail_mpic li").length;
	var current = 1;
	var next = 2;
	var interval = 5000;
	var duration = 1600;
	var timer;
	$("#detail_mpic li:not(:first-child)").hide();
	timer = setInterval(slideTimer, interval);
	function slideTimer(){
			$("#detail_mpic li:nth-child(+"+current+")").fadeOut(duration);
			$("#detail_mpic li:nth-child(+"+next+")").fadeIn(duration);
			current = next;
			next = ++next;
			if (next>count) {
					next = 1;
			}
			$("#circle_btn li a").removeClass("target");
			$("#circle_btn li:nth-child("+ current +") a").addClass("target");
	}
			$("#circle_btn li a").click(function(){
				next = $(this).html();
					clearInterval(timer);
					timer = setInterval(slideTimer, interval);
					slideTimer();
		return false;
	});
});

