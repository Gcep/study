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
<style type="text/css">
	.changeInfo{
	border-style: none;
	background-color: transparent;
	}
</style>
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="index.jsp" class="site_title"><i class="fa fa-paw"></i>
							<span> 登山俱乐部！</span></a>
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
							<h3 id="role" title="${admin.adRole}"></h3>
							<ul class="nav side-menu" id="main-menu">
								<li><a href="javascript:doPost('admin_index_page','admin_index')"><i
										class="fa fa-home"></i> 主页 <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#general" class="mainmenu">基本</a></li>
										<li><a href="#recent">近期活动</a></li>
									</ul></li>
								<li class="no_planner no_bulletin"><a><i class="fa fa-edit" ></i>待审批<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="javascript:doPost('pending_user','admin_index_pending_user')" >用户</a></li>
									</ul></li>
								<li><a id="gener"><i class="fa fa-desktop"></i> 个人中心 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="javascript:doPost('page','admin_index_info',null)">基本信息</a></li>
										<li><a href="javascript:doPost('activity','admin_index_activity')">活动</a></li>
										
									

									</ul></li>
								<li class="no_webmaster"><a href="#"><i class="fa fa-table"></i>添加<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li class="no_planner"><a href="javascript:doPost('page','admin_index_add_notice')" >公告</a></li>
										<li class="no_bulletin"><a href="javascript:doPost('page','admin_index_add_activity',null)" class="mainmenu" >活动</a></li>
									</ul></li>
								<li><a><i class="fa fa-edit"></i>其他<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li class="no_bulletin no_webmaster"><a href="javascript:doPost('acting','admin_index_activities')">已发布活动</a></li>
										<li class="no_planner no_webmaster"><a href="javascript:doPost('notice','admin_index_notice')" >公告</a></li>
										<li class="no_planner no_bulletin"><a href="javascript:doPost('allUser','admin_index_user')">所有用户</a></li>
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
								alt=""> <span> ${admin.adRealname }</span> <span
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
				<div class="">
					<div class="col-md-12 col-sm-12 col-xs-12"
						style="margin-top: 20px;">
						<div class="x_panel">
							<div class="x_title">
								<h2>
									基本信息 <small>Stripped table subtitle</small>
								</h2>
								<ul class="nav navbar-right panel_toolbox">
									<li><a class="collapse-link"><i
											class="fa fa-chevron-up"></i></a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown" role="button" aria-expanded="false"><i
											class="fa fa-wrench"></i></a>
										<ul class="dropdown-menu" role="menu">
											<li><a onclick=is_change();>确定修改?</a></li>
										</ul></li>
									<li><a class="close-link"><i class="fa fa-close"></i></a>
									</li>
								</ul>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
							<form method="post"> 
								<table class="table table-striped">
									<thead>
										<tr>
											<th>#</th>
											<th>#<input type="text" id="Id" value="${admin.adId }" style="display: none"/></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">用户名</th>
											<td><input type="text" id="Name" placeholder="${admin.adName }"  value="${admin.adName }"  class="changeInfo"/> </td>
										</tr>
										<!--  <tr>
											<th scope="row">Password</th>
											<td><input type="password" id="Password" placeholder="${admin.adPassword }"  value="${admin.adPassword }" class="changeInfo"/> </td>
										</tr>-->
										<tr>
											<th scope="row">真实姓名</th>
											<td><input type="text" id="RealName" placeholder="${admin.adRealname }"  value="${admin.adRealname }" class="changeInfo"/> </td>
										</tr>
										<tr>
											<th scope="row">性别</th>
											<td>
												<c:if test="${admin.adSex==0}">
													<c:out value="男"/>
												</c:if>
												<c:if test="${admin.adSex==1}">
													<c:out value="女"/>
												</c:if>
											</td>
										</tr>
										<tr>
											<th scope="row">身份证号</th>
											<td>${admin.adCardid }</td>
										</tr>
										<tr>
											<th scope="row">电话号码</th>
											<td><input type="text" id="Phone" placeholder="${admin.adPhone }"  value="${admin.adPhone }" class="changeInfo"/></td>
										</tr>
										<tr>
											<th scope="row">电子邮箱</th>
											<td> <input type="text" id="Email" placeholder="${admin.adEmail }"  value="${admin.adEmail }" class="changeInfo"/></td>
										</tr>
										<tr>
											<th scope="row">住址</th>
											<td><input type="text" id="Address" placeholder="${admin.adAddress}"  value="${admin.adAddress}" class="changeInfo"/></td>
										</tr>
									</tbody>
								</table>
							</form>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>

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
	function is_change(){
		var Id =$("#Id").val();
		var Name=$("#Name").val();
		var RealName=$("#RealName").val();
		var Phone=$("#Phone").val();
		var Email=$("#Email").val();
		var Address=$("#Address").val();
		$.ajax({
			url:"admin_change",
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
			error:function(data){
				console.log("msg:"+data.msg.responseText);
				console.log("status:"+data.status);
				console.log("error:"+data.statusText);
			}
		});
	}
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
