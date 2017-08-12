<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	System.out.println(basePath + "sys");
	String project = "active";
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
	<link href="scripts/bootstrap-table/bootstrap-table.css"  rel="stylesheet" type=text/css>
	
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
	
	<script src="scripts/vue.js"></script>
	<script src="scripts/bootstrap-table/bootstrap-table.js" type="text/javascript" ></script>
	<script src="scripts/bootstrap-table/bootstrap-table-zh-CN.js" type="text/javascript" ></script>
	
	<style type="text/css">
		.x-grid-header-ct x-docked .x-grid-header-ct-default .x-docked-top .x-grid-header-ct-docked-top .x-grid-header-ct-default-docked-top .x-box-layout-ct .x-scroller .x-unselectable .x-noborder-trl{
			width:100%;
		}
	</style>
</head>
<body class="offsidebar-open layout-fixed aside-collapsed">
	<div class="wrapper">
		<jsp:include page="/center/header.html"></jsp:include>
		<jsp:include page="/center/left.html"></jsp:include>
		<section>
			<!-- Page content-->
			<div class="content-wrapper" id="content">
				<div class="content-heading">
					<a href="center/main.html"><i class="fa fa-home"></i>主页</a> - <span>工程管理</span>
					<small data-localize="dashboard.WELCOME"></small>
				</div>
				<div class="row">
					<div class="panel panel-default" style="margin-bottom: 10px;">
				        <div class="panel-body">
				            <form role="form" class="form-inline" id="formQuery">
				                <div class="form-group input-group input-group-sm">
				                    <span class="input-group-addon">注册号</span>
				                    <input type="text" name="Zb002" class="form-control" placeholder="">
				                </div>
				                <div class="form-group input-group input-group-sm">
				                    <span class="input-group-addon">手机号</span>
				                    <input type="text" name="Zb054" class="form-control" placeholder="">
				                </div>
				                <div class="form-group input-group input-group-sm">
				                    <span class="input-group-addon">姓名</span>
				                    <input type="text" name="Zb005" class="form-control" placeholder="">
				                </div>
				                <div class="form-group input-group input-group-sm">
				                    <span class="input-group-addon">单位</span>
				                    <input type="text" name="Zb013" class="form-control" placeholder="">
				                </div>
				                <div class="btn-group btn-group-sm" role="group">
				                    <button type="button" class="btn btn-default"><em class="fa fa-repeat"></em> 重置</button>
				                    <button type="button" class="btn btn-primary" id="btn_Query" v-on:click="initData"><em class="fa fa-search"></em> 查询</button>
				                </div>
				            </form>
				        </div>
				    </div>
				</div>
				<div class="row">
					<div class="panel panel-default">
				        <div class="panel-body">
							<div id="result_list" style="border:1px solid #D0D0D0; width:100%;">
								<div class="table-responsive">
				                  <table id="table-ext-1" class="table table-bordered table-hover">
				                     <thead>
				                        <tr>
				                        <th data-check-all="">
				                              <div data-toggle="tooltip" data-title="Check All" class="checkbox c-checkbox" data-original-title="" title="">
				                                 <label>
				                                    <input type="checkbox">
				                                    <span class="fa fa-check"></span>
				                                 </label>
				                              </div>
				                           </th>
				                           <th>UID</th>
				                           <th>Picture</th>
				                           <th>Username</th>
				                           <th>First Name</th>
				                           <th>Last Name</th>
				                           <th>Email</th>
				                           <th>Profile</th>
				                           <th>Last Login</th>
				                        </tr>
				                     </thead>
				                     <tbody>
				                     <template v-for="(user,index) in users">
				                        <tr>
				                        <td>
				                              <div class="checkbox c-checkbox">
				                                 <label>
				                                    <input type="checkbox">
				                                    <span class="fa fa-check"></span>
				                                 </label>
				                              </div>
				                           </td>
				                           <td>{{index + 1}}</td>
				                           <td>
				                              <div class="media">
				                                 <img src="img/user/01.jpg" alt="Image" class="img-responsive img-circle">
				                              </div>
				                           </td>
				                           <td>{{user.username}}</td>
				                           <td>{{user.realname}}</td>
				                           <td>the Bird</td>
				                           <td>mail@example.com</td>
				                           <td class="text-center">
				                              <div data-label="25%" class="radial-bar radial-bar-25 radial-bar-xs"></div>
				                           </td>
				                           <td>1 week</td>
				                        </tr>
				                        </template>
				                     </tbody>
				                  </table>
				               </div>
							</div>
						</div>
					</div>
				</div>				
			</div>
		</section>
		<jsp:include page="/center/footer.html"></jsp:include>
	</div>
	<script type="text/javascript">
	
		var vue = new Vue({
			el: '#content',
			data: {
				message: '菜鸟教程',
				users: [{username:"张三"},{username:"张三"}]
			},
			methods: {
				initData : function(){
					var _self = this;
					$.post('user/getproject.html', {limit: 20, offset: 0}, function(e){
						_self.users = $.parseJSON(e).rows;
					})
				}
			},
			//初始化成功
			created:function(){
				
			},
			//模板挂在成功
			mounted: function(){
				
			}
		})
	</script>
	
	
</body>
</html>