<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${loginUser.type }</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrapValidator.css">

<style type="text/css">
     a:link{text-decoration:none;}
     a:visited{text-decoration:none;}
     a:hover{text-decoration:none; color:#09f; font-size: 15px;}
     a:active{text-decoration:none; color:black;}
</style>

<body>
<div class="container">
  <div class="row">
	  <div class="col-md-12">
	  	<jsp:include page="/common/head.jsp"/>
	  </div>
  </div>
  
<!-- 右上角仓库标题  -->
<div class="container" style="padding-top: 70px">
	<%-- <div class="row clearfix">
		<div class="col-md-12 column">
		<br><h1>您所在的仓库:${ loginUser.type}</h1><br>
		</div>
	</div> --%>
	
	<!--右侧菜单-->
	<div class="row clearfix">
		<div class="col-md-2 column">
			<div class="panel panel-default">
				 <div class="panel-heading">
					<h3 class="panel-title" align="center">
						<font color="black"><b>菜单</b></font>
					</h3>
				</div> 
				<!-- <a href="#" class="list-group-item active">菜单</a> -->
				<div class="panel-body">
					<a href="allorder.do" target="right">快递接收与发送</a>
				</div>
				<div class="panel-body">
					<a href="${pageContext.request.contextPath}/newstaff.jsp" target="right">新建员工</a>
				</div>
				<div class="panel-body">
					<a href="showstaff.do" target="right">员工查看</a>
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

