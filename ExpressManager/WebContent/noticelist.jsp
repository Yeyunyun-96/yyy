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
<title>管理员查看</title>
</head>
<link rel="stylesheet" type="text/css" href="${APP_PATH }/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${APP_PATH }/css/bootstrapValidator.css">
 <script type="text/javascript">
        function delete_alert()
        {
            alert("您确定删除？")
        }
    </script>
<body>
<!--面包屑导航-->
 <div>
    <ul class="breadcrumb">
   	 	<li><a href="${pageContext.request.contextPath}/adminholle.jsp">首页</a></li>
    	<li class="active">公告</li>
	</ul>
</div> 
  <div class="text-right" style="width: 87%;height: 30px;">
    <a class="btn btn-success active  btn-sm" id="add_btn" href="${pageContext.request.contextPath}/noticesave.jsp">发布</a>&nbsp;
</div>
<div class="table_div">
	<table class="table">
		<thead>
					<tr>
						<th>
							标题
						</th>
						<th>
							内容
						</th>
						<th>
							时间
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${notice }" var="notice">
					<tr class="warning">
						<td>
							${notice.title }
						</td>
						<td>
							${notice.details }
						</td>
						<td>
							<fmt:formatDate value="${notice.time }" pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
						<td>
							 <a class="btn btn-danger active btn-xs" onclick="delete_alert()"  href="${pageContext.request.contextPath}/notice/delete.do?noticeid=${notice.noticeid}">删除</a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table> 
</div>
</body>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

</html>