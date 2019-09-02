<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
.navbar-brand{
    color: rgba(50,176,59,1) !important;
}

<style>
	.navbar-brand{
    color: black!important;
} 
.navbar-inverse{
background-color : #acf6ef !important;
}
</style>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"  >
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand " href="#">物流管理系统</a>
    </div>
    <div id="navbar" class="navbar-right">
      <a class="navbar-brand" href="#">您所在的位置：${ loginUser.type}</a>
    </div>
  </div>
</nav>