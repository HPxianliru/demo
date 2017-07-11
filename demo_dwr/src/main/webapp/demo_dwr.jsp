<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type='text/javascript' src='dwr/engine.js'></script>   
<script type='text/javascript' src='dwr/util.js'></script> 
<script type='text/javascript' src='dwr/interface/Chat.js'></script>
<script src="http://libs.baidu.com/jquery/2.1.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
	<script type="text/javascript">
	$(document).ready(
			function(){
				dwr.engine.setActiveReverseAjax(true);
				$("#but").click(
					function(){
						Chat.sayHello($("#send").val());
					}		
				);
			}
	);
	function callback(mes) {
		$("#test").html(mes);
	}
	</script>
	
<body>
	<ul id = "test" style="color:red;font-size: 30px">
	</ul>
	触发<input id = "send" type="text"><input id ="but" type="button" value="send">
</body>

</html>