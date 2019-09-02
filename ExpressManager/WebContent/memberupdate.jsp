<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrapValidator.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

<body>
<!--面包屑导航-->
 <div>
    <ul class="breadcrumb">
   	 	<li><a href="${pageContext.request.contextPath}/adminholle.jsp">首页</a></li>
    	<li><a href="${pageContext.request.contextPath}/member/list.do">客户管理</a></li>
    	<li class="active">信息修改</li>
	</ul>
</div> 

	<div class="container" style="margin-top:17px">
		<div class="row clearfix">
			<div class="col-md-6 column">
				<!-- onsubmit="isPoneAvailable()" -->
				<form class="form-horizontal"
					action="${pageContext.request.contextPath}/member/update.do?id=${member.id}"
					method="post" role="form" onsubmit="return fmsub()">
					<div class="form-group">
						<label for="inputEmail1" class="col-sm-2 control-label">用户名</label>
						<div class="col-sm-10">
							<input width="80px;" type="text" class="form-control"
								id="username" name="username" value="${member.username}" />
							<font color="red" id="msgusername">${msgusername}</font>
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="password"
								name="password" value="${member.password}" />
							<font color="red" id="msgpassword">${msgpassword}</font>
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail1" class="col-sm-2 control-label">姓名</label>
						<div class="col-sm-10">
							<input width="80px;" type="text" class="form-control"
								id="name" name="name" value="${member.name}" />
							<font color="red" id="msgname">${msgname}</font>
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail2" class="col-sm-2 control-label">电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="phone"
								name="phone" value="${member.phone}" onblur="isPoneAvailable()" />
							<font color="red" id="msgphone">${msgphone}</font>	
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail2" class="col-sm-2 control-label">性别</label>
						<div class="col-sm-10">
							<input type="radio" name="sex" value="男" >男 &nbsp;
							<input type="radio" name="sex" value="女">女
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail2" class="col-sm-2 control-label">身份证号</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="idNumber"
								name="idNumber" value="${member.idNumber}"  />
							<font color="red" id="msgidNumber">${msgidNumber}</font>
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="email"
								name="email" value="${member.email}" />
							<font color="red" id="msgemail">${msgemail}</font>
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">住址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="address"
								name="address" value="${member.address}" />
							<font color="red" id="msgaddress">${msgaddress}</font>
						</div>
					</div>
					<div class="form-group" style="width: 100%;  text-align: center;">
					<button type="submit" class="btn btn-success default">确认修改</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script>
function fmsub(){
	var username = $("#username").val();
	var password = $("#password").val();
	var name = $("#name").val();
	console.log(name);
	var idNumber = $("#idNumber").val();
	var phone = $("#phone").val();
	var email = $("#email").val();
	var address = $("#address").val();
	
	var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;//手机号的正则
	//email正则表达
	var reemail=/(\S)+[@]{1}(\S)+[.]{1}(\w)+/;
	var reidNumber 	= /^[1-9]\d{16}[0-9Xx]$/;
	var reidNumber1 = /^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
	var reidNumber2 = /^[1-9]\d{5}\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{2}$/;
	if (username == null || username == "") {
		document.getElementById("msgusername").innerHTML = "*用户名不能为空";
		return false;
	}
	if (password == null || password == "") {
		document.getElementById("msgpassword").innerHTML = "*密码不能为空";
		return false;
	}
	if (name == null || name == "") {
		document.getElementById("msgname").innerHTML = "*姓名不能为空";
		return false;
	}
	if (idNumber == null || idNumber == "") {
		document.getElementById("msgidNumber").innerHTML = "*身份证号不能为空";
		return false;
	}
	/* if ((!reidNumber1.test($("#idNumber").val()))&&(!reidNumber2.test($("#idNumber").val()))) {
	    document.getElementById("msgidNumber").innerHTML = "*请填写正确身份证号";
		return false;
	} */
	if (!reidNumber.test($("#idNumber").val())) {
	    document.getElementById("msgidNumber").innerHTML = "*请填写正确的18位身份证号";
		return false;
	}
	if (phone == null || phone == "") {
		document.getElementById("msgphone").innerHTML = "*手机号码不能为空";
		return false;
	}
	if (!myreg.test($("#phone").val())) {
	    document.getElementById("msgphone").innerHTML = "*请填写正确的11位手机号";
		return false;
	}
	if (email == null || email == "") {
		document.getElementById("msgemail").innerHTML = "*邮箱不能为空";
		return false;
	}
	if (!reemail.test($("#email").val())) {
	    document.getElementById("msgemail").innerHTML = "*请填写正确邮箱号";
		return false;
	}
	if (address == null || address == "") {
		document.getElementById("msgaddress").innerHTML = "*地址不能为空";
		return false;
	}
}

</script>


</html>