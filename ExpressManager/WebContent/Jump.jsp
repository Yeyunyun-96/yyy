<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
<title>员工登录</title>
<script type="text/javascript">
var t=5;//设定跳转的时间
setInterval("refer()",1000); //启动1秒定时
function refer(){
	if(t==0){
		location="${pageContext.request.contextPath}/login.jsp"; //#设定跳转的链接地址
	}
	document.getElementById('show').innerHTML=""+t; // 显示倒计时
	t--; // 计数器递减
		//本文转自：
}
</script>
<style>
        #show{
            font-size: 100px;
            color:  #84AF9B;
            font-weight: bold;
        }
    </style>
</head>
<body>
	<div class="ele-container">		
			<div class="ele-wrapper">
				<span id="show" style="color" ></span>
				<br>
				<div class="ele-tail"></div>
				<div class="ele-body">
					<div class="ele-head">					
						<div class="ele-eyebrows"></div>
						<div class="ele-eyes"></div>
						<div class="ele-mouth"></div>
		      	<div class="ele-fang-front"></div>
						<div class="ele-fang-back"></div>
						<div class="ele-ear"></div>
					</div>
				</div>
				<div class="ele-leg-1 ele-leg-back">
					<div class="ele-foot"></div>
				</div>
				<div class="ele-leg-2 ele-leg-front">
					<div class="ele-foot"></div>
				</div>
				<div class="ele-leg-3 ele-leg-back">
					<div class="ele-foot"></div>
				</div>
				<div class="ele-leg-4 ele-leg-front">
					<div class="ele-foot"></div>
				</div>
			</div>
		</div>


</body>
</html>