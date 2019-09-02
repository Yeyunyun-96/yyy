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
    	<li><a href="${pageContext.request.contextPath}/user/list.do">员工管理</a></li>
    	<li class="active">信息修改</li>
	</ul>
</div> 

	<div class="container" style="margin-top:50px">
		<div class="row clearfix">
			<div class="col-md-6 column">
				<!-- onsubmit="isPoneAvailable()" -->
				<form name="form1" class="form-horizontal"
					action="${pageContext.request.contextPath}/user/insert.do"
					method="post" role="form" onsubmit="return fmsub()">
					<div class="form-group">
						<label for="inputEmail1" class="col-sm-2 control-label">姓名</label>
						<div class="col-sm-10">
							<input width="80px;" type="text" class="form-control"
								id="name" name="name" value="${user.name}" />
							<font color="red" id="msgname">${msgname}</font>
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="password"
								name="password" value="${user.password}" />
							<font color="red" id="msgpassword">${msgpassword}</font>
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail2" class="col-sm-2 control-label">联系方式</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="phone"
								name="phone" value="${user.phone}" />
							<font color="red" id="msgphone">${msgphone}</font>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">我的职位：</label>
						<div class="col-sm-10">
							<select class="form-control" style="width: 300px" id="type"
								name="type" onChange="set_pt(this, this.form.pt);">
								<option value="">请选择...</option>
								<option value="admin" ${'admin员'==user.type?'selected':''}>admin</option>
								<option value="员工" ${'员工'==user.type?'selected':''}>员工</option>
								<option value="上海仓" ${'上海仓'==user.type?'selected':''}>上海仓</option>
								<option value="北京仓" ${'北京仓'==user.type?'selected':''}>北京仓</option>
								<option value="山东仓" ${'山东仓'==user.type?'selected':''}>山东仓</option>
								<option value="浙江仓" ${'浙江仓'==user.type?'selected':''}>浙江仓</option>
								<option value="安徽仓" ${'安徽仓'==user.type?'selected':''}>安徽仓</option>
								<option value="福建仓" ${'福建仓'==user.type?'selected':''}>福建仓</option>
								<option value="江西仓" ${'江西仓'==user.type?'selected':''}>江西仓</option>
								<option value="广东仓" ${'广东仓'==user.type?'selected':''}>广东仓</option>
								<option value="广西仓" ${'广西仓'==user.type?'selected':''}>广西仓</option>
								<option value="海南仓" ${'海南仓'==user.type?'selected':''}>海南仓</option>
								<option value="湖北仓" ${'湖北仓'==user.type?'selected':''}>湖北仓</option>
								<option value="天津仓" ${'天津仓'==user.type?'selected':''}>天津仓</option>
								<option value="河北仓" ${'河北仓'==user.type?'selected':''}>河北仓</option>
								<option value="山西仓" ${'山西仓'==user.type?'selected':''}>山西仓</option>
								<option value="内蒙古仓" ${'内蒙古仓'==user.type?'selected':''}>内蒙古仓</option>
								<option value="宁夏仓" ${'宁夏仓'==user.type?'selected':''}>宁夏仓</option>
								<option value="青海仓" ${'青海仓'==user.type?'selected':''}>青海仓</option>
								<option value="陕西仓" ${'陕西仓'==user.type?'selected':''}>陕西仓</option>
								<option value="甘肃仓" ${'甘肃仓'==user.type?'selected':''}>甘肃仓</option>
								<option value="四川仓" ${'四川仓'==user.type?'selected':''}>四川仓</option>	
								<option value="云南仓" ${'云南仓'==user.type?'selected':''}>云南仓</option>
								<option value="重庆仓" ${'重庆仓'==user.type?'selected':''}>重庆仓</option>
								<option value="吉林仓" ${'吉林仓'==user.type?'selected':''}>吉林仓</option>
								<option value="黑龙江仓" ${'黑龙江仓'==user.type?'selected':''}>黑龙江仓</option>
							</select>
							<font color="red" id="msgtype">${msgtype}</font>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">所属上级：</label>
						<div class="col-sm-10">
							<select class="form-control" style="width: 300px" id="pt"
								name="pt">
								<option value="0">请选择...</option>
							</select>
							<font color="red" id="msgpt">${msgpt}</font>
						</div>
					</div>
					<div class="form-group" style="width: 100%;  text-align: center;">
					<button type="submit" class="btn btn-success defaul" href="${pageContext.request.contextPath}/user/update.do">确认修改</button>
					</div>
				</form>

			</div>
			<div class="col-md-6 column"></div>
		</div>
	</div>
</body>
<script>
//对input中数据进行判断
function fmsub(){
	var name = $("#name").val();
	console.log(name);
	var phone = $("#phone").val();
	var password = $("#password").val();
	var type = $("#type").val();
	var pt = $("#pt").val();
	var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
	if (name == null || name == "") {
		document.getElementById("msgname").innerHTML = "*姓名不能为空";
		return false;
	}
	if (password == null || password == "") {
		document.getElementById("msgpassword").innerHTML = "*密码不能为空";
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
	if (type == 0) {
		document.getElementById("msgtype").innerHTML = "*请输入当前职位";
		return false;
	}
	if (type != "admin") {
		if (pt== 0) {
			document.getElementById("msgpt").innerHTML = "*请输入所属上级";
			return false;
		}
	}	
}


cities = new Object();
cities['admin']
cities['员工'] = new Array('北京仓', '山东仓', '浙江仓', '安徽仓', '云南仓', '江西仓', '广东仓', '广西仓', '海南仓',
	'湖北仓', '天津仓', '河北仓', '山西仓', '内蒙古仓', '吉林仓', '青海仓', '陕西仓', '甘肃仓', '重庆仓', '四川仓', '黑龙江仓','上海仓');
cities['北京仓'] = new Array('admin');
cities['山东仓'] = new Array('admin');
cities['浙江仓'] = new Array('admin');
cities['安徽仓'] = new Array('admin');
cities['云南仓'] = new Array('admin');
cities['江西仓'] = new Array('admin');
cities['广东仓'] = new Array('admin');
cities['广西仓'] = new Array('admin');
cities['海南仓'] = new Array('admin');
cities['湖北仓'] = new Array('admin');
cities['河北仓'] = new Array('admin');
cities['山西仓'] = new Array('admin');
cities['内蒙古仓'] = new Array('admin');
cities['吉林仓'] = new Array('admin');
cities['青海仓'] = new Array('admin');
cities['陕西仓'] = new Array('admin');
cities['甘肃仓'] = new Array('admin');
cities['重庆仓'] = new Array('admin');
cities['四川仓'] = new Array('admin');
cities['黑龙江仓'] = new Array('admin');
cities['上海仓'] = new Array('admin');
function set_pt(type, pt) {
	var pv, cv;
	var i, ii;

	pv = type.value;
	cv = pt.value;

	pt.length = 1;

	if (pv == '0') return;
	if (typeof(cities[pv]) == 'undefined') return;

	for (i = 0; i < cities[pv].length; i++) {
		ii = i + 1;
		pt.options[ii] = new Option();
		pt.options[ii].text = cities[pv][i];
		pt.options[ii].value = cities[pv][i];
	}
}
</script>


</html>