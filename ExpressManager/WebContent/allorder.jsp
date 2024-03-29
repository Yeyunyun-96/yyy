<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrapValidator.css">

<body>
<!--面包屑导航-->
 <div>
    <ul class="breadcrumb">
   	 	<li><a href="${pageContext.request.contextPath}/adminholle.jsp">首页</a></li>
    	<li class="active">快递接收和发送</li>
	</ul>
</div>
<!--table表单层-->
<div class="table_div" class="table_div" style="width: 90%; height: 80px;">
    <table class="table table-striped table-bordered table-hover">
        <thead>
        <tr>
            <th>快递单号</th>
            <th>发件地</th>
            <th>收件地</th>
            <th>当前状态</th>
            <th>下单时间</th>
            <th>操作</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach var="order" items="${orderList}">
            <tr>
                <td align="center">${order.id }</td>
                <td align="center">${order.fromlocation }</td>
                <td align="center">${order.tolocation }</td>
                <td align="center">${order.type }</td>
                <td>
					<fmt:formatDate value="${order.posttime }" pattern="yyyy-MM-dd HH:mm:ss" />
				</td>         
                <td align="center">
					<a class="btn btn-success delete btn-sm" 	href="javascript:orderout(id='${order.id }')">发出</a>
					<a class="btn btn-info delete btn-sm"   	href="javascript:orderin(id='${order.id }')">入库</a>
					<a class="btn btn-warning delete btn-sm"  	href="javascript:order(id='${order.id }')">揽收</a>
					<a class="btn btn-danger delete btn-sm"   href="javascript:removeorder(id='${order.id }')">删除</a>
				</td>
            </tr>
        </c:forEach>
        </tr>
        </tbody>
    </table>
</div>


	<%-- <table class="table">
		<thead>
					<tr>
						<th>
							快递单号
						</th>
						<th>
							快递单号
						</th>
						<th>
							收件地
						</th>
						<th>
							当前状态
						</th>
						<th>
							下单时间
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${orderList }" var="order">
					<tr class="warning">
						<td>
							${order.id }
						</td>
						<td>
							${order.fromlocation }
						</td>
						<td>
							${order.tolocation }
						</td>
						<td>
							${order.type }
						</td>
						<td>
							<fmt:formatDate value="${order.posttime }"
					pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
						<td>
							<a class="btn btn-danger delete" style="background-color: red;" href="javascript:orderout(id='${order.id }')">发出</a>
							<a class="btn btn-danger delete" style="background-color: red;" href="javascript:orderin(id='${order.id }')">入库</a>
							<a class="btn btn-danger delete" style="background-color: red;" href="javascript:order(id='${order.id }')">揽收</a>
							<a class="btn btn-danger delete" style="background-color: red;" href="javascript:removeorder(id='${order.id }')">删除</a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>  --%>
</body>
<script type="text/javascript">
function orderout(id){
	$.ajax({
		type : "post",
		url : "orderout.do",
		data : {
			"expid" : id
		},
		async : true,
		dataType : 'text',
		success : function(data) {
			alert("出库成功！");
			location.reload(true);
		},
		error : function(data) {
			alert("出错！请联系管理员");
		}
	});
}
function orderin(id){
	$.ajax({
		type : "post",
		url : "orderin.do",
		data : {
			"expid" : id
		},
		async : true,
		dataType : 'text',
		success : function(data) {
			alert("入库成功！");
			location.reload(true);
		},
		error : function(data) {
			alert("出错！请联系管理员");
		}
	});
}
function order(id){
	var staffid=prompt("请输入揽收员工号","");
	$.ajax({
		type : "post",
		url : "order.do",
		data : {
			"expid" : id,
			"staffid": staffid
		},
		async : true,
		dataType : 'text',
		success : function(data) {
			if(data=='0'){
				alert("员工号输入有误！");
				return;
			}
			alert(data);
			location.reload(true);
		},
		error : function(data) {
			alert("出错！请联系管理员");
		}
	});
}
function removeorder(id){
	$.ajax({
		type : "post",
		url : "orderremove.do",
		data : {
			"expid" : id
		},
		async : true,
		dataType : 'text',
		success : function(data) {
			alert("删除成功！");
			location.reload(true);
		},
		error : function(data) {
			alert("出错！请联系管理员");
		}
	});
}
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</html>