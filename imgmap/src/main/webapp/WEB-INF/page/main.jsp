<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	System.out.println(basePath + "sys");
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<title>实景影像管理与发布系统</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width" />
	<meta name="renderer" content="webkit" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="format-detection" content="telephone=no" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
	
	
	<link href="scripts/angle/vendor/fontawesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="scripts/angle/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
	<link href="scripts/angle/vendor/weather-icons/css/weather-icons.min.css" rel="stylesheet" type="text/css">
	<link href="scripts/angle/vendor/animate.css/animate.min.css" rel="stylesheet" type="text/css">
	<link href="scripts/angle/vendor/whirl/dist/whirl.css" rel="stylesheet" type="text/css">
	<link href="scripts/angle/vendor/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">
	<link href="scripts/angle/app/css/bootstrap.css" id="bscss" rel="stylesheet" type="text/css">
	<link href="scripts/angle/vendor/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css">
	<link href="scripts/angle/app/css/app.css" id="maincss" rel="stylesheet" type="text/css">
	<link href="scripts/extjs/classic/theme-triton/resources/theme-triton-all.css" rel="stylesheet" type=text/css>
	
	<script src="scripts/angle/vendor/modernizr/modernizr.custom.js"></script>
	<script src="scripts/angle/vendor/matchMedia/matchMedia.js"></script>
	<script src="scripts/angle/vendor/jquery/dist/jquery.js"></script>
	<script src="scripts/angle/vendor/jquery/dist/jquery.form.js"></script>
	<script src="scripts/angle/vendor/bootstrap/dist/bootstrap.js"></script>
	<script src="scripts/angle/vendor/jQuery-Storage-API/jquery.storageapi.js"></script>
	<script src="scripts/angle/vendor/jquery.easing/js/jquery.easing.js"></script>
	<script src="scripts/angle/vendor/animo.js/animo.js"></script>
	<script src="scripts/angle/vendor/slimScroll/jquery.slimscroll.min.js"></script>
	<script src="scripts/angle/vendor/screenfull/dist/screenfull.js"></script>
	<script src="scripts/angle/vendor/jquery-localize-i18n/dist/jquery.localize.js"></script>
	<script src="scripts/angle/vendor/jquery-validation/dist/jquery.validate.js"></script>
	<script src="scripts/angle/vendor/sparkline/index.js"></script>
	<script src="scripts/angle/vendor/Flot/jquery.flot.js"></script>
	<script src="scripts/angle/vendor/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
	<script src="scripts/angle/vendor/Flot/jquery.flot.resize.js"></script>
	<script src="scripts/angle/vendor/Flot/jquery.flot.pie.js"></script>
	<script src="scripts/angle/vendor/Flot/jquery.flot.time.js"></script>
	<script src="scripts/angle/vendor/Flot/jquery.flot.categories.js"></script>
	<script src="scripts/angle/vendor/flot-spline/js/jquery.flot.spline.min.js"></script>
	<script src="scripts/angle/vendor/jquery-classyloader/js/jquery.classyloader.min.js"></script>
	<script src="scripts/angle/vendor/moment/min/moment-with-locales.min.js"></script>
	<script src="scripts/angle/vendor/parsleyjs/dist/parsley.min.js"></script>
	<script src="scripts/angle/vendor/sweetalert/dist/sweetalert.min.js"></script>
	<script src="scripts/angle/vendor/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
	<script src="scripts/extjs/ext-all.js"></script>
	<script src="scripts/extjs/classic/theme-neptune/theme-neptune.js"></script>
	<script src="scripts/extjs/classic/locale/locale-zh_CN.js"></script>
	<script src="scripts/angle/app/js/app.js"></script>
	
	
	
</head>
<body class="offsidebar-open layout-fixed aside-collapsed">
	<div class="wrapper">
		<jsp:include page="/center/header.html"></jsp:include>
		<jsp:include page="/center/left.html"></jsp:include>
		<section>
			<!-- Page content-->
			<div class="content-wrapper">
				<div class="content-heading">
					<a href="/center/main.html"><i class="fa fa-home"></i>主页</a>
					<small data-localize="dashboard.WELCOME"></small>
				</div>
				<div class="row">
					<div class="col-lg-3 col-sm-6">
						<!-- START widget-->
						<div class="panel widget bg-primary">
							<div class="row row-table">
								<div class="col-xs-4 text-center bg-primary-dark pv-lg">
									<em class="icon-cloud-upload fa-3x"></em>
								</div>
								<div class="col-xs-8 pv-lg">
									<div class="text-uppercase">工程数量</div>
									<div class="h2 mt0">1700</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<!-- START widget-->
						<div class="panel widget bg-primary">
							<div class="row row-table">
								<div class="col-xs-4 text-center bg-primary-dark pv-lg">
									<em class="icon-cloud-upload fa-3x"></em>
								</div>
								<div class="col-xs-8 pv-lg">
									<div class="text-uppercase">线路数量</div>
									<div class="h2 mt0">
										21092 <small>条</small>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-sm-6">
						<!-- START widget-->
						<div class="panel widget bg-purple">
							<div class="row row-table">
								<div class="col-xs-4 text-center bg-purple-dark pv-lg">
									<em class="icon-globe fa-3x"></em>
								</div>
								<div class="col-xs-8 pv-lg">
									<div class="text-uppercase">图片数量</div>
									<div class="h2 mt0">
										17800 <small>张</small>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-12">
						<!-- START widget-->
						<div class="panel widget bg-green">
							<div class="row row-table">
								<div class="col-xs-4 text-center bg-green-dark pv-lg">
									<em class="icon-bubbles fa-3x"></em>
								</div>
								<div class="col-xs-8 pv-lg">
									<div class="text-uppercase">里程</div>
									<div class="h2 mt0">
										17800 <small>Km</small>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div id="panelChart3" class="panel">
						<div class="panel-heading">
							<div class="panel-title">工程列表</div>
						</div>
						<div collapse="panelChart3" class="panel-wrapper">
							<div class="panel-body">
								<div class="indicator show">
									<span class="spinner"></span>
								</div>
								<div class="chart-bar-stackedv2 flot-chart"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<jsp:include page="/center/footer.html"></jsp:include>
	</div>
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
		data-backdrop="static">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">工程管理</h4>
				</div>
				<div class="modal-body" style="height: 400px;">
					<p>One fine body&hellip;</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->


</body>
</html>