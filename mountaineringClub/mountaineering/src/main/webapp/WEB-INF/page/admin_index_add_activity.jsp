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

<title>登山俱乐部！</title>

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
							<span>欢迎您,</span>
							<h2 style="margin-left: 50px">${admin.adName }</h2>
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
								<li><a><i class="fa fa-desktop"></i> 个人中心 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="javascript:doPost('page','admin_index_info',null)">基本信息</a></li>
										<li><a href="javascript:doPost('activity','admin_index_activity')">活动</a></li>
										

									</ul></li>
								<li class="no_webmaster"><a id="gener"><i class="fa fa-table"></i>添加<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li class="no_planner"><a  href="javascript:doPost('page','admin_index_add_notice')" >公告</a></li>
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

					</div>
					<div class="clearfix"></div>

					<div class="row">

						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										发布活动 <small>Sessions</small>
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

									<!-- Smart Wizard -->


									<div id="wizard" class="form_wizard wizard_horizontal">
										<ul class="wizard_steps">
											<li><a href="#step-1"> <span class="step_no">1</span>
													<span class="step_descr"> Step 1<br /> <small>请先填满活动的基本属性</small>
												</span>
											</a></li>
											<li><a href="#step-2"> <span class="step_no">2</span>
													<span class="step_descr"> Step 2<br /> <small>请选择活动的起始时间</small>
												</span>
											</a></li>
											<li><a href="#step-3"> <span class="step_no">3</span>
													<span class="step_descr"> Step 3<br /> <small>请上传本次活动的路线图</small>
												</span>
											</a></li>
										</ul>
										<form id="addActivity" class="form-horizontal form-label-left"
											action="add_Activity" method="post">
											<div id="step-1">


												<div class="form-group">
													<label class="control-label col-md-3 col-sm-3 col-xs-12"
														for="a_name">活动名 <span class="required">*</span>
													</label>
													<div class="col-md-6 col-sm-6 col-xs-12">
														<input type="text" id="a_name" name="a_name"
															required="required"
															class="form-control col-md-7 col-xs-12">
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3 col-sm-3 col-xs-12"
														for="a_description">描述<span
														class="required">*</span>
													</label>
													<div class="col-md-6 col-sm-6 col-xs-12">
														<input type="text" id="a_description" name="a_description"
															required="required"
															class="form-control col-md-7 col-xs-12">
													</div>
												</div>
												<div class="form-group">
													<label for="mountain"
														class="control-label col-md-3 col-sm-3 col-xs-12">山峰<span
														class="required">*</span></label>
													<div class="col-md-6 col-sm-6 col-xs-12">
														<input id="mountain"
															class="form-control col-md-7 col-xs-12" type="text"
															name="mountain">
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3 col-sm-3 col-xs-12">类型
														<span class="required">*</span>
													</label>
													<div class="col-md-6 col-sm-6 col-xs-12">
														<select class="select2_group form-control" name="type">
															<option value="0">阿尔卑斯式</option>
															<option value="1">金字塔形兵站式</option>
															<option value="2">技术式</option>
															<option value="3">娱乐式</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3 col-sm-3 col-xs-12">难度系数（YSD）
														<span class="required">*</span>
													</label>
													<div class="col-md-6 col-sm-6 col-xs-12">
														<input id="level" name="level"
															class="form-control form-control col-md-7 col-xs-12"
															required="required" type="text">
													</div>
												</div>
											</div>
											<div id="step-2">
												<div class="form-group">
													<label class="control-label col-md-3 col-sm-3 col-xs-12"
														for="m_altitude">山峰海拔高度<span
														class="required">*</span>
													</label>
													<div class="col-md-6 col-sm-6 col-xs-12">
														<input type="text" id="m_altitude" name="m_altitude"
															required="required"
															class="form-control col-md-7 col-xs-12">
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3 col-sm-3 col-xs-12"
														for="m_location">位置<span
														class="required">*</span>
													</label>
													<div class="col-md-6 col-sm-6 col-xs-12">
														<input type="text" id="m_location" name="m_location"
															required="required"
															class="form-control col-md-7 col-xs-12">
													</div>
												</div>
												<div class="form-group">
													<label for="m_climate"
														class="control-label col-md-3 col-sm-3 col-xs-12">预计气候<span
														class="required">*</span></label>
													<div class="col-md-6 col-sm-6 col-xs-12">
														<input id="m_climate"
															class="form-control col-md-7 col-xs-12" type="text"
															name="m_climate">
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3 col-sm-3 col-xs-12"
														for="a_time">开始和结束 <span class="required">*</span>
													</label>
													<div class="col-md-6 col-sm-6 col-xs-12">
														<div class="control-group">
															<div class="controls">
																<div class="input-prepend input-group">
																	<span class="add-on input-group-addon"><i
																		class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
																	<input type="text" name="reservation-time"
																		id="reservation-time" class="form-control"
																		value="11/01/2019 - 11/01/2019" /> <input type="text"
																		name="start" id="start" style="display: none;"
																		class="form-control" value="2019" /> <input
																		type="text" name="end" id="end" class="form-control"
																		style="display: none;" value="2019" />
																		<input type="text" id="imageId" name="imageId" style="display: none;">
																	<input id="form1" type="submit" value="提交" style="display: none"/>	
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</form>

										<div id="step-3">
											<div class="page-title">
												<div class="title_left">
													<h3>Form Upload</h3>
												</div>
												<div class="clearfix"></div>

												<div class="row">
													<div class="col-md-12 col-sm-12 col-xs-12">
														<div class="x_panel">
															<div class="x_title">
																<h2>上传路线图</h2>
																<ul class="nav navbar-right panel_toolbox">
																	<li><a class="collapse-link"><i
																			class="fa fa-chevron-up"></i></a></li>
																	<li><a class="close-link"><i
																			class="fa fa-close"></i></a></li>
																</ul>
																<div class="clearfix"></div>
															</div>
															<div class="x_content">
																<form id="uploadForm"
																	enctype="multipart/form-data" method="post">
																	<input type="file" name="img" id="img" style="float:left;"> 
																	<input type="submit" value="上传" style="float:left;" >
																</form>
																<p>活动的路线图</p>
																<br /> <br /> <br /> <br />
															</div>
														</div>
													</div>
												</div>

											</div>

										</div>

										<!-- End SmartWizard Content -->
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
	<!-- jQuery Smart Wizard -->
	<script src="statics/js/jquery-form.js"></script>
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
	//date格式
	Date.prototype.Format = function (fmt) { //author: meizz
		  var o = {
		    "M+": this.getMonth() + 1, //月份
		    "d+": this.getDate(), //日
		    "h+": this.getHours(), //小时
		    "m+": this.getMinutes(), //分
		    "s+": this.getSeconds(), //秒
		    "q+": Math.floor((this.getMonth() + 3) / 3), //季度
		    "S": this.getMilliseconds() //毫秒
		  };
		  if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
		  for (var k in o)
		  if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
		  return fmt;
		}
	//以POST方法提交数据
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
 	    	myInput.setAttribute("name", 'activity'); 
 	    	myInput.setAttribute("value", 'activity');
	    	if(data!=null){
				myInput.setAttribute("value", data);
	    	}
	    	myForm.appendChild(myInput);
	        document.body.appendChild(myForm);   
	        myForm.submit(); 
	        document.body.removeChild(myForm);      
    	}
		//Smart Wizard 
		jQuery(document).ready(function(){ 
    jQuery('#wizard').smartWizard({onLeaveStep:leaveAStepCallback,onFinish:onFinishCallback}); 
		function leaveAStepCallback(obj){ 
	        var step_no= obj.attr('rel'); 
	        return validateSteps(step_no); 
	    } 
	 
	    function onFinishCallback(){ 
	       if(validateAllSteps()){ 
	            jQuery("#addActivity").submit(); 
	       } 
	    } 
	}); 
	 
	function validateAllSteps(){ 
	    var isStepValid = true; 
	     
	    if(validateStep1() == false){ 
	        isStepValid = false; 
	        jQuery('#wizard').smartWizard('setError',{stepno:1,iserror:true});          
	    }else{ 
	        jQuery('#wizard').smartWizard('setError',{stepno:1,iserror:false}); 
	    } 
	    if(validateStep2() == false){ 
	        isStepValid = false; 
	        jQuery('#wizard').smartWizard('setError',{stepno:2,iserror:true});          
	    }else{ 
	        jQuery('#wizard').smartWizard('setError',{stepno:2,iserror:false}); 
	    } 
	    if(validateStep3() == false){ 
	        isStepValid = false; 
	        jQuery('#wizard').smartWizard('setError',{stepno:3,iserror:true});          
	    }else{ 
	        jQuery('#wizard').smartWizard('setError',{stepno:3,iserror:false}); 
	    } 
	     
	    if(!isStepValid){ 
	        jQuery('#wizard').smartWizard('showMessage','请先上传路线图！'); 
	    } 
	     
	    return isStepValid; 
	}    
	 
	function validateSteps(step){ 
	    var isStepValid = true; 
	     
	    // validate step 1 
	    if(step == 1){ 
	        if(validateStep1() == false ){ 
	            isStepValid = false; 
	            jQuery('#wizard').smartWizard('showMessage','完善所有事项，然后点击下一步'); 
	            jQuery('#wizard').smartWizard('setError',{stepno:step,iserror:true}); 
	        }else{ 
	            jQuery('#wizard').smartWizard('setError',{stepno:step,iserror:false}); 
	        } 
	    } 
	    
	    if(step == 2){ 
	        if(validateStep2() == false ){ 
	            isStepValid = false; 
	            jQuery('#wizard').smartWizard('showMessage','请选择一个正确的时间，然后点击下一步.'); 
	            jQuery('#wizard').smartWizard('setError',{stepno:step,iserror:true}); 
	        }else{ 
	            jQuery('#wizard').smartWizard('setError',{stepno:step,iserror:false}); 
	        } 
	    } 
	 
	    // validate step3 
	    if(step == 3){ 
	        if(validateStep3() == false ){ 
	            isStepValid = false; 
	            jQuery('#wizard').smartWizard('showMessage','请先上传路线图！'); 
	            jQuery('#wizard').smartWizard('setError',{stepno:step,iserror:true}); 
	        }else{ 
	            jQuery('#wizard').smartWizard('setError',{stepno:step,iserror:false}); 
	        } 
	    } 
	     
	    if (isStepValid == true) { 
	        jQuery('#wizard').smartWizard('hideMessage',''); 
	    } 
	 
	    return isStepValid; 
	} 
	 
	function validateStep1(){ 
	    var name=$("#a_name").val();
		if(name!=""){
		}else{
			alert("请填写活动名称！");
			return false;
		}
		var description=$("#a_description").val();
		if(description!=""){		
		}else{
			alert("请填写活动描述！");
			return false;
		}
		var mountain=$("#mountain").val();
		if(mountain!=""){		
		}else{
			alert("请填写山峰名称！");
			return false;
		}
		var level=$("#level").val();
		var checklevel=new RegExp(/^[0-5]\.([0-5a-z]{1,2})$/);
		if(level!=""){
			if(checklevel.test(level)){
				return true;
			}else{
				alert("请输入一个正确的YSD系数！");
				return false;
			}
		}else{
			alert("请输入一个正确的YSD系数！");
			return false;
		}
	} 
	 
	function validateStep2(){ 
	    var isValid = true;
	    var altitude=$("#m_altitude").val();
	    var checkaltitude=new RegExp(/^[0-9]{3,4}(.[0-9]{1,3})?$/);
		if(altitude!=""){
			if(checkaltitude.test(altitude)){
				
			}else{
				alert("请输入正确的海拔高度（>100且具有最大三位小数的正实数）！");
				return false;
			}
		}else{
			alert("请填写山峰海拔高度！");
			return false;
		}
		var location=$("#m_location").val();
		if(location!=""){		
		}else{
			alert("请填写活动地点！");
			return false;
		}
		var climate=$("#m_climate").val();
		if(climate!=""){		
		}else{
			alert("请填写预计天气！");
			return false;
		}
	    if($("#reservation-time").val()!=""){
	    	var time=($("#reservation-time").val()).split("-");
	    	$.each(time,function(index,value){
		    		var temp=(value.trim()).split(" ");
		    		var date=temp[0];
		    		var ap=temp[2];
		    		var hour,min;
		    		var tmp=temp[1].split(":");
		    		if(ap=="AM"){
				    	hour=tmp[0];
				    	min=tmp[1];
			    	}else{
			    		hour=parseInt(tmp[0])+12;
			    		//alert(hour);
			    		min=tmp[1];
			    	}
		    		//alert(date+" "+hour+":"+min)
		    		if(index==0){
		    			var start=date+" "+hour+":"+min;
		    			var startt = (new Date(start)).Format("yyyyMMdd");
		    			var now=(new Date()).Format("yyyyMMdd");
		    			//alert(parseInt(startt)-parseInt(now));
		    			if(parseInt(startt)-parseInt(now)<0){
		    				isValid=false;
		    			}
		    			$("#start").val((new Date(start)).getTime());
		    		}else{
		    			var end=date+" "+hour+":"+min;
		    			$("#end").val((new Date(end)).getTime());
		    		}
		    		
	    	});
	    	
	    }
	    return isValid; 
	} 
	function validateStep3(){ 
	    var isValid = true;     
	    var imageId=$("#imageId").val();
	    if (imageId==""||imageId==null) {
	    	var isValid = false; 
	    }
	    return isValid; 
	};
	
	//图片上传
		function Checkimg(){
		    var img=$("#img").val();
		    var checkimg=/^(\s|\S)+(jpg|png|JPG|PNG)+$/;
		    if (!checkimg.test(img)) {
		    	return false; 
		    }
		    return true;
		}
			$("#uploadForm").ajaxForm({
				beforeSubmit:Checkimg,
				url:"${pageContext.request.contextPath}/upload_file",//请求URL
				type:"post",
				dataType:"text",//响应回来的数据类型
				async:true,
				success:function(data){
					$("#imageId").val(data);
					alert("上传成功！");
				},
				error:function(){
					alert("上传失败!");
				}
			});
	
	
	</script>
	<!-- jQuery Smart Wizard -->
	<script
		src="statics/vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
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
	<script
		src="statics/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="statics/vendors/iCheck/icheck.min.js"></script>
	<!-- Datatables -->
	<script
		src="statics/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="statics/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	<script
		src="statics/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="statics/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
	<script
		src="statics/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
	<script
		src="statics/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
	<script
		src="statics/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
	<script
		src="statics/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
	<script
		src="statics/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
	<script
		src="statics/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="statics/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
	<script
		src="statics/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
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
	</script>
</body>
</html>
