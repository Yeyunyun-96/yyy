<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>知识扩展</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrapValidator.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<style>
	
.vintage5{
    font-family:cursive;color:deeppink
}
</style>

<body>
<div>
    <ul class="breadcrumb">
   	 	<li><a href="${pageContext.request.contextPath}/adminholle.jsp">首页</a></li>
    	<li class="active">省市/号码归属地查询</li>
	</ul>
</div>  
	<div
		style="width: 75%; height: 80px; text-align: center; margin-top:30px">

		 <h2 class="vintage5">请输入查询省份</h2>
		<br>
		<form action="${pageContext.request.contextPath}/web/provices.do"
			method="post"  onsubmit="return fmsub()">
			<%-- <input type="text" id="name" name="name" value="${name}"/>&nbsp;&nbsp;&nbsp; --%>
			
			<select  style="width: 300px; height:30px;" id="name" name="name" >
								<option value="0">请选择...</option>
								<option value="上海">上海</option>
								<option value="山东">山东</option>							
								<option value="浙江">浙江</option>
								<option value="安徽">安徽</option>
								<option value="福建">福建</option>
								<option value="江西">江西</option>
								<option value="广东">广东</option>
								<option value="广西">广西</option>
								<option value="海南">海南</option>
								<option value="海南">河南</option>
								<option value="海南">湖南</option>
								<option value="湖北">湖北</option>
								<option value="天津">天津</option>
								<option value="天津">北京</option>
								<option value="河北">河北</option>
								<option value="山西">山西</option>
								<option value="内蒙古">内蒙古</option>
								<option value="宁夏">宁夏</option>
								<option value="青海">青海</option>
								<option value="陕西">陕西</option>
								<option value="甘肃">甘肃</option>
								<option value="新疆">新疆</option>
								<option value="四川">四川</option>
								<option value="贵州">贵州</option>
								<option value="云南">云南</option>
								<option value="重庆">重庆</option>
								<option value="西藏">西藏</option>
								<option value="辽宁">辽宁</option>
								<option value="吉林">吉林</option>
								<option value="黑龙江">黑龙江</option>
							</select>
			
			<button type="submit" class="btn btn-success default ">查询</button>
			<br><br>
			<font color="red" id="msgname">${msgname}</font>
			
		</form>		
			<c:forEach var="msg" items="${msg}">
           		(${msg})--
        	</c:forEach>
        		<br><br>
       			<font color="red"> ${name}共有多少个市？${count}</font>	
       				<br>	<br>	<br>	<br>	<br>
       				<br>	<br>	<br>	<br>	<br>
	</div>
	<div
		style="width: 75%; height: 80px; text-align: center; margin-top:115px">

		<h2 class="vintage5">请输入查询的手机号</h2><br>
		<form action="${pageContext.request.contextPath}/web/phone.do"
			method="post" onsubmit="return fmsub1()">
			<input style="width: 300px; height:30px;" type="text" id="phoneString" name="phoneString" value="${phoneString}"/>
			<button type="submit" class="btn btn-success default">添加</button>
			<br>
			 <font color="red" id="msgphone">${msgphone}</font> 
		</form>		<br>
        ${searchResult}<br>
        <br>
	</div>
</body>
<script>
function fmsub(){
	var name = $("#name").val();	
	if (name == null || name == "") {
		document.getElementById("msgname").innerHTML = "*请输入正确的省份";
		return false;
	}
	if (name == 0) {
		document.getElementById("msgname").innerHTML = "*请输入正确的省份";
		return false;
	}
}
function fmsub1(){
	var phoneString = $("#phoneString").val();	
	var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
	if (name == null || name == "") {
		document.getElementById("msgphone").innerHTML = "*请输入正确手机号";
		return false;
	}
	if (!myreg.test($("#phoneString").val())) {
	    document.getElementById("msgphone").innerHTML = "*请填写正确的11位手机号";
		return false;
	}
	
}
</script>
</html>