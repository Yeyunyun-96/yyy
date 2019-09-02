<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改商品信息</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<style>
.file {
    position: relative;
    display: inline-block;
    background: #D0EEFF;
    border: 1px solid #99D3F5;
    border-radius: 4px;
    padding: 4px 12px;
    overflow: hidden;
    color: #1E88C7;
    text-decoration: none;
    text-indent: 0;
    line-height: 25px;
}
.file input {
    position: absolute;
    font-size: 100px;
    right: 0;
    top: 0;
    opacity: 0;
}
.file:hover {
    background: #AADFFD;
    border-color: #78C3F3;
    color: #004974;
    text-decoration: none;
}
.vintage5{
    font-family:cursive;color:deeppink
}
table {
  border-collapse: collapse;
}
th, td {
  padding: 3px 10px;
} 
</style>
 
</head>
<body>
<!--面包屑导航-->
 <div>
    <ul class="breadcrumb">
   	 	<li><a href="${pageContext.request.contextPath}/adminholle.jsp">首页</a></li> 	
    	<li class="active">上传照片</li>
	</ul>
</div> 
	<form id="itemForm"
		action="${pageContext.request.contextPath }/items/editItemsSubmit.do"
		method="post" enctype="multipart/form-data" onsubmit="return fmsub()">
		
		
		
			 <div class="container"  style="margin-top:12px;margin-left:25%; width: 100%;text-align: center;">
				<table>
					<tr>
						<td colspan="2"><h2 class="vintage5">请上传图片</h2></td>
					</tr>
					<tr>
						<td>照片名字：</td>
						<td>
							<input type="text" name="name"  id="name" value="${img.name}">
							
						</td>
						<td>
							<font color="red" id="msgname">${msgname}</font>
						</td>
					</tr>
					<tr>
						<td>照片详情：</td>
						<td>
							<input type="text" name="detail" id="detail" value="${img.detail}">
						</td>
						<td>
							<font color="red" id="msgdetail">${msgdetail}</font>
						</td>
					</tr>
					<tr>
						<td>
							<a href="javascript:;" class="file">上传图片
   			 					<input type="file" name="items_pic" id="file">	 			
							</a>
						</td>
						<td>
							<font color="red" id="msgfile">${msgfile}</font>
						</td>
						<td>
							<button type="submit" class="btn btn-success default">确定</button>&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;
							
							
							<a class="btn btn-info default" id="add_btn" href="${pageContext.request.contextPath }/items/findAll.do">查看详情</a>
						</td>	
					</tr>
				</table>			
			</div> 
			
			<div class="container"  style="margin-top:10px;width: 80%;  text-align: center;">
				创建时间：${img.createtime} 
				<c:if test="${img.pic !=null}">
						<img src="/pic/${img.pic}" width="600px" height="270px" />
						<br />
				</c:if> 
			</div>					
	</form>
</body>
<script>
function fmsub(){
	var name = $("#name").val();
	console.log(name);
	var detail = $("#detail").val();
	var file = $("#file").val();
	console.log(detail);
	if (name == null || name == "") {
		document.getElementById("msgname").innerHTML = "*标题不能为空";
		return false;
	}
	if (detail == null || detail == "") {
		document.getElementById("msgdetail").innerHTML = "*详情不能为空";
		return false;
	}
	if (file == null || file == "") {
		document.getElementById("msgfile").innerHTML = "*请选择上传的照片";
		return false;
	}
}
</script>
 
</html>
