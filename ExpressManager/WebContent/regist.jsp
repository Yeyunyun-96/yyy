<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>新用户注册</title>
<style>
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

body {
	background: url("img/register_bg.png") no-repeat center;
}

.rg_layout {
	width: 900px;
	height: 550px;
	border: 8px solid #EEEEEE;
	background-color: white;
	margin: auto;
	margin-top: 45px;
}

.rg_left {
	float: left;
	margin: 15px;
}

.rg_center {
	float: left;
	margin: 15px;
}

.rg_right {
	float: right;
	margin: 15px;
}

.rg_left>p:first-child {
	color: #FFD026;
	font-size: 20px;
}

.rg_left>p:last-child {
	color: #A6A6A6;
	font-size: 15px;
}

.rg_right p a {
	color: pink;
}

.td_left {
	width: 100px;
	text-align: right;
	height: 45px;
	color: #696969;
}

.td_right {
	padding-left: 50px;
}

#username, #password, #name, #idNumber, #email, #phone, #checkcode,
	#address {
	width: 250px;
	height: 30px;
	/*设置边框圆角*/
	border-radius: 5px;
	padding-left: 10px;
}

#img_check {
	height: 30px;
	vertical-align: bottom;
}

#btn_sub {
	width: 150px;
	height: 40px;
	background-color: #FFD026;
	border: 1px solid #FFD026;
	margin: 15px;
}
</style>

