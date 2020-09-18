<%@page import="com.icss.club.entity.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
   <head>
      <title>Info</title>
      <!-- Meta Tags -->
	 <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
	<meta name="keywords" content="" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- // Meta Tags -->
      <!--booststrap-->
      <link href="statics/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="statics/css/fontawesome-all.css" rel="stylesheet">
      <!-- //font-awesome icons -->
      <!--stylesheets-->
		<link href="statics/css/style.css" rel='stylesheet' type='text/css' media="all">
   </head>
   <body>
<!-- jQuery -->
	<script src="statics/vendors/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript">
		function doPost(to,p) { 
	    	var myForm = document.createElement("form");     
	    	myForm.method = "post";
	    	myForm.action = to;   
	        var myInput = document.createElement("input");     
	        myInput.setAttribute("name", 'pageName');  
	       	myInput.setAttribute("value", p); 
	        myForm.appendChild(myInput);
	        var myInput = document.createElement("input");     
	    	myInput.setAttribute("name", 'logining');  // 为input对象设置name
	    	myInput.setAttribute("value", false);  // 为input对象设置value
	    	myForm.appendChild(myInput);
	        document.body.appendChild(myForm);   
	        myForm.submit(); 
	        document.body.removeChild(myForm);  
    	}
	</script>
<!--/banner-->
<!-- banner -->
<header>
	<section class="banner1">
		<div class="agileits_w3layouts_banner_nav">
			<div class="header-bar py-sm-2">
				<div class="container py-2">
				<nav class="navbar navbar-expand-lg navbar-light">
               <div class="hedder-up">
               <h1><a class="navbar-brand" href="index.jsp">登山俱乐部</a></h1>
			   </div>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                   <ul class="navbar-nav">
							 <li class="nav-item">
								<a class="nav-link" href="index.jsp">首页<span class="sr-only">(current)</span></a>
							 </li>
							 <li class="nav-item ">
								<a href="javascript:doPost('userActivity','activity')" class="nav-link ">活动</a>
							 </li>
							 <li class="nav-item">
								<a href="javascript:doPost('view_notice','notice')" class="nav-link">公告</a>
							 </li>
							 <li class="nav-item active">
								<a href="javascript:doPost('get_user_info','info')" class="nav-link">个人信息</a>
							 </li>
							 <li class="nav-item">
								<a href="javascript:doPost('userActivities','activityAndStatus')" class="nav-link ">我的活动</a>
							 </li>
						  </ul>

               </div>
            </nav>				
		</div>
   </div>
         <!-- //Navigation -->
	</div>
	</section>
	</header>
	<!-- //banner -->
	<!--/contact-->
	<section class="contact py-md-5">
		<div class="container py-4 mt-2">
		<h2 class="tittle text-center mb-3">个人信息</h2>
			<p class="tit text-center mx-auto">我们向你保证：该信息仅出于安全考虑，留作联系使用！</p>
			<div class="row inner-sec-w3layouts-agileinfo pt-4 mt-md-4">
				<div class="contact_grid_right mt-2">
					<form action="#" method="get">
						<div class="contact_left_grid">
							<input type="text" id="uid" value="${user.getUId() }"  style="display:none;">
							用户名：<input class="changeInfo" type="text" id="uname" placeholder="${user.getUName() }" value="${user.getUName() }"  style="margin-bottom:5px;">
							真实姓名：<input class="changeInfo" type="text" id="urealname" placeholder="${user.getURealname() }" value="${user.getURealname() }"  style="margin-bottom:5px;">
							
							性别：<c:if test="${user.getUSex()==0}">
								<input class="changeInfo" type="text" name="男" placeholder="男"  readonly="readonly"  style="margin-bottom:5px;">
							</c:if>
							<c:if test="${user.getUSex()==1}">
								<input class="changeInfo" type="text" name="女" placeholder="女" readonly="readonly" style="margin-bottom:5px;">
							</c:if>
							
							身份证号：<input class="changeInfo" type="text" id="ucardid" placeholder="${user.getUCardid() }" readonly="readonly" style="margin-bottom:5px;">
							电话号码：<input class="changeInfo" type="text" id="uphone" placeholder="${user.getUPhone() }" value="${user.getUPhone() }" style="margin-bottom:5px;">
							邮箱：<input class="changeInfo" type="text" id="uemail" placeholder="${user.getUEmail() }" value="${user.getUEmail() }"  style="margin-bottom:5px;" >
							住址：<input class="changeInfo" type="text" id="uaddress" placeholder="${user.getUAddress() }" value="${user.getUAddress() }" style="margin-bottom:10px;"><br>
							<input  type="button" onclick=is_change() value="提交">
							<input type="reset" value="清空">
							<input class="changepass" type="button" data-toggle="modal" data-target="#myModal" value="修改密码">
							<div class="clearfix"> </div>
						</div>
					</form>
		        <!-- 模态框（Modal） -->
		        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		            <div class="modal-dialog">
		                <div class="modal-content">
		                    <div class="modal-header">
		                    <h4 class="modal-title" id="myModalLabel">
		                           修改密码
		                        </h4>
		                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="margin-right:0px">
		                            &times;
		                        </button>
		                        
		                    </div>
		                    <div class="modal-body">
		                        <div>
		                        	新的密码：<input type="password" id="password" required=""  style="margin-bottom:5px; border:1px solid #d3d3d3;"><br>
							确认密码：<input type="password" id="repassword" required="" style="margin-bottom:5px;border:1px solid #d3d3d3;"></div>
		                    </div>
		                    <div class="modal-footer">
		                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭
		                        </button>
		                        <button type="button" class="btn btn-primary" onclick=changePass()>
		                            	提交更改
		                        </button>
		                    </div>
		                </div><!-- /.modal-content -->
		            </div><!-- /.modal -->
        			</div>
				</div>
			</div>
		</div>
	</section>
	<!--//contact-->
