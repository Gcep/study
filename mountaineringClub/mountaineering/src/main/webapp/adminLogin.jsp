<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>登录</title>
<link rel="stylesheet" href="statics/css/style2.css">
<!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>

<body>
	<section class="container">
		<div class="login">
			<h1>登录</h1>
			<span style="color:red">
				<c:out value="${msg }"/>
			</span>
			<form method="post" action="admin_index">
				<p>
					<input type="text" name="name" required="required" placeholder="用戶名">
				</p>
				<p>
					<input type="password" name="password" required="required" placeholder="密码">
				</p>
				<p class="submit" style="width: 186px;">
					<input type="submit" name="commit" value="登录">
				</p>
			</form>
		</div>
	</section>
	<div style="text-align: center;">
		<p>©2019 登山俱乐部版权所有！</p>
	</div>
</body>
</html>
