<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <!-- Title and other stuffs -->
  <title>后台登陆页面</title> 
  <!-- Stylesheets -->
  <link rel="shortcut icon" href="<%=basePath %>resources/img/favicon_ericsson.ico">
  <link href="<%=basePath %>resources/css/login/login.css" rel="stylesheet">
  <link href="<%=basePath %>resources/css/login/bootstrap.css" rel="stylesheet">
  <link rel="stylesheet" href="<%=basePath %>resources/css/login/font-awesome.css">
  <link href="<%=basePath %>resources/css/login/style.css" rel="stylesheet">
  <link href="<%=basePath %>resources/css/bootstrap-responsive.css" rel="stylesheet">
  
  <!-- HTML5 Support for IE -->
  <!--[if lt IE 9]>
  <script src="js/html5shim.js"></script>
  <![endif]-->
<style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      body {
  font-family: "Open Sans", sans-serif;
  height: 100vh;
  background: url("<%=basePath %>resources/img/HgflTDf.jpg") 50% fixed;
  background-size: cover;
}
    </style>
  <!-- Favicon -->
</head>
<script src="<%=basePath %>resources/js/prefixfree.min.js"></script>
<body>

<div class="wrapper">
	<div id="eLoginPage">
	<img src="<%=basePath %>resources/img/index_.jpg" id="opacity"/>
  <form class="login" style="float: right; margin:150px 100px 0 0;opacity:0.8;" action="<%=basePath %>user/login" method="post">
    <p class="title">Log in</p>
    <input type="text" placeholder="username" autofocus id="username" name="username"/>
    <i class="fa fa-user"></i>
    <input type="password" placeholder="password" id="pwd" name="password"/>
    <i class="fa fa-key"></i>
    <button  onclick="jimmy()" type="submit" value="login">
      <i class="spinner"></i>
      <span class="state">Log in</span>
    </button>
  </form>
  </p>
  </div>
</div>
    <script src='<%=basePath %>resources/js/jquery.min.js'></script>
    <script src='<%=basePath %>resources/js/index.js'></script>
</body>
</html>