</head>
<body
	style="background-image: url(${pageContext.request.contextPath}/image/timg.jpg); background-repeat:no-repeat; -moz-background-size: 80% 80%; background-size: 100%;">
	<div class="rg_layout">
		<div class="rg_left">
			<p>新用户注册</p>
			<p>USER REGISTER</p>
		</div>

		<div class="rg_center">
			<div class="rg_form"> <!-- onsubmit='return alert("注册成功！")' -->
				<form action="${pageContext.request.contextPath}/member/regist.do"
					id="form" method="post">
					<table>
						<tr>
							<td class="td_left"><label for="username">用户名</label></td>
							<td class="td_right"><input type="text" name="username"
								id="username" placeholder="请输入用户名"><span id="s_username"></span></td>
						</tr>

						<tr>
							<td class="td_left"><label for="password">密码</label></td>
							<td class="td_right"><input type="password" name="password"
								id="password" placeholder="请输入密码"><span id="s_password"></span></td>
						</tr>

						<tr>
							<td class="td_left"><label for="email">Email</label></td>
							<td class="td_right"><input type="email" name="email"
								id="email" placeholder="请输入邮箱"><span id="s_email"></span></td>
						</tr>

						<tr>
							<td class="td_left"><label for="name">姓名</label></td>
							<td class="td_right"><input type="text" name="name"
								id="name" placeholder="请输入姓名"><span id="s_name"></span></td>
						</tr>

						<tr>
							<td class="td_left"><label for="tel">手机号</label></td>
							<td class="td_right"><input type="text" name="phone"
								id="phone" placeholder="请输入手机号"><span id="s_phone"></span></td>
						</tr>

						<tr>
							<td class="td_left"><label>性别</label></td>
							<td class="td_right"><input type="radio" name="sex"
								value="男" checked> 男 <input type="radio" name="sex" value="女">
								女</td>
						</tr>

						<tr>
							<td class="td_left"><label for="IDnumber">身份证号</label></td>
							<td class="td_right"><input type="text" name="idNumber"
								id="idNumber" placeholder="请输入身份证号"><span id="s_idNumber"></span></td>
						</tr>
						<tr>
							<td class="td_left"><label for="IDnumber">住址</label></td>
							<td class="td_right"><input type="text" name="address"
								id="address" placeholder="请输入住址"><span id="s_address"></span></td>
						</tr>
						<tr>
							<td class="td_left"><label for="checkcode">验证码</label></td>
							<td class="td_right">
								<input type="text" name="checkcode1" id="checkcode1" placeholder="请输入验证码"> 
								<img id="checkimg"name="image"
								src="${pageContext.request.contextPath}/pictureCheckCode"
								style="margin-top: 1px;"> 
								<input type="button"value="看不清? 换一张." onclick="checkCode()">
								<font color="red">${imageMess}</font>
							</td>
						</tr>

						<tr>
							<td colspan="2" align="center"><input id="btn_sub"
								type="submit" value="注册"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>

		<div class="rg_right">
			<P>已有账号？</P>
			<p>
				<a href="${pageContext.request.contextPath}/login.jsp">立即登陆</a>
			</p>
		</div>

	</div>

	<script>
		//校验用户名格式
		function checkUsername() {
			var username = document.getElementById("username").value;

			//定义正则表达式，设置用户名格式为6到12位的字符
			var reg_username = /^\w{6,12}$/;

			var flag = reg_username.test(username);

			//获取username的span对象
			var s_username = document.getElementById("s_username");
			//判断值是否符合设置的正则表达式格式
			if (flag) {
				s_username.innerHTML = "<img src='${pageContext.request.contextPath}/image/gou.jpg' width='30px'>";
			} else {
				s_username.innerHTML = "请输入6位数字或字母的用户名";
			}
			return flag;
		}

		//校验密码格式
		function checkPassword() {
			var password = document.getElementById("password").value;

			//定义正则表达式，设置邮箱的正确格式
			var reg_password = /^\w{6,12}$/;

			var flag = reg_password.test(password);

			//获取passwo rd的span对象
			var s_password = document.getElementById("s_password");
			//判断值是否符合设置的正则表达式格式
			if (flag) {
				s_password.innerHTML = "<img src='${pageContext.request.contextPath}/image/gou.jpg' width='30px'>";
			} else {
				s_password.innerHTML = "请输入正确6位格式的密码";
			}
			return flag;
		}
		
		
		//验证邮件格式
		function checkemail() {
			var email = document.getElementById("email").value;

			//定义正则表达式，设置用户名格式为6到12位的字符
			var reg_mail = /(\S)+[@]{1}(\S)+[.]{1}(\w)+/;
		

			var flag = reg_mail.test(email);

			//获取username的span对象
			var s_email = document.getElementById("s_email");
			//判断值是否符合设置的正则表达式格式
			if (flag) {
				s_email.innerHTML = "<img src='${pageContext.request.contextPath}/image/gou.jpg' width='30px'>";
			} else {
				s_email.innerHTML = "请输入正确邮箱格式";
			}
			return flag;
		}
		
		
		//验证姓名格式
		function checkname() {
			var name = document.getElementById("name").value;

			//定义正则表达式，设置用户名格式为6到12位的字符
			//var reg_name = /^\w{2,4}$/;
		
			if (name == null || name == "") {
				var flag = false;
			}else{
				var flag = true;
			}

		/* 	//var flag = reg_name.test(name); */

			//获取username的span对象
			var s_name = document.getElementById("s_name");
			//判断值是否符合设置的正则表达式格式
			if (flag) {
				s_name.innerHTML = "<img src='${pageContext.request.contextPath}/image/gou.jpg' width='30px'>";
			} else {
				s_name.innerHTML = "请输入正确姓名";
			}
			return flag;
		}
		
		
		
		//验证手机号格式
		function checkphone() {
			var phone = document.getElementById("phone").value;

			//定义正则表达式，设置用户名格式为6到12位的字符
			var reg_phone =/^[1][3,4,5,7,8][0-9]{9}$/;

			var flag = reg_phone.test(phone);

			//获取username的span对象
			var s_phone = document.getElementById("s_phone");
			//判断值是否符合设置的正则表达式格式
			if (flag) {
				s_phone.innerHTML = "<img src='${pageContext.request.contextPath}/image/gou.jpg' width='30px'>";
			} else {
				s_phone.innerHTML = "请输入正确手机号";
			}
			return flag;
		}
		
		//身份证号
		function checkidNumber() {
			var idNumber = document.getElementById("idNumber").value;

			//定义正则表达式，设置用户名格式为6到12位的字符
			var reg_idNumber = /^[1-9]\d{16}[0-9Xx]$/;

			var flag = reg_idNumber.test(idNumber);

			//获取username的span对象
			var s_idNumber = document.getElementById("s_idNumber");
			//判断值是否符合设置的正则表达式格式
			if (flag) {
				s_idNumber.innerHTML = "<img src='${pageContext.request.contextPath}/image/gou.jpg' width='30px'>";
			} else {
				s_idNumber.innerHTML = "请输入正确18位身份证号";
			}
			return flag;
		}
		
		//验证住址address
		function checkaddress() {
			var address = document.getElementById("address").value;

			//定义正则表达式，设置用户名格式为6到12位的字符
			var reg_address = /^\w{6,12}$/;
		
			if (address == null || address == "") {
				var flag = false;
			}else{
				var flag = true;
			}
			//var flag = reg_address.test(address);

			//获取username的span对象
			var s_address = document.getElementById("s_address");
			//判断值是否符合设置的正则表达式格式
			if (flag) {
				s_address.innerHTML = "<img src='${pageContext.request.contextPath}/image/gou.jpg' width='30px'>";
			} else {
				s_address.innerHTML = "请输入地址";
			}
			return flag;
		}

		//绑定离焦事件
		document.getElementById("username").onblur = checkUsername;//等号右边要传入对象，所以不能写checkUsername()
		document.getElementById("password").onblur = checkPassword;//等号右边要传入对象，所以不能写checkPassword()
		document.getElementById("email").onblur = checkemail;
		document.getElementById("name").onblur = checkname;
		document.getElementById("phone").onblur = checkphone;
		document.getElementById("idNumber").onblur = checkidNumber;
		document.getElementById("address").onblur = checkaddress;
		//校验表单提交
		document.getElementById("form").onsubmit = function() {
			/* if(checkUsername() && checkPassword()&&checkemail()&&checkname()&&checkphone()&&checkidNumber()&&checkaddress()){
				return false;
			}else{
				return alert("成功");
			} */
			return checkUsername() && checkPassword()&&checkemail()&&checkname()&&checkphone()&&checkidNumber()&&checkaddress();
		}
		//重新加载验证码
		function checkCode() {

			document.getElementById("checkimg").src = "${pageContext.request.contextPath}/pictureCheckCode?time="
					+ new Date().getTime();
		}

		/* function success() {
			alert("注册成功");
			return true;
		} */
	</script>
</body>

</html>