<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="icon" href="img/logo.png" type="image/x-icon" /> 
<link rel="shortcut icon" href="img/logo.png" type="image/x-icon" />
<title>冰山象棋</title>
<script src="js/jquery-1.12.4.js"></script>
<link href="css/zzsc.css" type="text/css" rel="stylesheet" />
<script type="text/javascript">
	$(function(){
		
		$("#again").click(function(){
			alert(1);
			location.reload();
		});
	});
 </script>
</head>
<body>
<audio autoplay="autoplay" loop="loop" preload="auto" src="mp3/music.mp3" type="audio/wav"></audio>
<div class="box" id="box">
	<div class="chess_left">
		<canvas id="chess">对不起，您的浏览器不支持HTML5，请升级浏览器至IE9、firefox或者谷歌浏览器！</canvas>
		<audio src="audio/click.wav" id="clickAudio" preload="auto"></audio>
		<!--<audio src="audio/check.wav" id="checkAudio" preload="auto"></audio>-->
		<audio src="audio/select.wav" id="selectAudio" preload="auto"></audio>
		<div>
			<div class="bn_box" id="bnBox">
				<input type="button" name="offensivePlay" id="tyroPlay" value="新手水平" />
				<input type="button" name="offensivePlay" id="superPlay" value="中级水平" />
                <input type="button" name="button" id="again" value="再来一局" />
				
			<!--<input type="button" name="offensivePlay" id="offensivePlay" value="先手开始" />
			<input type="button" name="defensivePlay" id="defensivePlay" value="后手开始" />-->
			
				<input type="button" name="regret" id="regretBn" value="悔棋" />
				<input type="button" name="billBn" id="billBn" value="棋谱" class="bn_box" />
				<input type="button" name="stypeBn" id="stypeBn" value="换肤" />
			</div>
		</div>
	</div>
	<div class="chess_right" id="chessRight">
		<select name="billList" id="billList">
		</select>
		<ol id="billBox" class="bill_box">
		</ol>
	</div>
	<div id="moveInfo" class="move_info"> </div>
</div>
<script src="js/common.js"></script> 
<script src="js/play.js"></script> 
<script src="js/AI.js"></script> 
<script src="js/bill.js"></script> 
<script src="js/gambit.js"></script>
</body>
</html>