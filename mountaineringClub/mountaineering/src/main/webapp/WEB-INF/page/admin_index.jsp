<%@page import="com.icss.club.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>登山俱乐部</title>

<!-- Bootstrap -->
<link href="statics/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="statics/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="statics/vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- Dropzone.js -->
<link href="statics/vendors/dropzone/dist/min/dropzone.min.css"
	rel="stylesheet">
<!-- iCheck -->
<link href="statics/vendors/iCheck/skins/flat/green.css"
	rel="stylesheet">
<!-- Datatables -->
<link
	href="statics/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
<link
	href="statics/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
	rel="stylesheet">
<link
	href="statics/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
	rel="stylesheet">
<link
	href="statics/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
	rel="stylesheet">
<link
	href="statics/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
	rel="stylesheet">

<!-- bootstrap-progressbar -->
<link
	href="statics/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css"
	rel="stylesheet">
<!-- bootstrap-wysiwyg -->
<link href="statics/vendors/google-code-prettify/bin/prettify.min.css"
	rel="stylesheet">
<!-- Select2 -->
<link href="statics/vendors/select2/dist/css/select2.min.css"
	rel="stylesheet">
<!-- Switchery -->
<link href="statics/vendors/switchery/dist/switchery.min.css"
	rel="stylesheet">
<!-- starrr -->
<link href="statics/vendors/starrr/dist/starrr.css" rel="stylesheet">

<!-- JQVMap -->
<link href="statics/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet" />
<!-- bootstrap-daterangepicker -->
<link
	href="statics/vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="statics/build/css/custom.min.css" rel="stylesheet">

