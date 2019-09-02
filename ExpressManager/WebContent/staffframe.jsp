<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工管理员</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrapValidator.css">
<body>

<style>
	.navbar-brand{
    color: black!important;
} 
.navbar-inverse{
background-color : #acf6ef !important;
}
     a:link{text-decoration:none;}
     a:visited{text-decoration:none;}
     a:hover{text-decoration:none; color:#09f; font-size: 15px;}
     a:active{text-decoration:none; color:black;}
</style>
<div class="container">
  <div class="row">
	  <div class="col-md-12">
	  	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"  >
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand " href="#">物流管理系统</a>
    </div>
    <div id="navbar" class="navbar-right">
      <a class="navbar-brand" href="#">您所在的位置：员工操作</a>
    </div>
  </div>
</nav>
	  </div>
  </div>
  
<!-- 右上角仓库标题  -->
<div class="container" style="padding-top: 70px">
	<!--右侧菜单-->
	<div class="row clearfix">
		<div class="col-md-2 column">
			<div class="panel panel-default">
				 <div class="panel-heading">
					<h3 class="panel-title" align="center">
						<font color="black"><b>菜单</b></font>
					</h3>
				</div> 
				<div class="panel-body">
					<a href="${pageContext.request.contextPath}/orderin.jsp" target="right" id="aid">订单号操作</a>
				</div>
				<div class="panel-body">
				 <a href="${pageContext.request.contextPath}/notice/findAll.do" target="right">公告</a>
				</div>	
				<div class="panel-body">
					<a href="${pageContext.request.contextPath}/web.jsp" target="right">省市/归属地查询</a>
				</div>
				<div class="panel-body">
					<a href="${pageContext.request.contextPath}/items/jump.do" target="right">订单备份</a>
				</div>
				<div class="panel-body">
					<a href="${pageContext.request.contextPath}/echarts1.html" target="right">折线统计图</a>
				</div>
				<div class="panel-body">
					<a href="${pageContext.request.contextPath}/echarts3.html" target="right">地区统计图</a>
				</div>
				<div class="panel-body">
				 <a href="javascript:logout()" arget="right">安全退出</a>
				</div>		 
			</div>
		</div>
		<div class="col-md-9 column">
			<iframe name="right" src="${pageContext.request.contextPath}/adminholle.jsp" width="960px" height="800px" frameborder="0" scrolling="auto"></iframe>			
		</div>
		
	</div>
</div>
</div>
</body>
<script type="text/javascript">
	function logout(){
		if(confirm('您确定要退出系统吗?')){
			window.location.href="${pageContext.request.contextPath}/main/staff.do";
		}
	}
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</html>

