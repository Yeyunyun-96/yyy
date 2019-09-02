<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrapValidator.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

<body>
<!--面包屑导航-->
 <div>
    <ul class="breadcrumb">
   	 	<li><a href="${pageContext.request.contextPath}/adminholle.jsp">首页</a></li>
    	<li class="active">添加员工</li>
	</ul>
</div>  
<div class="container">
	<div class="row clearfix">
		<div class="col-md-6 column"><!-- onsubmit="isPoneAvailable()" -->
			<form class="form-horizontal" action="${pageContext.request.contextPath}/main/addstaff.do" method="post" role="form"  onsubmit="return fmsub()">
			<input type="hidden" name="pt" value="${loginUser.type}">
			    <div class="form-group">				 
					<label for="inputEmail1" class="col-sm-2 control-label">姓名</label>				
					<div class="col-sm-10">
						<input width="80px;" type="text" class="form-control" id="name" name="name"/>		
						<font color="red" id="msgname">${msgname}</font>
					</div>
						
				</div>
			<div class="form-group">
					 <label for="inputEmail2" class="col-sm-2 control-label">电话</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="phone" name="phone"/>
						<font color="red" id="msgphone">${msgphone}</font>
					</div>
				</div>
				
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">密码</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="password" name="password"/>
						<font color="red" id="msgpassword">${msgpassword}</font>
					</div>			
				</div>
				<br><font>${addstaffmsg }</font><br>
				<div class="form-group" style="width: 100%;  text-align: center;">
				 <button type="submit" class="btn btn-success default">添加</button>
				</div>
			</form>
		</div>
		<div class="col-md-6 column">
		</div>
	</div>
</div>
</body>
 <script>
function fmsub(){
	var name = $("#name").val();
	console.log(name);
	var phone = $("#phone").val();
	var password = $("#password").val();
	var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
	if (name == null || name == "") {
		document.getElementById("msgname").innerHTML = "*用户名不能为空";
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
	if (password == null || password == "") {
		document.getElementById("msgpassword").innerHTML = "*密码不能为空";
		return false;
	}
}
</script>
</html>