</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="index.jsp" class="site_title"><i class="fa fa-paw"></i>
						<span>登山俱乐部！</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="statics/images/img.jpg" alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>欢迎您，</span>
							<h2 style="margin-left:50px">${admin.adName }</h2>
						</div>
					</div>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3 id="role" title="${admin.adRole}">
							</h3>
							<ul class="nav side-menu" id="main-menu">
								<li><a href="javascript:doPost('admin_index_page','admin_index')" id="gener"><i
										class="fa fa-home"></i> 主页 <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#general" class="mainmenu">基本</a></li>
										<li><a href="#recent">近期活动</a></li>
									</ul></li>
								<li class="no_bulletin no_planner"><a><i class="fa fa-edit" ></i>待审批<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li ><a href="javascript:doPost('pending_user','admin_index_pending_user')" >用户</a></li>
									</ul></li>
								<li><a><i class="fa fa-desktop"></i>个人中心<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="javascript:doPost('page','admin_index_info',null)">基本信息</a></li>
										<li><a href="javascript:doPost('activity','admin_index_activity')">活动</a></li>
										

									</ul></li>
								<li class="no_webmaster"><a href="#"><i class="fa fa-table"></i>添加<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li class="no_planner"><a  href="javascript:doPost('page','admin_index_add_notice')" >公告</a></li>
										<li class="no_bulletin"><a  href="javascript:doPost('page','admin_index_add_activity',null)" class="mainmenu" >活动</a></li>
									</ul></li>
								<li><a><i class="fa fa-edit"></i>其他<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li class="no_bulletin no_webmaster"><a href="javascript:doPost('acting','admin_index_activities')">已发布活动</a></li>
										<li class="no_planner no_webmaster"><a href="javascript:doPost('notice','admin_index_notice')" >公告</a></li>
										<li class="no_bulletin no_planner"><a href="javascript:doPost('allUser','admin_index_user')">所有用户</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Logout"
							href="adminLogin.jsp"> <span class="glyphicon glyphicon-off"
							aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<nav>
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>

					<ul class="nav navbar-nav navbar-right">
						<li class=""><a href="javascript:;"
							class="user-profile dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false"> <img src="statics/images/img.jpg"
								alt=""> <span>${admin.adRealname }</span> <span
								class=" fa fa-angle-down"></span>
						</a>
							<ul class="dropdown-menu dropdown-usermenu pull-right">
								<li><a href="adminLogin.jsp"><i
										class="fa fa-sign-out pull-right"></i>退&nbsp;&nbsp;出</a></li>
							</ul></li>
					</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!--page content-->

			<div id="container" class="right_col" role="main">
				<!-- top tiles -->
				<div id="container">
					<div id="general" class="row tile_count">
							<div class="col-md-4 col-sm-4 col-xs-4 tile_stats_count">
								<span class="count_top"><i class="fa fa-user"></i>总用户量</span>
								<div class="count">4,567</div>
								<span class="count_bottom"><i class="green">4% </i> 上周</span>
							</div>
							<div class="col-md-4 col-sm-4 col-xs-4 tile_stats_count">
								<span class="count_top"><i class="fa fa-user"></i> 男性用户</span>
								<div class="count green">2,500</div>
								<span class="count_bottom"><i class="green"><i
										class="fa fa-sort-asc"></i>34% </i> 上周</span>
							</div>
							<div class="col-md-4 col-sm-4 col-xs-4 tile_stats_count">
								<span class="count_top"><i class="fa fa-user"></i> 女性用户</span>
								<div class="count">2,067</div>
								<span class="count_bottom"><i class="red"><i
										class="fa fa-sort-desc"></i>12% </i> 上周</span>
							</div>
							<!-- /top tiles -->

							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="dashboard_graph">

										<div class="row x_title">
											<div class="col-md-6">
												<h3>
													登录图 <small>曲线图</small>
												</h3>
											</div>
											
										</div>

										<div class="col-md-12 col-sm-12 col-xs-12">
											<div id="chart_plot_01" class="demo-placeholder"></div>
										</div>
										
										</div>

										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>

						<br />
						<div class="row">
							<!-- Start to do list -->
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="x_panel">
									<div class="x_title">
										<h2>
											公告<small></small>
										</h2>
										<ul class="nav navbar-right panel_toolbox">
											<li><a class="collapse-link"><i
													class="fa fa-chevron-up"></i></a></li>
											
											<li><a class="close-link"><i class="fa fa-close"></i></a>
											</li>
										</ul>
										<div class="clearfix"></div>
									</div>
									<div class="x_content">

										<div>
											<ul class="to_do" >
											<c:forEach items="${notices }" var="noti" >
												<li>
													<p>
														<c:choose>
															<c:when test="${noti.getNIscancel()==0}">
																<input type="checkbox" class="flat">
																${noti.getNTitle() } : ${noti.getNContent() }
															</c:when>
															<c:otherwise>							
																${noti.getNTitle() } : ${noti.getNContent() }
																<small style="color:gray;">(已取消)</small>
															</c:otherwise>
														</c:choose>
													</p>
													<p>by ${noti.getNUId() } in ${noti.getNPublishtime() }</p>
													
												</li>
											
											</c:forEach>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!-- End to do list -->
						</div>

						<div class="row" id="recent">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="x_panel">
									<div class="x_title">
										<h2>
											近期活动  <small>Sessions</small>
										</h2>
										<ul class="nav navbar-right panel_toolbox">
											<li><a class="collapse-link"><i
													class="fa fa-chevron-up"></i></a></li>
											<li><a class="close-link"><i class="fa fa-close"></i></a>
											</li>
										</ul>
										<div class="clearfix"></div>
									</div>
									<div class="x_content">
										<div class="dashboard-widget-content">

											<ul class="list-unstyled timeline widget">
											<c:forEach items="${activities }" var="act" >
												<li>
													<div class="block">
														<div class="block_content">
															<h2 class="title">
																<a href="javascript:doPost('detail','admin_index_detail','${act.activity.AId}')">${act.activity.getAName() }</a>
															</h2>
															<div class="byline">
																<span>${act.apReservationtime }</span> by <a> ${admin.adRealname}</a>
															</div>
															<p class="excerpt">
																${act.activity.getADescription() }<a href="javascript:doPost('detail','admin_index_detail','${act.activity.AId}')">Read&nbsp;More</a>
															</p>
														</div>
													</div>
												</li>
											</c:forEach>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--page content-->


			<!-- footer content -->
			<footer>
			<div class="pull-right">
				<p>©2019 登山俱乐部版权所有！</p>
			</div>
			<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->
		</div>
	</div>

	<!-- jQuery -->
	<script src="statics/vendors/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript">
	function showRole() {
		$("#gener").trigger("click");
		var role = $("#role").attr("title");
		if (role == 0) {
			$("#role").text("用户管理员");
			$(".no_webmaster").css("display", "none");
		} else if (role == 1) {
			$("#role").text("活动策划");
			$(".no_planner").css("display", "none");
		} else {
			$("#role").text("公告管理员");
			$(".no_bulletin").css("display", "none");
		}
	}
	$(document).ready(function() {
		window.onload = showRole;
	});
	</script>
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
	    	if(data!=null){
	    		var myInput = document.createElement("input");     
	 	    	myInput.setAttribute("name", 'activity');  
	 	    	myInput.setAttribute("value", data);
	    	}
	    	myForm.appendChild(myInput);
	        document.body.appendChild(myForm);   
	        myForm.submit(); 
	        document.body.removeChild(myForm);      
    	}
	</script>
	<!-- Bootstrap -->
	<script src="statics/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="statics/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="statics/vendors/nprogress/nprogress.js"></script>
	<!--  Chart.js -->
    <script src="statics/vendors/Chart.js/dist/Chart.min.js"></script>
	<!-- gauge.js -->
	<script src="statics/vendors/gauge.js/dist/gauge.min.js"></script>
	<!-- bootstrap-progressbar -->
	<script
		src="statics/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="statics/vendors/iCheck/icheck.min.js"></script>
	<!-- Skycons -->
	<script src="statics/vendors/skycons/skycons.js"></script>
	<!-- Flot -->
	<script src="statics/vendors/Flot/jquery.flot.js"></script>
	<script src="statics/vendors/Flot/jquery.flot.pie.js"></script>
	<script src="statics/vendors/Flot/jquery.flot.time.js"></script>
	<script src="statics/vendors/Flot/jquery.flot.stack.js"></script>
	<script src="statics/vendors/Flot/jquery.flot.resize.js"></script>

	<!-- Flot plugins -->
	<script
		src="statics/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
	<script src="statics/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
	<script src="statics/vendors/flot.curvedlines/curvedLines.js"></script>
	<!-- DateJS -->
	<script src="statics/vendors/DateJS/build/date.js"></script>
	<!-- JQVMap -->
	<script src="statics/vendors/jqvmap/dist/jquery.vmap.js"></script>
	<script src="statics/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
	<script
		src="statics/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script src="statics/vendors/moment/min/moment.min.js"></script>
	<script
		src="statics/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="statics/build/js/custom.min.js"></script>
	<script type="text/javascript">

		/* $(".mainmenu").click(function(){
			var index=$(this).index(".mainmenu");
			var page=$(".mainmenu:eq("+index+")").attr("target");
			$.ajax({
				type:"POST",
				url:"manage_index/page",
				async:true,
				data:{
					pageName:page
				},
				success:function(data){
					$("#container").empty();
					$("#container").html(data);
				},
				error:function(err){
					alert("出错了");
				}	
			});
		}); */
	</script>
</body>
</html>
