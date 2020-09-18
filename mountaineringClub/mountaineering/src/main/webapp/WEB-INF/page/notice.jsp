<%@page import="com.icss.club.entity.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
   <head>
      <title>activities</title>
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
	  <link rel="stylesheet" href="statics/css/lightbox.css"><!-- For-gallery-CSS -->
<!--stylesheets-->
<link href="statics/css/style.css" rel='stylesheet' type='text/css' media="all">
  
   </head>
   <body>
<!-- jQuery -->
	<script src="statics/vendors/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript">
	function doPost(to,p,data) { 
    	var myForm = document.createElement("form");     
    	myForm.method = "post";
    	myForm.action = to;
        var myInput = document.createElement("input");     
        myInput.setAttribute("name", 'pageName');  
       	myInput.setAttribute("value", p); 
        myForm.appendChild(myInput);
        var myInput = document.createElement("input");     
    	myInput.setAttribute("name", 'logining');  
    	myInput.setAttribute("value", true);
    	myForm.appendChild(myInput);
    	var myInput = document.createElement("input");     
	    	myInput.setAttribute("name", 'aId'); 
	    	myInput.setAttribute("value", 'aId');
    	if(data!=null){
			myInput.setAttribute("value", data);
    	}
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
							 <li class="nav-item">
								<a href="javascript:doPost('page','info')" class="nav-link">个人信息</a>
							 </li>
							 <li class="nav-item active">
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
	<!--gallery-->
	<section class="gallery py-md-5">
		<div class="container py-4 mt-2">
			<h2 class="tittle text-center mb-3">公告</h2>
			<div id="con" class="row gallery-info pt-4 mt-md-4">
				<c:forEach items="${notices }" var="notice">
				<div id="red" class="col-md-12 gallery-grids"  onmouseover="this.style.color='#F00'" onmouseout="this.style.color='#FFF'" style="position:relative;border:5px outset #859088;color:#fff;background: #51696d;border-radius:30px;margin-bottom:10px;">
						<p>主题：${notice.getNTitle() }</p>
						<p>内容：${notice.getNContent() }</p>
						<p>发布时间：${notice.getNPublishtime() }</p>
				</div>
				</c:forEach>		
			</div>
			<script src="statics/js/lightbox-plus-jquery.min.js"></script>
		</div>
</section>
<!--//gallery-->
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
			function red(e){
				document.getElementById("red").style.color="red"
			}
			function white(e){
				document.getElementById("red").style.color="white";
				alert("bb")
			}
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
    <!-- jQuery -->
	<script src="statics/vendors/jquery/dist/jquery.min.js"></script>
 <!-- //bootstrap working-->
 <script type="text/javascript">
 	function searchAct(){
 		var value=$("#seaContext").val();
 		var str=(value.trim()).split(" ");
		var name=null;
		var time=null;
 		if(str.length>=1){
 		for(var i = 0; i < str.length; i++) {
 			var checkname=/^[\u4e00-\u9fa5]{0,}$/;
 			var checktime=/^\d{4}-\d{1,2}-\d{1,2}$/;
 			if(checkname.test(str[i])){
 				name=str[i]
 				console.log(name);
 			}else if(checktime.test(str[i])){
 				time=str[i]
 				console.log(time);
 			}
 		};
 		if(name==null && time==null){
 			alert("请输入正确的搜索格式！")
 			return false;
 		}
 		$.ajax({
 			url:"searchActRe",
 			type:"post",
 			async:true,
 			dataType:"json",
 			data:{
 				name:name,
 				time:time
 			},
 			success:function(data){
 				alert(data.msg);
 				if(data.all!=null){
 					var html="";
					$.each(data.all,function(index,items){
				        html+='<div class="col-md-3 gallery-grids">'+
					'<a href="statics/images/g'+(data.all[index].aid%12)+'.jpg" class="gallery-box" data-lightbox="example-set" data-title="">'+
						'<img src="statics/images/g'+data.all[index].aid%12+'.jpg" alt="" class="img-responsive zoom-img">'+
					'</a>'+
				'</div>'+
				'<div class="col-md-3 gallery-grids" style="position:relative;">'+
						'<p>名称：'+data.all[index].aname+'</p>'+
						'<p>描述：让我们一起享受这次旅行——'+data.all[index].adescription+'</p>'+
						'<p>开始时间：'+data.all[index].astarttime+'</p>'+
						'<p>预计结束时间：'+data.all[index].aestimateendtime+'</p>'+
						 '<a href="javascript:doPost('+'&apos;'+'detail'+'&apos;'+','+'&apos;'+'detail'+'&apos;'+','+'&apos;'+data.all[index].aid+'&apos;'+')">'+'<button class="input-group-addon btn btn-primary" style="position: absolute;bottom:0;right:0" >'+'详情'+'</button>'+'</a>'+
				'</div>'
					});
					$("#con").html(html);
 				};
 			},
 			error:function(err){
 				alert("出错了！");
 			}
 		});
 		}else{
 			alert("请输入搜索内容！")
 			return false;
 		};
 	}
 </script>
   </body>
</html>