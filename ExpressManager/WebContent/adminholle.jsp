<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin管理员</title>
</head>
<style>
.love {
    width: 100px;
    height: 100px;
    background: #317ef3;
    position: relative;
    transform: rotate(45deg);
    -webkit-transform: rotate(45deg);
    -moz-transform: rotate(45deg);
    -o-transform: rotate(45deg);
}

.love:after {
    content: "";
    width: 50px;
    height: 100px;
    background: #317ef3;
    border-radius: 50px 0 0 50px;
    position: absolute;
    right: 99px;
    top: 0;
}

.love::before {
    content: "";
    width: 100px;
    height: 50px;
    background: #317ef3;
    border-radius: 50px 50px 0 0;
    position: absolute;
    bottom: 99px;
    left: 0;
}

.vintage1{
background: #EEE url(data:image/gif;base64,iVBORw0KGgoAAAANSUhEUgAAAAQAAAAECAIAAAAmkwkpAAAAHklEQVQImWNkYGBgYGD4//8/A5wF5SBYyAr+//8PAPOCFO0Q2zq7AAAAAElFTkSuQmCC) repeat;
text-shadow: 5px -5px black, 4px -4px white;
font-weight: bold;
-webkit-text-fill-color: transparent;
-webkit-background-clip: text }

</style>
<body >

<h1 class="vintage1" style="text-align: center;margin-top: 120px; color: black;">后台物流系统欢迎您！</h1>
<img class="love" src="${APP_PATH }/image/admin.jpg" width="1000px" height="270px"  style="text-align: center; margin-top: 120px;"/>
<img class="love" src="${APP_PATH }/image/admin.jpg" width="1000px" height="270px"  style="text-align: center; margin-top: 120px;"/>
<img class="love" src="${APP_PATH }/image/admin.jpg" width="1000px" height="270px"  style="text-align: center; margin-top: 120px;"/>
<img class="love" src="${APP_PATH }/image/admin.jpg" width="1000px" height="270px"  style="text-align: center; margin-top: 120px;"/>
<img class="love" src="${APP_PATH }/image/admin.jpg" width="1000px" height="270px"  style="text-align: center; margin-top: 120px;"/>
<img class="love" src="${APP_PATH }/image/admin.jpg" width="1000px" height="270px"  style="text-align: center; margin-top: 120px;"/>
<img class="love" src="${APP_PATH }/image/admin.jpg" width="1000px" height="270px"  style="text-align: center; margin-top: 120px;"/>
<img class="love" src="${APP_PATH }/image/admin.jpg" width="1000px" height="270px"  style="text-align: center; margin-top: 120px;"/>
<img class="love" src="${APP_PATH }/image/admin.jpg" width="1000px" height="270px"  style="text-align: center; margin-top: 120px;"/>



</body>
</html>