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
							<h3 id="role" title="${admin.adRole}"></h3>
							<ul class="nav side-menu" id="main-menu">
								<li><a href="javascript:doPost('admin_index_page','admin_index')" ><i
										class="fa fa-home"></i> 主页<span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#general" class="mainmenu">基本</a></li>
										<li><a href="#recent">近期活动</a></li>
									</ul></li>
								<li class="no_planner no_bulletin"><a><i class="fa fa-edit" ></i>待审批<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li class="Webmaster"><a href="javascript:doPost('pending_user','admin_index_pending_user')" >用户</a></li>
									</ul></li>
								<li><a><i class="fa fa-desktop" ></i>个人中心 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="javascript:doPost('page','admin_index_info',null)">基本信息</a></li>
										<li><a href="javascript:doPost('activity','admin_index_activity')">活动</a></li>
										
										<li><a
											href="javascript:doPost('reserve','admin_index_reserve')">预订</a></li>

									</ul></li>
								<li class="no_webmaster"><a href="#"><i class="fa fa-table"></i>添加<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li class="no_planner"><a href="javascript:doPost('page','admin_index_add_notice')" >公告</a></li>
										<li class="no_bulletin"><a href="javascript:doPost('page','admin_index_add_activity',null)" class="mainmenu" >活动</a></li>
									</ul></li>
								<li><a id="gener"><i class="fa fa-edit"></i>其他<span
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

            <div class="page-title">
              <div class="title_left">
                <h3>公告 <small>已发布</small></h3>
              </div>

            
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>公告<small>管理员可修改</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class="row">
                      <div class="col-sm-12 mail_list_column">
                        <button class="btn btn-sm btn-success btn-block" type="button">NOTICE</button>
                        <c:forEach items="${ notices}" var="noti">
                        <a href="#">
                          <div class="mail_list">
                            <div class="left">
                              <i class="fa fa-edit"></i>
                            </div>
                            <div class="right">
                            <form action="notice_change" method="post">
                            <input type="text" id="nid" name="nid" value="${noti.getNId() }" style="display:none"/>
                            	<h3><input type="text" name="title" placeholder="${noti.getNTitle() }"  value="${noti.getNTitle() }" style="border-style:none"/>
                            		<small>by <input type="text" id="uid" placeholder="${noti.getNUId()}"  value="${noti.getNUId()}" style="border-style:none;width: 10px;" readonly="readonly"/>
                            		 in <input type="text" id="publishtime" placeholder="${noti.getNPublishtime() }"  value="${noti.getNPublishtime() }" style="border-style:none;width: 200px;" readonly="readonly"/></small>
                            	</h3>
                            	<textarea class="form-control" name="content" rows="3" name="content" placeholder="${noti.getNContent() }"  value="${noti.getNContent() }" style="border-style:none"></textarea>
                            
                            	<small style="float: right">优先级:<input type="text" name="priority" placeholder="${noti.getNPriority() }"  value="${noti.getNPriority() }" style="border-style:none; "/>
		                            	<c:if test="${noti.getNIscancel()==1}">
		                            		已撤销
		                            	</c:if>
                            	</small>
											<hr>
											<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-4">
											<button class="btn btn-primary" type="button" onclick="deletel(${noti.getNId()});">删除</button>&nbsp;&nbsp;&nbsp;&nbsp;
												<button type="submit" class="btn btn-success">修改</button>&nbsp;&nbsp;&nbsp;&nbsp;
												 <c:choose>
					                            	<c:when test="${noti.getNIscancel()==0}">
					                            		<button class="btn btn-primary" type="button" onclick="cancel(${noti.getNId()});">撤销</button>&nbsp;&nbsp;&nbsp;&nbsp;
					                            	</c:when>
					                            	<c:when test="${noti.getNIscancel()==1}">
					                            		<button class="btn btn-primary" type="button" onclick="resume(${noti.getNId()});">恢复</button>&nbsp;&nbsp;&nbsp;&nbsp;
					                            	</c:when>
					                            </c:choose>
												
											</div>
									
                            </form>
                            </div>
                          </div>
                        </a>
                        </c:forEach>
                      </div>
                      <!-- /MAIL LIST -->
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
	function cancel(nid){
		var nid=nid;
		$.ajax({
			url:"cancel_notice",
			type:"post",
			async:true,
			dataType:"json",
			data:{
				 nid:nid
			},
			success:function(data){
				alert(data.msg)
			},
			error:function(data){
			}
		});
	}
	function resume(nid){
		var nid=nid;
		$.ajax({
			url:"resume_notice",
			type:"post",
			async:true,
			dataType:"json",
			data:{
				 nid:nid
			},
			success:function(data){
				alert(data.msg)
			},
			error:function(data){
			}
		});
	}
	function deletel(nid){
		var nid=nid;
		$.ajax({
			url:"delete_notice",
			type:"post",
			async:true,
			dataType:"json",
			data:{
				 nid:nid
			},
			success:function(data){
				alert(data.msg)
			},
			error:function(data){
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