<!--footer-->
	<footer>
		<div class="container py-md-3">
			<div class="row footer-top-w3layouts-agile py-2">
				<div class="col-lg-4 footer-grid">
					<div class="footer-title">
						<h3>关于我们</h3>
					</div>
					<div class="footer-text">
						<p>&nbsp;&nbsp;随着上班族的压力过大，油腻食品膨化食品的侵袭，亚健康状态伴随着大部分的上班族，长时间不运动整个身体都处在一个高呼吸，低消耗的状态，将会对生理和心理造成较大的负担。登山运动有益于改善人体的平衡功能；能改善生理和心理状态。为了与我们有共同的爱好，希望能更健康生活的朋友们，我们提供平台来组织，管理和推动登山运动。</p>

					</div>
				</div>
				<div class="col-lg-4 footer-grid">
					<div class="footer-title">
						<h3>联系我们</h3>
					</div>
					<div class="footer-office-hour">
						<ul>
							<li class="hd">地址：</li>
							<li>伦敦贝克街221号</li>

						</ul>
						<ul>
							<li class="hd">电话:+ 1 (234) 567 8901</li>
							<li class="hd">邮箱:
								<a href="mailto:info@example.com">info@example.com</a>
							</li>
							<li class="hd">传真: 1(234) 567 8901</li>
						</ul>
					</div>
				</div>
				
				<div class="col-lg-4 footer-grid">
					<div class="footer-title">
						<h3>订阅</h3>
					</div>
					<p>登山俱乐部——fight</p>
					<form action="#" method="post" class="newsletter">
						<input class="email" type="email" placeholder="Your email..." required="">
						<button class="btn1">
							<i class="far fa-envelope"></i>
						</button>
					</form>
					<div class="clearfix"></div>
				</div>

			</div>

		</div>
	</footer>
		<!---->
	<div class="copyright py-3">
		<div class="container">
			<div class="copyrighttop">
				<ul>
					<li>
						<h4>关注我们:</h4>
					</li>
					<li>
						<a class="facebook" href="#">
							<i class="fab fa-facebook-f"></i>
						</a>
					</li>
					<li>
						<a class="facebook" href="#">
							<i class="fab fa-twitter"></i>
						</a>
					</li>
					<li>
						<a class="facebook" href="#">
							<i class="fab fa-google-plus-g"></i>
						</a>
					</li>
					<li>
						<a class="facebook" href="#">
							<i class="fab fa-pinterest-p"></i>
						</a>
					</li>
				</ul>
			</div>
			<div class="copyrightbottom">
				<p>©2019 登山俱乐部版权所有！</p>

			</div>
			<div class="clearfix"></div>
		</div>
	</div>
     <!--js working-->
      <script src="statics/js/jquery.min.js"></script>
      <!--//js working-->
	<!-- smooth scrolling -->
	<script type="text/javascript" src="statics/js/move-top.js"></script>
	<script type="text/javascript" src="statics/js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
<!-- //smooth scrolling -->
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<!-- //scrolling script -->
 <script src="statics/js/main.js"></script>
<!--bootstrap working-->
    <script src="statics/js/bootstrap.min.js"></script>
 <!-- //bootstrap working-->
 <script type="text/javascript">
		   function is_change(){
				var Id =$("#uid").val();
				var Name=$("#uname").val();
				var RealName=$("#urealname").val();
				var Phone=$("#uphone").val();
				var Email=$("#uemail").val();
				var Address=$("#uaddress").val();
				var checkmail=/^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/; 
				if(checkmail.test(Email)){  
		        }else{  
		           alert("请输入正确的邮箱格式!");  
		           return false;  
		        }
				var checkphone=/^(13[0-9]|14[5|6|7|9]|15[0|1|2|3|5|6|7|8|9]|16[6]|17[0-8]|18[0-9]|19[8-9])\d{8}$/;   
			    if(checkphone.test(Phone)){   
			    }else{  
			    	alert("请输入正确的手机号码格式!");  
			    return false;  
			    }  	
				$.ajax({
					url:"change_user",
					type:"post",
					async:true,
					dataType:"json",
					data:{
						 Id :Id,
						 Name :Name,
						 RealName :RealName,
						 Phone :Phone,
						 Email :Email,
						 Address :Address
					},
					success:function(data){
						alert(data.msg);
						$(".changeInfo").attr("readonly","readonly");
						$(".changeInfo").click(function(){
							alert("請不要頻繁修改!");
						})
					},
					error:function(err){
						alert("出错了！");
					}
				});
			};
			
			function changePass(){ 
				 var Id =$("#uid").val();
				 var password=$("#password").val();
		         var repassword=$("#repassword").val();  
		         if(password==repassword){  
	        	 	var myForm = document.createElement("form");     
			    	myForm.method = "post";
			    	myForm.action = "change_password";
			        var myInput = document.createElement("input"); 
			        myInput.setAttribute("name", 'Id');  
			       	myInput.setAttribute("value", Id); 
			       	myForm.appendChild(myInput);
			        var myInput = document.createElement("input");     
			    	myInput.setAttribute("name", 'Password');  
			    	myInput.setAttribute("value", password);
			    	myForm.appendChild(myInput);
			        document.body.appendChild(myForm);   
			        myForm.submit(); 
			        document.body.removeChild(myForm);
		         }else{  
		            alert("两次输入的密码不一致!");  
		            return false;  
		         } 
			}
	</script>
   </body>
</html>