<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<html>
<head>
    <meta charset="utf-8">
    <title>管理员查看</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
    <link rel="stylesheet" type="text/css" href="${APP_PATH }/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${APP_PATH }/css/bootstrapValidator.css">
    <style>
        .table_div{ width:100%; margin:0 auto;}
    </style>
    <script type="text/javascript">
    function delete_alert()
    {
    	 var message=confirm("您确定删除？");
    	    if(message==true)
    	    {   
    	    	alert("删除成功");
    	    	return true; 
    	    }
    	    else
    	    {   return false; }	
    }
    </script>
</head>
<body  class="table-responsive" ><!-- style="margin: 30px" -->
<!--面包屑导航-->
 <div>
    <ul class="breadcrumb">
   	 	<li><a href="${pageContext.request.contextPath}/adminholle.jsp">首页</a></li>
    	<li class="active">客户管理</li>
	</ul>
</div>  

<div class="row search" >
  <div class="col-md-6">
	<form action="${pageContext.request.contextPath}/member/list.do" method="post">
	    <div class="input-group" style="width: 300px">
		      <input type="text" class="form-control" name="name"  value="${name}"   placeholder="请输入要查询的用户名...">
		      <span class="input-group-btn">
		        <button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span>&nbsp;查询</button>
		      </span>
	    </div>
    </form>
  </div>
  <div class="text-right" style="width: 87%;height: 30px;">
    <a class="btn btn-success active btn-xs" id="add_btn" href="${pageContext.request.contextPath}/memberadd.jsp">添加</a>&nbsp;
</div>
</div>

<%-- <div class="text-right" style="width: 87%;height: 30px;">
    <a class="btn btn-success active btn-xs" id="add_btn" href="${pageContext.request.contextPath}/adminsave.jsp">添加</a>&nbsp;
</div> --%>
<!--table表单层-->
<div class="table_div">
    <table class="table table-striped table-bordered table-hover" width="1200px" >
        <thead>
        <tr>
          
            <th align="center">用户名</th>
            <th align="center">密 码</th>
            <th align="center">姓名</th>
            <th align="center">性别</th>
            <th align="center">证件号</th>
            <th align="center">电话</th>
            <th align="center">Email</th>
            <th align="center">住址</th>
            <th align="center">操作</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <c:forEach var="members" items="${members}">
            <tr>
               
                <td align="center">${members.username}</td>
                <td align="center">${members.password}</td>
                <td align="center">${members.name}</td>
                <td align="center">${members.sex}</td>
                <td align="center">${members.idNumber}</td>
                <td align="center">${members.phone}</td>
                <td align="center">${members.email}</td>
                <td align="center">${members.address}</td>
                <td align="center">
                    &nbsp;&nbsp;&nbsp;      
                    <a class="btn btn-danger active btn-xs" onclick="return delete_alert()"  href="${pageContext.request.contextPath}/member/delete.do?id=${members.id}">删除</a>
                   <a class="btn btn-info active btn-xs" href="${pageContext.request.contextPath}/member/updateselect.do?id=${members.id}">修改</a>             
                </td>
            </tr>
        </c:forEach>
        </tr>
        </tbody>
    </table>
   


<div style="width: 79%;height:2px;">
   <!--页数显示-->
      共<font size="3" color="red">${pageUtil.pageNumber}</font>条,当前第<font size="3" color="red">${pageUtil.pageIndex}</font>页
</div>

<!--分页-->
<div style="width: 93%;" class="text-right">
    <ul class="pagination" >
    	
        <li><a href="${APP_PATH }/member/list.do?pageIndex=1" >首页</a></li>
        <li><a href="${APP_PATH }/member/list.do?pageIndex=${pageUtil.pageIndex>1?pageUtil.pageIndex-1:1}" class='pre'>上一页</a></li>

        <c:forEach begin="1" end="${pageUtil.pageCount}" var="i">
            <li><a href="${APP_PATH }/member/list.do?pageIndex=${i}" style="text-decoration: none;">${i}</a></li>
        </c:forEach>

        <li><a href="${APP_PATH }/member/list.do?pageIndex=${pageUtil.pageIndex<pageUtil.pageCount?pageUtil.pageIndex+1:pageUtil.pageCount}"  class='next'>下一页</a></li>
        <li><a href="${APP_PATH }/member/list.do?pageIndex=${pageUtil.pageCount}" class='last' >末页</a></li>
    </ul>
</div>
</div>

<script type="text/javascript" src="${APP_PATH }/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${APP_PATH }/js/bootstrap.min.js"></script>
</body>
</html>

