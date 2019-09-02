<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Express物流查询</title>
<link rel="stylesheet" href="${APP_PATH }/css/cityselect.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${APP_PATH }/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrapValidator.css">
<script type="text/javascript" src="${APP_PATH }/js/jquery-3.2.1.min.js"></script>
<script src="${APP_PATH }/js/bootstrap.min.js"></script>
<style type="text/css">
.demo {
	width: 220px;
	margin: 50px auto;
}

.demo input {
	padding: 12px 18px;
}
/* .navbar-brand{
    color: black!important;
} 
.navbar-inverse{
background-color : #acf6ef !important;
} */
</style>

</head>
<body
	style="background-image: url(${APP_PATH }/image/backg.jpg);-moz-background-size:100% 100%; background-size:100% 100%;">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-inverse navbar-fixed-top"
					role="navigation">
				<div class="container">
					<div class="navbar-header">
						<a class="navbar-brand " href="#">五娃物流</a>
					</div>
					<div id="navbar" class="navbar-right">
						<a class="navbar-brand" data-toggle="modal" data-target="#myModal">${member.name}</a>
						<a class="navbar-brand" data-toggle="modal" data-target="#myModal1">修改信息</a>
					    <a class="navbar-brand"href="javascript:logout()">安全退出</a>
					</div>
				</div>
				</nav>
			</div>			
		</div>
		
		<div style="margin: 50px 250px 250px 250px;color: white;">
		<marquee  onmouseover=this.stop() onmouseout=this.start()><h4><i>公告：${notice}</i></h4></marquee>
		</div>
		
		<div style="background-color: rgba(246, 246, 246, 0.7);">
			<div style="text-align: center; margin: 200px auto auto 20px;">
				<h2>新闻热点</h2>
				<br> 
				<a href="http://baijiahao.baidu.com/s?id=1637724916023463292"
					target="_blank">80、90后创业者参与讨论！企业家论坛点亮大学生创业梦</a>
					<br> 
					<a href="http://baijiahao.baidu.com/s?id=1637725703886129481"
					target="_blank">Facebook发币10天BTC暴涨56%，FB发币对币圈影响究竟有多大？</a>
					<br> 
					<a href="http://baijiahao.baidu.com/s?id=1637749396735305981"	
					target="_blank">一周回顾丨教育行业大事件（06.23-06.29</a>
					<br> 
					<a href="https://news.baidu.com/" target="_blank">进入百度新闻</a>
					<br> <br> <br>
				<h3>在下面的输入框中输入所查询的物流单号：</h3>
			</div>
			<div class="demo" style="background-color: #f6f6f6;">
				<!-- 在输入框加入id -->
				<form id="form0" action="showexp.do" method="post">
					<input id="expid" name="expid" type="text" placeholder="请输入物流单号"
						style="width: 220px"><br>
				</form>
				<font color="red" id="msg">${msg}</font>
			</div>
			<div class="demo">
				<center>
					<button onclick="fmsub()"
						style="color: #fff; background-color: #4B95FF; border-color: #2a75fe; border-radius: 5px; height: 45px; width: 100%">查询快递</button>
				</center>
			</div>
			<div class="demo">
				<center>
					<button
						onclick="javascript:window.location='${pageContext.request.contextPath}/addorder.jsp'"
						style="color: #fff; background-color: #4B95FF; border-color: #2a75fe; border-radius: 5px; height: 45px; width: 100%">我要发快递</button>
				</center>
			</div>
		</div>
		<div style="text-align: center;">
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br>
			<!-- 模态框（Modal）个人信息 -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">个人信息</h4>
						</div>
						<div class="modal-body" style="height: 350px;">
							<!--用表单和表格显示提示框-->
							<form method="post" action="/user/add">
								<table align="center" class="table">
									<tr>
										<td>用户名：</td>
										<td><p>${member.username}</p></td>
									</tr>
									<tr>
									<tr>
										<td>姓名：</td>
										<td><p>${member.name}</p></td>
									</tr>
									<tr>
										<td>性别：</td>
										<td><p>${member.sex}</p></td>
									</tr>
									<tr>
										<td>电话：</td>
										<td><p>${member.phone}</p></td>
									</tr>
									<tr>
										<td>身份证号：</td>
										<td><p>${member.idNumber}</p></td>
									</tr>
									<tr>
										<td>邮箱：</td>
										<td><p>${member.email}</td>
									</tr>
									<tr>
										<td>住址：</td>
										<td><p>${member.address}</td>
									</tr>

								</table>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- 模态框（Modal）修改信息 -->
			<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">个人信息修改</h4>
						</div>
						<div class="modal-body" style="height: 420px;">
							<!--用表单和表格显示提示框-->
							<form method="post"
								action="${pageContext.request.contextPath}/member/updatemember.do">
								<table align="center" class="table">
									<tr>
										<td>用户名：</td>
										<td><input type="text" id="id" value="${member.username}"
											name="id"  readonly ="readonly"></td>
									</tr>
									<tr>
										<td>密码：</td>
										<td><input type="text" name="password"
											value="${member.password}"></td>
									</tr>
									<tr>
										<td>姓名：</td>
										<td><input type="text" id="name" value="${member.name}"
											name="name" readonly ="readonly"></td>
									</tr>
									<tr>
										<td>性别：</td>
										<td><input type="radio" name="sex" value="男"
											checked>男 &nbsp; <input type="radio" name="sex"
											value="女">女</td>
									</tr>
									<tr>
										<td>身份证号：</td>
										<td><input type="text" name="idNumber" value="${member.idNumber}"
											id="idNumber" readonly ="readonly">
									</tr>

									<tr>
										<td>移动电话：</td>
										<td><input type="text" id="phone" value="${member.phone}"
											name="phone"></td>
									</tr>
									<tr>
										<td>Email：</td>
										<td><input type="text" id="email" value="${member.email}"
											name="email">
										</td>
									</tr>
									<tr>
										<td>住址：</td>
										<td><input type="text" id="adress" value="${member.address}"
											name="address">
										</td>
									</tr>
								</table>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">关闭</button>
									<button type="submit" class="btn btn-primary" onclick="updateSuccess()">提交</button>
								</div>
							</form>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<script type="text/javascript">
				function fmsub() {
					var expid = $("#expid").val();
					if (expid == '') {
						$("#msg").html("物流单号不能为空");
						return;
					}
					$("#form0").submit();
				}
				function logout() {
					if (confirm('您确定要退出系统吗?')) {
						window.location.href = "${pageContext.request.contextPath}/main/staff.do";
					}
				}
				function updateSuccess(){
					alert("修改成功！")
				}
			</script>

</body>
</html>