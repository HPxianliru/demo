<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	System.out.println(basePath);
%>
<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Insert title here</title>
		<!-- <link rel="stylesheet" href="http://openlayers.org/en/v4.2.0/css/ol.css" type="text/css"> -->
		
		
    	<link rel="stylesheet" href="scripts/jsapi/esri/css/esri.css">
		<script type="text/javascript" src="scripts/jquery.js"></script>
		<script type="text/javascript" src="scripts/distribute/ppv/js/ppv.min.js"></script>
	    <script src="scripts/Application.js"></script>
	    <script type="text/javascript">
		    Application.Abspath = function () {
		    	return '<%=basePath%>';
		    }
	    </script>
	    <script src="scripts/jsapi/init.js"></script>
		
		<style>
			html, body{
				margin: 0px;
				padding: 0px;
				overflow: hidden;
			}
		
			.header{
				height: 60px;
				background-color: rgba(8, 179, 245, 0.82);
				border-bottom:2px solid #e0e0e0;
			}
			.left{
				width: 50%;
				float: left;
				/**border: 1px solid #000;**/
				height: 100%;
			}
			
			.right{
				/**border: 1px solid #aaa;**/
				height: 100%;
				margin-left: 50%;
			}
			
			#map{
				width: 100%;
				height: 100%;
			}
			
			#ppv_container{
				width:100%;
				height: 100%;
				margin:auto;/*水平居中*/
			}			
			#ppv{
				position:relative;/*作为内部子元素的定位基准*/
				width:100%;
				height:100%;
				/*background-image: url(scripts/distribute/icon/error-imaj.jpg);*/
				background-color:#000000;
				/* 子水平居中 flex layout*/
				display: -webkit-flex; /* Safari */
				display: flex;
				justify-content:center;
			}	
			.ppv_toolbar{
				position:absolute;/*在ppv内部定位*/
				background-color: rgba(0,0,0,0.5);
			}
			.ppv_button{
				height:32px;
				background-color: transparent;
			}
			.ppv_button:hover{
				background-color: lightgray;
			}
			#history_container{
				position:absolute;/*在ppv内部定位*/
				width:100%;
				height:100%;
				/* 子垂直居中 flex layout*/
				display: -webkit-flex; /* Safari */
				display: flex;
				justify-content:center;
				align-items: center;
			}
			#history{
			}
			.history_item{
				height:128px;
				margin:10px;
			}
			.history_item:hover{
				border:1px solid #00F;
			}
			#lrs{
			}
			.lrs_item{
			margin:5px;
			}
			
			
		</style>
	</head>
	<body>
		<div class="header"></div>
		<div id="app" class="container">
			<div class="left">
			<div id="ppv_container">
					<div id="ppv">
						<div id="history_container">
						</div>
						<div class="ppv_toolbar">
							<img class="ppv_button" src="scripts/distribute/icon/play.png" title="播放" onmousedown="event.stopPropagation(); ppv.play()"></img>
							<img class="ppv_button" src="scripts/distribute/icon/stop.png" title="暂停" onmousedown="event.stopPropagation(); ppv.stop()"></img>
							<img class="ppv_button" src="scripts/distribute/icon/measure-point.png" title="查询坐标" onmousedown="event.stopPropagation(); ppv.setTool(Tool.measurePoint)"></img>
							<img class="ppv_button" src="scripts/distribute/icon/measure-length.png" title="测量长度" onmousedown="event.stopPropagation(); ppv.setTool(Tool.measureLength)"></img>
							<img class="ppv_button" src="scripts/distribute/icon/measure-area.png" title="测量面积" onmousedown="event.stopPropagation(); ppv.setTool(Tool.measureArea)"></img>
							<img class="ppv_button" src="scripts/distribute/icon/measure-z.png" title="测量垂距" onmousedown="event.stopPropagation(); ppv.setTool(Tool.measureZ)"></img>
							<img class="ppv_button" src="scripts/distribute/icon/measure-facade.png" title="测量立面" onmousedown="event.stopPropagation(); ppv.setTool(Tool.measureFacade)"></img>
							<img class="ppv_button" src="scripts/distribute/icon/measure-angle.png" title="测量角度" onmousedown="event.stopPropagation(); ppv.setTool(Tool.measureAngle)"></img>
							<img class="ppv_button" src="scripts/distribute/icon/measure-slope.png" title="测量坡度" onmousedown="event.stopPropagation(); ppv.setTool(Tool.measureSlope)"></img>
							<img class="ppv_button" src="scripts/distribute/icon/create-point.png" title="创建点" onmousedown="event.stopPropagation(); ppv.setTool(Tool.createPoint)"></img>
							<img class="ppv_button" src="scripts/distribute/icon/create-polyline.png" title="创建线" onmousedown="event.stopPropagation(); ppv.setTool(Tool.createPolyline)"></img>
							<img class="ppv_button" src="scripts/distribute/icon/create-polygon.png" title="创建面" onmousedown="event.stopPropagation(); ppv.setTool(Tool.createPolygon)"></img>
							<img class="ppv_button" src="scripts/distribute/icon/pick.png" title="选择对象" onmousedown="event.stopPropagation(); ppv.setTool(Tool.pick)"></img>
							<img class="ppv_button" src="scripts/distribute/icon/remove.png" title="删除选中对象" onmousedown="event.stopPropagation(); ppv.setTool(Tool.remove)"></img>
							<img class="ppv_button" src="scripts/distribute/icon/LRS.png" title="线性参考系" onmousedown="event.stopPropagation(); ppv.setPref({enableArrow:false})"></img>
							<img id="btBack" class="ppv_button" src="scripts/distribute/icon/back.png" title="上下行" onmousedown="event.stopPropagation(); if (backID!=null)ppv.locateByID(3, backID)"></img>
						</div>
					</div>
				</div>
			</div>
			<div class="right">
				<div  id="map" ></div>
			</div>
		</div>
	</body>
	<script>
	
		var ppv = null;
		
		$(function(){
			$(window).resize(function(){
				$('.container').height($(window).outerHeight() - 60);
			}).resize();
			
			
			// 1 构造PPV对象，参数是容器div的id
			ppv = new PPV("ppv");
			
			ppv.setPref({
				//bgcolor:0x000000,//'rgb(255,255,255)',
				bgcolor:'rgb(255,128,255)',
				fullView:FullMode.trans,//照片是否填满div，不管是否会被裁剪
				enableArrow:true,
				enableHistory:true,
				scope:100,//可视范围
				thumb:'Small',//缩略图尺寸，可选'Middle'，缺省'Middle'
				magnifier:{
					size:256,
					zoom:5.0,
					fix:false,//是否启动放大镜后，固定位置不变。另一个方式是，放大镜随鼠标移动
				},
				key:{
					play:32,		//播放	space		
					fforward:33,	//快进	page up 
					fbackward:34,	//快退	page down 
					forward:38,		//前进	up
					backward:40,	//后退	down
					fullscreen:120,	//全屏	f9
				},
				label:{
					fontface:'微软雅黑',	//字体
					fontsize:15,			//字高			
					textColor:'#000000',	//文字颜色
					borderThickness:1,		//边框线宽，如果取0值，将禁用边框
					borderFillet:0,			//边框圆角
					borderColor:'rgba(0,0,0,0.8)',				//边框颜色
					backgroundColor:'rgba(255,255,255,0.8)',	//背景颜色
				},
			});		
			
			
			
			// 3 事件响应	
			ppv.onLocate = function(event){
				if (event.state==LocateState.busy)
					alert('busy');
			}			
			ppv.onPosition = function(event){
				Application.OnPosition(event);
				ppv.needsUpdate = true;
			};
			ppv.onEye = function(event){
				 Application.OnEye(event);
			}
			
			ppv.onFeatureSelect = function(event){
				var fid = event.fid;
			}
			ppv.onFeatureRemove = function(event){
				var fid = event.fid;
			}
			ppv.onMeasure = function(event){
				var e = event;
			}
			ppv.onTool = function(event){
				var e = event;
			}
			
			// 2 ppvision服务地址
			ppv.setServer("http://localhost:8023/PPVServer.asmx");
			ppv.locate(3, 115.555783, 28.751696);

			Application.Map_Init(function(){
				
			});
		})

	</script>
</html>