<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/pic009.jpg);
	background-color: #000000;
}
	//背景
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		$('#poem-txt').fadeIn('slow');
		$(clickedObj).animate({
			width : '10px',
			opacity : '0.2',
			left : '1800px',
			top : '100px'
		}, 12000);
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}//点击触发功能
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		
		$('#poem-txt').animate({
			bottom : '100px',
			right : '100px'
		}, 18000);
		

	}
</script>
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
<iframe frameborder="0" border="0" marginwidth="0" marginheight="0" width=50% height=80 src="https://music.163.com/outchain/player?type=2&id=1346388458&auto=1&height=66" autoplay="autoplay"></iframe>
	//网易云音乐 实现自动播放功能
	<audio id="intr" controls="controls"
		src="/static/media/introduction.mp3" autoplay="autoplay"></audio>
		//流浪地球介绍音频
	<audio id="poem" src="/static/media/poem(new).mp3"
		preload="auto"></audio>
		//诗词音频
	<span id="firstline" style="font-size: 26px; color: white"><br />大家好，我是软工7班学生刘家烙，我借助了导师郭鹏的原代码，修改设计并实现一个“<span
		style="font-size: 38px; color: red">流浪地球</span>”的漂亮网页！ 欢迎大家观赏,谢谢！
	</span>
		//网页介绍文本
	
	<div id="poem-txt"
		style="display: none; font-size: 22px; color: orange; position:absolute; left :10px;top:500px" >
		《诗词版"流浪地球"》<br /> <span style="font-size: 18px; color: tan">
			-郭鹏 </span><br /> <br /> 西风吹皱东方河，万年地球白发多。 <br /> 流浪星际家何去，满船清梦出银河。
	</div>
		//诗词文本
	<marquee direction="left" style=" font-size: 25px; color: tan;position:absolute;right:100px;top:140px;">
	
	我知道已被忘却&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  
	流浪的航程太长太长&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	但那一时刻要叫我一声啊&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	当东方再次出现霞光<br />
	我知道已被忘却&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	启航的时代太远太远&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	但那一时刻要叫我一声啊&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	当人类又看到了蓝天&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br /> 
	我知道已被忘却&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	太阳系的往事太久太久&nbsp; &nbsp; &nbsp; &nbsp;&thinsp;
	但那一时刻要叫我一声啊&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
	当鲜花重新挂上枝头&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
	希望是这个时代像钻石一样珍贵的东西 
</marquee>
		//文本


	<img src="/static/imgs/earth2.png"
		style="position: absolute; left: 0px; bottom: 0px; width: 1000px"
		onclick="run(this);return false" />
	<div id="moviebox" style="margin-top: 0px; display: none"
		align="center">
	<video width="960" height="720" controls>
  <source src="/static/media/1.mp4" type="video/mp4" >
  <object data="/static/media/1.mp4" width="960" height="720">
  </object> 
</video>
	</div>
</body>
</html>