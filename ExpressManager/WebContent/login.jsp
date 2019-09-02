<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工登录</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrapValidator.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/base.css" media="screen">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/button.css" media="screen">
 <style type="text/css">
 * {
  margin: 0;
  padding: 0;
  list-style: none;
 }
 body {
  overflow: hidden;
 }
 #bg_wrap {
  width: 100%;
  height: 100%;
  position: absolute;
  left: 0;
  top: 0;
  overflow: hidden;
 }
/*  #bg_wrap div {
  width: 100%;
  height: 100%;
  position: absolute;
  left: 0;
  top: 0;
  opacity: 0;
  transition: opacity 5s;
 } */
/*  #bg_wrap div:nth-of-type(1) {
  opacity: 1;
 } */
 #Login {
  width: 272px;
  height: 300px;
  margin: 200px auto;
 }
 #Login .move {
  position: absolute;
  top: -100px;
  z-index: 999;
 }
 #Login h3 {
  width: 270px;
  font-size: 30px;
  font-weight: 700;
  color: #fff;
  font-family: '微软雅黑';
  text-align: center;
  margin-bottom: 30px;
  cursor: move;
 }
 #Login input.text {
  width: 270px;
  height: 42px;
  color: #fff;
  background: rgba(45, 45, 45, 0.15);
  border-radius: 6px;
  border: 1px solid rgba(255, 255, 255, 0.15);
  box-shadow: 0 2px 3px 0 rgba(0, 0, 0, 1.0) inset;
  text-indent: 10px;
 }
 #Login input.btn {
  background: #ef4300;
  width: 272px;
  height: 44px;
  border-radius: 6px;
  color: #fff;
  box-shadow: 0 15px 30px 0 rgba(255, 255, 255, 0.25) inset, 0 2px 7px 0 rgba(0, 0, 0, 0.2);
  border: 0;
  text-align: center;
 }
 input::-webkit-input-placeholder {
  color: #fff;
 }
 img{
  opacity: 0.7;
   -moz-opacity： 0.7;
   filter:alpha(opacity=70);
 }
 .blur {

   filter: blur(6px);

  -webkit-filter: blur(6px);  /* chrome, opera */

  -ms-filter: blur(6px);

  -moz-filter: blur(6px);

}
 .re {
 	
    position: fixed;
    bottom: 85%;
    left: 90%;
}
 .check1 {
 	
    position: fixed;
    bottom: 20%;
    left: 50%;
}
#see{
 	 bottom: 20%;
    left: 30%;
}
#btn1 {
  
  width: 65px;
  height: 40px;
 
 }
 #btn2 {
  
  width: 65px;
  height: 40px;
 
 }
 
 
 .tl-price-input{
    width: 90px;
    height: 30px;
    border: 1px solid #ccc;
    padding: 7px 0;
    background: #F4F4F7;
    border-radius: 3px;
    padding-left:10px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
}
.tl-price-input:focus{
    border-color: #66afe9;
    outline: 0;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
}

 </style>
</head>

<body>

	<div id="bg_wrap" class="blur">
		<div>
			<img src="${pageContext.request.contextPath}/image/4.jpg" width="100%" height="100%">
		</div>
	</div>








	<form action="${pageContext.request.contextPath}/main/login.do"
		method="post" onsubmit="return checkForm()">

		<div id="Login">

			<h3 id="title" class="move">User Login</h3>

			<input type="text" class="text move" value="${userName}"
				name="username" id="userName" placeholder="UserName" /> 
				
				
			<input type="password" placeholder="PassWord" value="${password}"
				name="password" id="password" class="text move" />

			<input type="submit" value="Sign in" class="btn move" id="submit" />
          
          <div class="check1">
          <font color="red" size="5px" id="login_err">${error}</font>
			<table>
				<tr>
					<td>
				<input type="text" class="tl-price-input" value="${checkCode}" placeholder="验证码"
					name="checkCode1" id="checkCode1" style="border:1px;background: rgba(0,0,0,.075);">
					</td>
					<td>
			    <img id="checkimg"
					name="image"
					src="${pageContext.request.contextPath}/pictureCheckCode">
					</td>
					<td>
			    <input type="button" id="see" class="button red shine" value="看不清? 换一张。" onclick="checkCode()" />
				</td>
				</tr>
				</table>
			</div>

			


		</div>

		

		<div class="re">
			<table>
				<tr>
					<td><input id="btn2" class="button gray shine" type="button"
						value="注册" onclick="regist()" /></td>
					
				</tr>
			</table>
		</div>


	</form>









	<script type="text/javascript">
	
	
	
	
	/*背景渐变*/
	 /*function(){} 匿名函数
	  ()()   IIFE匿名函数立刻执行，函数自执行体*/
	 (function() {
	  var timer = null; //声明定时器
	  var oImg = document.querySelectorAll('#bg_wrap div') //h5最新元素获取写法获取到的是一组元素
	  //querySelector获取单个元素的 兼容ie8
	  var len = oImg.length; //3
	  var index = 0;
	  timer = setInterval(function() {
	   oImg[index].style.opacity = 0;
	   index++;
	   // if(index>=3){
	   // index=0;
	   // }
	   index %= len; //index=index%len求模取余 0%3=0; 1%3=1; 2%3=2; 3%3=0;
	   oImg[index].style.opacity = 1;
	  }, 2000);
	 })();
	 // 重力模拟弹跳系统
	 (function() {
	  /*
	  改变定位元素的top值
	  达到指定位置之后进行弹跳一次
	  多个元素一次运动
	  动画序列*/
	  var oMove = document.querySelectorAll('.move');
	  var oLen = oMove.length;
	  var timer = null;
	  var timeout = null;
	  var speed = 3; //移动距离
	  move(oLen - 1);
	  function move(index) {
	   if (index < 0) {
	    clearInterval(timer); //清除循环定时器
	    clearTimeout(timeout); //清除延时定时器
	    return; //终止函数
	   }
	   var endTop = 130 + (index * 60); //根据下标计算endTop值
	   timer = setInterval(function() {
	    speed += 3;
	    var T = oMove[index].offsetTop + speed; //设置每一次的top值
	    if (T > endTop) {
	     T = endTop;
	     speed *= -1 //取反，让移动距离变为负数
	     speed *= 0.4;
	     //慢慢停下来
	    }
	    oMove[index].style.top = T + 'px';
	   }, 20);
	   timeout = setTimeout(function() {
	    clearInterval(timer);
	    index--;
	    console.log(9);
	    move(index);
	    console.log(index);
	   }, 900) //过900毫秒之后再执行方法里的代码
	  }
	 })()
	
	
	 	function checkForm() {
			var userName = document.getElementById("userName").value;
			var password = document.getElementById("password").value;
			var checkCode = document.getElementById("checkCode1").value;
			if (userName == null || userName == "") {
				document.getElementById("login_err").innerHTML = "用户名不能为空";
				return false;
			}
			if (password == null || password == "") {
				document.getElementById("login_err").innerHTML = "密码不能为空";
				return false;
			}
			if (checkCode == null || checkCode == "") {
				document.getElementById("login_err").innerHTML = "验证码不能为空";
				return false;
			}
			return true;
		}
		function regist() {
			window.location.href = "${pageContext.request.contextPath}/regist.jsp";
		}

		/* 重新加载验证码 */
		 function checkCode() {
			document.getElementById("checkimg").src = "${pageContext.request.contextPath}/pictureCheckCode?time="
					+ new Date().getTime();
		} 
		
		
		
		
	</script>

</body>
</html>