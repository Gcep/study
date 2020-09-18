<%@page import="com.icss.club.entity.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
							<h2 style="margin-left:50px" >${admin.adName }</h2>
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
								<li><a href="javascript:doPost('admin_index_page','admin_index')" ><i
										class="fa fa-home"></i> 主页 <span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="#general" class="mainmenu">基本</a></li>
										<li><a href="#recent">近期活动</a></li>
									</ul></li>
								<li class="no_planner no_bulletin"><a><i class="fa fa-edit" ></i>待审批<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="javascript:doPost('pending_user','admin_index_pending_user')" >User</a></li>
									</ul></li>
								<li><a ><i class="fa fa-desktop"></i> 个人中心 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="javascript:doPost('page','admin_index_info',null)">基本信息</a></li>
										<li><a href="javascript:doPost('activity','admin_index_activity')">活动</a></li>
										
										

									</ul></li>
								<li class="no_webmaster"><a href="#"><i class="fa fa-table"></i>添加<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li  class="no_planner"><a href="javascript:doPost('page','admin_index_add_notice')" >公告</a></li>
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
								alt=""> <span>${admin.adRealname }</span> <span
								class=" fa fa-angle-down"></span>
						</a>
							<ul class="dropdown-menu dropdown-usermenu pull-right">
								<li><a href="adminLogin.jsp"><i
										class="fa fa-sign-out pull-right"></i> 退&nbsp;&nbsp;出</a></li>
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
							<h3>活动</h3>
						</div>
						<div class="title_right">
							<div
								class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="搜索..."> <span
										class="input-group-btn">
										<button class="btn btn-default" type="button">Go!</button>
									</span>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										参与 <small>Sessions</small>
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
									<ul class="list-unstyled timeline">
									<c:forEach items="${activities }" var="act" >
										<li>
										<!-- <form> -->
										<c:if test="${act.getAStatus()==3 }">
											<div class="block">
												<div class="tags">
													<a href="#" onclick=deleteAct(${act.getAId()},2) class="tag"> <span>撤销</span>
													</a>
												</div>	
												<div class="block_content">
													<h2 class="title">
														<a>
															${act.getAName()}
														</a>	
													</h2>
													<div class="byline">
														<span>开始时间：${act.getAStarttime() }</span><br>
														<span>结束时间：${act.getAEndtime() }</span>
													</div>
													<p class="excerpt">
														${act.getADescription() } 
													</p>		
												</div>
											</div>
										</c:if>
										<c:if test="${act.getAStatus()==2 }">
											<div class="block">
												<div class="tags">
													<a class="tag"> <span>已撤销</span>
													</a>
												</div>	
												<div class="block_content">
													<h2 class="title">
														<a>
															${act.getAName()}
														</a>	
													</h2>
													<div class="byline">
														<span>开始时间：${act.getAStarttime() }</span><br>
														<span>结束时间：${act.getAEndtime() }</span>
													</div>
													<p class="excerpt">
														${act.getADescription() } 
													</p>		
												</div>
											</div>
										</c:if>
										<c:if test="${act.getAStatus()==1 || act.getAStatus()==0 }">
											<div class="block">
												<div class="tags">
													<a href="#" onclick=deleteAct(${act.getAId()},1) class="tag"> <span>撤销</span>
													</a>
												</div>	
												<div class="block_content">
													<h2 class="title">
														<a>
															${act.getAName()}
														</a>	
													</h2>
													<div class="byline">
														<span>开始时间：${act.getAStarttime() }</span><br>
														<span>预计结束时间：${act.getAEstimateendtime() }</span><br>
														描述：&nbsp;&nbsp;<input type="text" id="des${act.getAId() }" value="${act.getADescription() }" style="border-style: none;background-color: transparent;"/><br>
														气候：&nbsp;&nbsp;<input type="text" id="cli${act.getAId() }" required="required" style="border-style: none;background-color: transparent;"/><br>		
														<p>结束时间：</p>
														 <div class="col-md-3">
									                         <div class="daterangepicker dropdown-menu ltr single opensright show-calendar picker_3 xdisplay"><div class="calendar left single" style="display: block;"><div class="daterangepicker_input"><input class="input-mini form-control active" type="text"  value="" style="display: none;"><i class="fa fa-calendar glyphicon glyphicon-calendar" style="display: none;"></i><div class="calendar-time" style="display: none;"><div></div><i class="fa fa-clock-o glyphicon glyphicon-time"></i></div></div><div class="calendar-table"><table class="table-condensed"><thead><tr><th class="prev available"><i class="fa fa-chevron-left glyphicon glyphicon-chevron-left"></i></th><th colspan="5" class="month">Oct 2016</th><th class="next available"><i class="fa fa-chevron-right glyphicon glyphicon-chevron-right"></i></th></tr><tr><th>Su</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th></tr></thead><tbody><tr><td class="weekend off available" data-title="r0c0">25</td><td class="off available" data-title="r0c1">26</td><td class="off available" data-title="r0c2">27</td><td class="off available" data-title="r0c3">28</td><td class="off available" data-title="r0c4">29</td><td class="off available" data-title="r0c5">30</td><td class="weekend available" data-title="r0c6">1</td></tr><tr><td class="weekend available" data-title="r1c0">2</td><td class="available" data-title="r1c1">3</td><td class="available" data-title="r1c2">4</td><td class="available" data-title="r1c3">5</td><td class="available" data-title="r1c4">6</td><td class="available" data-title="r1c5">7</td><td class="weekend available" data-title="r1c6">8</td></tr><tr><td class="weekend available" data-title="r2c0">9</td><td class="available" data-title="r2c1">10</td><td class="available" data-title="r2c2">11</td><td class="available" data-title="r2c3">12</td><td class="available" data-title="r2c4">13</td><td class="available" data-title="r2c5">14</td><td class="weekend available" data-title="r2c6">15</td></tr><tr><td class="weekend available" data-title="r3c0">16</td><td class="available" data-title="r3c1">17</td><td class="today active start-date active end-date available" data-title="r3c2">18</td><td class="available" data-title="r3c3">19</td><td class="available" data-title="r3c4">20</td><td class="available" data-title="r3c5">21</td><td class="weekend available" data-title="r3c6">22</td></tr><tr><td class="weekend available" data-title="r4c0">23</td><td class="available" data-title="r4c1">24</td><td class="available" data-title="r4c2">25</td><td class="available" data-title="r4c3">26</td><td class="available" data-title="r4c4">27</td><td class="available" data-title="r4c5">28</td><td class="weekend available" data-title="r4c6">29</td></tr><tr><td class="weekend available" data-title="r5c0">30</td><td class="available" data-title="r5c1">31</td><td class="off available" data-title="r5c2">1</td><td class="off available" data-title="r5c3">2</td><td class="off available" data-title="r5c4">3</td><td class="off available" data-title="r5c5">4</td><td class="weekend off available" data-title="r5c6">5</td></tr></tbody></table></div></div><div class="calendar right" style="display: none;"><div class="daterangepicker_input"><input class="input-mini form-control" type="text" value="" style="display: none;"><i class="fa fa-calendar glyphicon glyphicon-calendar" style="display: none;"></i><div class="calendar-time" style="display: none;"><div></div><i class="fa fa-clock-o glyphicon glyphicon-time"></i></div></div><div class="calendar-table"><table class="table-condensed"><thead><tr><th></th><th colspan="5" class="month">Nov 2016</th><th class="next available"><i class="fa fa-chevron-right glyphicon glyphicon-chevron-right"></i></th></tr><tr><th>Su</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th></tr></thead><tbody><tr><td class="weekend off available" data-title="r0c0">30</td><td class="off available" data-title="r0c1">31</td><td class="available" data-title="r0c2">1</td><td class="available" data-title="r0c3">2</td><td class="available" data-title="r0c4">3</td><td class="available" data-title="r0c5">4</td><td class="weekend available" data-title="r0c6">5</td></tr><tr><td class="weekend available" data-title="r1c0">6</td><td class="available" data-title="r1c1">7</td><td class="available" data-title="r1c2">8</td><td class="available" data-title="r1c3">9</td><td class="available" data-title="r1c4">10</td><td class="available" data-title="r1c5">11</td><td class="weekend available" data-title="r1c6">12</td></tr><tr><td class="weekend available" data-title="r2c0">13</td><td class="available" data-title="r2c1">14</td><td class="available" data-title="r2c2">15</td><td class="available" data-title="r2c3">16</td><td class="available" data-title="r2c4">17</td><td class="available" data-title="r2c5">18</td><td class="weekend available" data-title="r2c6">19</td></tr><tr><td class="weekend available" data-title="r3c0">20</td><td class="available" data-title="r3c1">21</td><td class="available" data-title="r3c2">22</td><td class="available" data-title="r3c3">23</td><td class="available" data-title="r3c4">24</td><td class="available" data-title="r3c5">25</td><td class="weekend available" data-title="r3c6">26</td></tr><tr><td class="weekend available" data-title="r4c0">27</td><td class="available" data-title="r4c1">28</td><td class="available" data-title="r4c2">29</td><td class="available" data-title="r4c3">30</td><td class="off available" data-title="r4c4">1</td><td class="off available" data-title="r4c5">2</td><td class="weekend off available" data-title="r4c6">3</td></tr><tr><td class="weekend off available" data-title="r5c0">4</td><td class="off available" data-title="r5c1">5</td><td class="off available" data-title="r5c2">6</td><td class="off available" data-title="r5c3">7</td><td class="off available" data-title="r5c4">8</td><td class="off available" data-title="r5c5">9</td><td class="weekend off available" data-title="r5c6">10</td></tr></tbody></table></div></div><div class="ranges" style="display: none;"><div class="range_inputs"><button class="applyBtn btn btn-sm btn-success" type="button">Apply</button> <button class="cancelBtn btn btn-sm btn-default" type="button">Cancel</button></div></div></div>
									                        <fieldset>
									                          <div class="control-group">
									                            <div class="controls">
									                              <div class="col-md-11 xdisplay_inputx form-group has-feedback">
									                                <input type="text" id="end${act.getAId() }" class="form-control has-feedback-left single_cal3"  placeholder="END TIME" aria-describedby="inputSuccess2Status3">
									                                <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>  
									                              </div>
									                            </div>
									                          </div>
									                        </fieldset>     
									                      </div>
									                      <div class="col-md-3">
									                      	<button onclick=updateAct(${act.getAId()},0) class="btn btn-success">更新</button>
									                      	<button onclick=updateAct(${act.getAId()},1) class="btn btn-success">完成</button>
									                      </div>
									                      <p>&nbsp;&nbsp;</p>
													</div>
												</div>
											</div>
											
										</c:if>								
										<!-- </form> -->
										</li>
								 	</c:forEach>										
									</ul>

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
		
		function updateAct(aId,status){
			var aDes="des"+aId;
			var aCli="cli"+aId;
			var end="end"+aId;
			var endtime=(new Date($("#"+end).val())).getTime();
			var m_climate=$("#"+aCli).val();
			var aDescription=$("#"+aDes).val();
			if(m_climate==""){
				alert("请填写当天天气！")
				return false;
			}
			$.ajax({
				url:"updateActivity",
				type:"post",
				asnyc:true,
				dataType:"json",
				data:{
					aId:aId,
					end:endtime,
					m_climate:m_climate,
					aDescription:aDescription,
					status:status
				},
				success:function(data){
					alert(JSON.stringify(data.msg));
				},
				error:function(err){
					alert("出错了！");
				}
			});
		};
		
		function deleteAct(aId,status){
			$.ajax({
				url:"deleteActivity",
				type:"post",
				asnyc:true,
				dataType:"json",
				data:{
					aId:aId,
					status:status	
				},
				success:function(data){
					alert(JSON.stringify(data.msg));
				},
				error:function(err){
					alert("出错了！");
				}
			});
		};
	</script>
     <!-- jQuery Smart Wizard -->
    <script src="statics/vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
    <!-- Bootstrap -->
    <script src="statics/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="statics/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="statics/vendors/nprogress/nprogress.js"></script>

    <!-- Dropzone.js -->
    <script src="statics/vendors/dropzone/dist/min/dropzone.min.js"></script>
    <!-- gauge.js -->
    <script src="statics/vendors/gauge.js/dist/gauge.min.js"></script>

    <!-- bootstrap-progressbar -->
    <script src="statics/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="statics/vendors/iCheck/icheck.min.js"></script>
    <!-- Datatables -->
    <script src="statics/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="statics/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="statics/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="statics/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="statics/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="statics/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="statics/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="statics/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="statics/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="statics/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="statics/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="statics/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="statics/vendors/jszip/dist/jszip.min.js"></script>
    <script src="statics/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="statics/vendors/pdfmake/build/vfs_fonts.js"></script>

    <!-- Skycons -->
    <script src="statics/vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="statics/vendors/Flot/jquery.flot.js"></script>
    <script src="statics/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="statics/vendors/Flot/jquery.flot.time.js"></script>
    <script src="statics/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="statics/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="statics/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="statics/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="statics/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="statics/vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="statics/vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="statics/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="statics/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="statics/vendors/moment/min/moment.min.js"></script>
    <script src="statics/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="statics/build/js/custom.min.js"></script>
	</script>
</body>
</html>
