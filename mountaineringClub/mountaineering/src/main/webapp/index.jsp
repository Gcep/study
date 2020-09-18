<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
   <head>
      <title>Home</title>
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
      <link href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="${pageContext.request.contextPath}/statics/css/fontawesome-all.css" rel="stylesheet">
      <!-- //font-awesome icons -->
	 <!--stylesheets-->
		<link href="${pageContext.request.contextPath}/statics/css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
	
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
	<section class="main_section_agile">
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
                   <ul class="navbar-nav" id="fWForm">
							 <li class="nav-item active">
								<a class="nav-link" href="index.jsp">首页<span class="sr-only">(current)</span></a>
							 </li>
							  <li class="nav-item">
									<a href="login.jsp" class="nav-link ">登录</a>
								</li>
							 <li class="nav-item">
								<a href="javascript:doPost('page','contact')" class="nav-link">联系</a>
							 </li>
						  </ul>
						   
				</div>

               </div>
            </nav>				
		</div>
		<script>
			
		</script>
   </div>
         <!-- //Navigation -->
	</div>
	<!-- w3-banner -->
			<div class="w3-banner">
				<div id="typer"></div>
					<p class="mx-auto py-3">追求健康的生活，我们提供最全面的活动信息，组织来自五湖四海的爱好者，以不同的类型进行登山旅行，满足你们对刺激的要求！</p>
			</div>
					
		<!-- //w3-banner -->

	</section>
	</header>
	<!-- //banner -->
<!-- news  -->
        <section class="wthree-row w3-about py-md-5">
		<div class="container py-4 mt-2">
			<h3 class="tittle text-center mb-3">活动 & 照片墙</h3>
			<p class="tit text-center mx-auto">由参与登山运动者们提供的风景&游客照<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius eum inventore consectetur dolorum, voluptatum possimus temporibus vel ab, nesciunt quod!</p>
              <div class="card-deck pt-4 mt-md-4">
				  <div class="card">
					<img src="statics/images/g11.jpg" class="img-fluid"  alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h4 class="card-title">优美的珠穆朗玛峰</h4>
					  <p class="card-text mb-3 ">这是一次攀登珠穆朗玛峰的旅行<br>This is a longer card with supporting text below as a natural lead-in to additional content.</p>
						<a href="#" data-toggle="modal" data-target="#myModal">查看&nbsp;更多</a>
					</div>
					<div class="card-footer">
					  <small class="text-muted">更新于3分钟前</small>
					</div>
				  </div>
				  <div class="card">
					<img src="statics/images/g10.jpg" class="img-fluid"  alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h4 class="card-title">优美的珠穆朗玛峰</h4>
					   <p class="card-text mb-3 ">这是一次攀登珠穆朗玛峰的旅行<br>This is a longer card with supporting text below as a natural lead-in to additional content.</p>
						<a href="#" data-toggle="modal" data-target="#myModal">查看&nbsp;更多</a>
					</div>
					<div class="card-footer">
					  <small class="text-muted">更新于3分钟前</small>
					</div>
				  </div>
				  <div class="card">
					<img src="statics/images/g9.jpg" class="img-fluid"  alt="Card image cap">
					<div class="card-body w3ls-card">
					  <h4 class="card-title">优美的珠穆朗玛峰</h4>
					   <p class="card-text mb-3 ">这是一次攀登珠穆朗玛峰的旅行<br>This is a longer card with supporting text below as a natural lead-in to additional content.</p>
					  <a href="#" data-toggle="modal" data-target="#myModal">查看&nbsp;更多</a>
					</div>
					<div class="card-footer">
					  <small class="text-muted">更新于3分钟前</small>
					</div>
				  </div>
				</div>
            </div>
        </section>
        <!-- //news -->
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
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">登山俱乐部</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
					<div class="agileits-w3layouts-info">
						<img src="statics/images/g12.jpg" class="img-responsive" alt="" />
						<p>注册会员，我们提供最全面的活动信息！ </p>
					</div>
				</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- //Modal -->
     <!--js working-->
      <script src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
      <!--//js working-->
	<!-- smooth scrolling -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/move-top.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/easing.js"></script>
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
	        
				/*$.ajax({
				    url:'/MountaineeringClub/page',
				    async:false,
				    data:{
				        pageName:page,
				        logining:false
				    },
				    type:'post',
				    success:function(mav){
				    	
				    },
				    error:function (err){
				        alert(err);
				    }
				});
				return false;
			});  */
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
<!-- //smooth scrolling -->
<!-- stats -->
	<script src="${pageContext.request.contextPath}/statics/js/jquery.waypoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js/jquery.countup.js"></script>
	<script>
		$('.counter-agileits-w3layouts').countUp();
	</script>
	<!-- //stats -->
<!-- typer js--><!-- For banner text -->
<script src='${pageContext.request.contextPath}/statics/js/jquery.typer.js'></script>
	<script>
						var win = $(window),
							foo = $('#typer');

						foo.typer(['我们提供最好的导游', '体验最刺激的运动 ', '全年适宜的旅行 ']);

						// unneeded...
						win.resize(function(){
							var fontSize = Math.max(Math.min(win.width() / (1 * 10), parseFloat(Number.POSITIVE_INFINITY)), parseFloat(Number.NEGATIVE_INFINITY));

							foo.css({
								fontSize: fontSize * .8 + 'px'
							});
						}).resize();
					</script>
<!-- //typer js--><!-- //For banner text -->


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
 <script src="${pageContext.request.contextPath}/statics/js/main.js"></script>
<!--bootstrap working-->
    <script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
 <!-- //bootstrap working-->
   </body>
</html>