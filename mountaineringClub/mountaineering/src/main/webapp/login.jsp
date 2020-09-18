<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- Meta, title, CSS, favicons, etc. -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title>登山俱乐部</title>

		<!-- Bootstrap -->
		<link href="statics/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Font Awesome -->
		<link href="statics/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<!-- NProgress -->
		<link href="statics/vendors/nprogress/nprogress.css" rel="stylesheet">
		<!-- Animate.css -->
		<link href="statics/vendors/animate.css/animate.min.css" rel="stylesheet">

		<!-- Custom Theme Style -->
		<link href="statics/build/css/custom.min.css" rel="stylesheet">
	</head>
	<body class="login">
		<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<div>
			<a class="hiddenanchor" id="signup"></a>
			<a class="hiddenanchor" id="signin"></a>

			<div class="login_wrapper">
				<div class="animate form login_form">
					<section class="login_content">
						<form id="myform" method="Post" action="user_index"><!-- onsubmit="return ChangeAction();" -->
			 				<h1>登录</h1>
							<span style="color: red">
								<c:out value="${msg }"/>
							</span>
							<div>
								<input type="text" class="form-control" placeholder="用户名" name="name" required="required"/>
							</div>
							<div>
								<input type="password" class="form-control" placeholder="密码" name="password" required="required" />
							</div> 
							<!-- <div class="gender_radio">
								Role: &nbsp;&nbsp;&nbsp;&nbsp;
								<label class="radio-inline">
									<input type="radio" name="roles" value="user_index" checked> Memeber
								</label>&nbsp;&nbsp;
								<label class="radio-inline">
									<input type="radio" name="roles" value="admin_index"> Admin
								</label>
							</div> -->
							<div>

							</div>
							<div>
								<button class="btn btn-default"  type="submit" style="font-size: 13px">登录</button>
							</div>

							<div class="clearfix"></div>

							<div class="separator">
								<p class="change_link">第一次？
									<a href="#signup" class="to_register"> 注册会员 </a>
								</p>

								<div class="clearfix"></div>
								<br />

								<div>
									<h1><i class="fa fa-paw"></i> 登山俱乐部</h1>
									<p>©2019 登山俱乐部版权所有！ </p>
								</div>
							</div>
							<!-- <script type="text/javascript">
							   function ChangeAction(){
								   var url=$("input[name='roles']:checked").val();
								   if(url!=null){
								        $("#myform").attr('action',url);
								        return true;
								   }
								   	return false;   
							   }
							</script> -->
						</form>
					</section>
				</div>

				<div id="register" class="animate form registration_form">
					<section class="login_content">
						<form method="Post" action="register" onsubmit="return CheckPost();">
							<h1>注册会员</h1>
							<span style="color: red">
								<c:out value="${msg }"/>
							</span>
							<div>
								<input type="text" class="form-control" placeholder="用户名" name="uname" required="required" />
							</div>
							<div>
								<input type="text" class="form-control" placeholder="真实姓名" name="realname" required="required" />
							</div>
							<div>
								<input type="password" class="form-control" placeholder="密码" id="password" name="password" required="required" />
							</div>
							<div>
								<input type="password" class="form-control" placeholder="请再次输入密码" id="repassword" required="required" />
							</div>
							<div class="gender_radio">
								性别: &nbsp;&nbsp;&nbsp;&nbsp;
								<label class="radio-inline">
									<input type="radio" name="gender" value="0" checked> 男
								</label>
								<label class="radio-inline">
									<input type="radio" name="gender" value="1"> 女
								</label>
							</div>
							<div>
								<input type="text" class="form-control" placeholder="身份证号" id="idCard" name="idCard" required="required" />
							</div>
							<div>
								<input type="email" class="form-control" placeholder="电子邮箱" id="email" name="email" required="required" />
							</div>
							<div>
								<input type="text" class="form-control" placeholder="电话号码" id="phone" name="phone" required="required" />
							</div>
							<div>
								<input type="text" class="form-control" placeholder="住址" name="address" required="required" />
							</div>
							
							<div>
								<button class="btn btn-default" type="submit" style="font-size: 13px">注册</button>
							</div>
							<div class="clearfix"></div>
							<div class="separator">
								<p class="change_link">已经是会员了？
									<a href="#signin" class="to_register"> 登录 </a>
								</p>

								<div class="clearfix"></div>
								<br />

								<div>
									<h1><i class="fa fa-paw"></i> 登山俱乐部</h1>
									<p>©2019 登山俱乐部版权所有！</p>
								</div>
							</div>
						</form>
						<script type="text/javascript">
							function CheckPost (){
								 var password=$("#password").val();
						         var repassword=$("#repassword").val();  
						         if(password==repassword){  
						         }else{  
						            alert("两次输入的密码不一致!");  
						            return false;  
						         }  
						         var checkidcard=new RegExp(/^\d{15}|\d{18}$/);   
						         var cardvalue=$("#idCard").val();  
						         if(checkidcard.test(cardvalue)){   
						         }else{  
						            alert("请输入正确的身份证格式!");  
						            return false;  
						         }  
								 var checkmail=/^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;   
						         var mailvalue=$("#email").val();  
						         if(checkmail.test(mailvalue)){  
						         }else{  
						            alert("请输入正确的邮箱格式!");  
						            return false;  
						         }  
						         var checkphone=/^(13[0-9]|14[5|6|7|9]|15[0|1|2|3|5|6|7|8|9]|16[6]|17[0-8]|18[0-9]|19[8-9])\d{8}$/;   
						         var phonevalue=$("#phone").val();  
						         if(checkphone.test(phonevalue)){   
						         }else{  
						            alert("请输入正确的手机号码格式!");  
						            return false;  
						         }  	
							     return true;
							   }
						</script>
					</section>
				</div>
			</div>
		</div>
	</body>

</html>