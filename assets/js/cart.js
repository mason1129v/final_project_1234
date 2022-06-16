$(function(){
	$("#cart_btn").click(function(){
		$("#cart_btn").animate({"right":600},500);
        $("#cart_show").animate({"right":0},500);
	});
	$("#cart_close").click(function(){
		$("#cart_show").animate({"right": -600},500);
        $("#cart_btn").animate({"right":0},500);
	});
});