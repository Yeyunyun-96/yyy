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
    	<li><a href="${pageContext.request.contextPath}/notice/findAll.do">公告信息</a></li>
    	<li class="active">信息添加</li>
	</ul>
</div> 
<div class="container" style="margin-top:50px">
	<div class="row clearfix">
		<div class="col-md-6 column">
			<form class="form-horizontal" action="${pageContext.request.contextPath}/notice/insert.do" method="post" role="form" onsubmit="return fmsub()" >
			    <div class="form-group">				 
					<label for="inputEmail1" class="col-sm-2 control-label">公告标题</label>				
					<div class="col-sm-10">
						<input width="80px;" type="text" class="form-control" id="title" name="title" />		
						<font color="red" id="msgtitle">${msgtitle}</font>
					</div>
				</div>
				<div class="form-group">
					 <label for="inputEmail3" class="col-sm-2 control-label">公告详情</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="details" name="details"/>
						<font color="red" id="details">${msgdetails}</font>
					</div>
				</div>	
				<br>
				
				<div class="form-group" style="width: 100%;  text-align: center;">
				 <button type="submit" class="btn btn-success default">发布</button>
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
		var title = $("#title").val();
		console.log(title);
		var details = $("#details").val();
		if (title == null || title == "") {
			document.getElementById("msgtitle").innerHTML = "*用户名不能为空";
			return false;
		}
		if (details == null || details == "") {
			document.getElementById("msgdetails").innerHTML = "*手机号码不能为空";
			return false;
		}	
	}
</script>


</html>