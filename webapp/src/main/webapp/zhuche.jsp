<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>登陆</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<script type="text/javascript" src="<%=path %>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=path %>/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="<%=path %>/js/kindeditor-4.1.10/kindeditor.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=path %>/js/kindeditor-4.1.10/lang/zh_CN.js" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="<%=path %>/js/easyui/themes/default/easyui.css">   
<link rel="stylesheet" type="text/css" href="<%=path %>/js/easyui/themes/icon.css">   

<link rel="stylesheet" href="<%=path%>/static/login/bootstrap.min.css" />
<link rel="stylesheet" href="<%=path%>/static/login/css/camera.css" />
<link rel="stylesheet" href="<%=path%>/static/login/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="<%=path%>/static/login/matrix-login.css" />
<link rel="stylesheet" href="<%=path%>/static/login/font-awesome.css" />
<script type="text/javascript" src="<%=path%>/static/login/js/jquery-1.5.1.min.js"></script>
<!-- 软键盘控件start -->
<link href="<%=path%>/static/login/keypad/css/framework/form.css" rel="stylesheet" type="text/css"/>
<!-- 软键盘控件end -->
 <style type="text/css">
    /*
   body{
    -webkit-transform: rotate(-3deg);
    -moz-transform: rotate(-3deg);
    -o-transform: rotate(-3deg);
	padding-top:20px;
    }
    */
      .cavs{
    	z-index:1;
    	position: fixed;
    	width:95%;
    	margin-left: 20px;
    	margin-right: 20px;
    }
  </style>
  <script>
  		//window.setTimeout(showfh,3000); 
  		var timer;
		function showfh(){
			fhi = 1;
			//关闭提示晃动屏幕，注释掉这句话即可
			timer = setInterval(xzfh2, 10); 
		};
		var current = 0;
		function xzfh(){
			current = (current)%360;
			document.body.style.transform = 'rotate('+current+'deg)';
			current ++;
			if(current>360){current = 0;}
		};
		var fhi = 1;
		var current2 = 1;
		function xzfh2(){
			if(fhi>50){
				document.body.style.transform = 'rotate(0deg)';
				clearInterval(timer);
				return;
			}
			current = (current2)%360;
			document.body.style.transform = 'rotate('+current+'deg)';
			current ++;
			if(current2 == 1){current2 = -1;}else{current2 = 1;}
			fhi++;
		};
	</script>
</head>
<body>

	<!--小键盘承载器-->
	<canvas class="cavs"></canvas>
	<div style="width:100%;text-align: center;margin: 0 auto;position: absolute;">
		<!-- 登录 -->
		<%-- <div id="windows1">
		<div id="loginbox" >
			<form action="" method="post" name="loginForm" id="loginForm">
				<div class="control-group normal_text">
					<h3>
						<img src="<%=path%>/static/login/logo.png" alt="Logo" />
					</h3>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span class="add-on bg_lg">
							<i><img height="37" src="<%=path%>/static/login/user.png" /></i>
							</span><input type="text" name="loginname" id="loginname" value="" placeholder="请输入用户名" />
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span class="add-on bg_ly">
							<i><img height="37" src="<%=path%>/static/login/suo.png" /></i>
							</span><input type="password" name="password" id="password" placeholder="请输入密码" class="keypad" keypadMode="full" allowKeyboard="true" value=""/>
						</div>
					</div>
				</div>
				<div style="float:right;padding-right:10%;">
					<div style="float: left;margin-top:3px;margin-right:2px;">
						<font color="white">记住密码</font>
					</div>
					<div style="float: left;">
						<input name="form-field-checkbox" id="saveid" type="checkbox"
							onclick="savePaw();" style="padding-top:0px;" />
					</div>
				</div>
				<div class="form-actions">
					<div style="width:86%;padding-left:8%;">

						<div style="float: left;padding-top:2px;">
							<i><img src="<%=path%>/static/login/yan.png" /></i>
						</div>
						<div style="float: left;" class="codediv">
							<input type="text" name="code" id="code" class="login_code"
								style="height:16px; padding-top:4px;" />
						</div>
						<div style="float: left;">
							<i><img style="height:22px;" id="codeImg" alt="点击更换" title="点击更换" src="" /></i>
						</div>
						<c:if test="${pd.isZhuce == 'yes' }">
						<span class="pull-right" style="padding-right:3%;"><a href="javascript:changepage(1);" class="btn btn-success">注册</a></span>
						</c:if>
						<span class="pull-right"><a onclick="severCheck();" class="flip-link btn btn-info" id="to-recover">登录</a></span>
					</div>
				</div>
			</form>
			<div class="controls">
				<div class="main_input_box">
					<font color="white"><span id="nameerr">Copyright © XX科技 2018</span></font>
				</div>
			</div>
		</div>
		</div> --%>
		
		
		<!-- 注册 -->
		<div id="windows2">
		<div id="loginbox" >
		
<!-- =============================================================================== -->
		 <form action="" method="post" role="form" id="saveuserinfo">

				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span class="add-on bg_lg">
							<i>账号</i>
							</span><input type="text"  name="username" id="USERNAME" value="" placeholder="请输入账号名" />
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span class="add-on bg_ly">
							<i>密码</i>
							</span><input type="password"  name="password" id="PASSWORD" placeholder="请输入密码" class="keypad" keypadMode="full" allowKeyboard="true" value=""/>
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span class="add-on bg_lg">
							<i>电话</i>
							</span><input type="text"  name="userphone" id="phone" value="" placeholder="请输入手机号" />
						</div>
					</div>
				</div>

				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span class="add-on bg_lg">
							<i>验证</i>
							</span><input type="text"  name="checkcode"  placeholder="请输入收到的验证码"> 
									<button  type="button" class="easyui-linkbutton" id="anniu" onclick="fasongyz()">发送验证码</button>
		      						<button  type="button" class="easyui-linkbutton" id="anniu" >(<strong class="a">60</strong>秒 )</button>
						</div>
					</div>
				</div>
				<div>						
					<span class="pull-right" style="padding-right:3%;"><button type="button" onclick="zhuce()"  class="flip-link btn btn-info">注册</button></span>
		 			<span class="pull-right"><button type="button" class="flip-link btn btn-info" onclick="fanhui()">返回登录</button>  </span>
				</div>

			</form>
			
			</div>
		</div> 		
	</div>	

	<div id="templatemo_banner_slide" class="container_wapper">
		<div class="camera_wrap camera_emboss" id="camera_slide">
			<!-- 背景图片 -->
			<div data-src="<%=path%>/static/login/images/banner_slide_01.jpg"></div>
			<div data-src="<%=path%>/static/login/images/banner_slide_02.jpg"></div>
			<div data-src="<%=path%>/static/login/images/banner_slide_03.jpg"></div>
			<div data-src="<%=path%>/static/login/images/banner_slide_04.jpg"></div>
			<div data-src="<%=path%>/static/login/images/banner_slide_05.jpg"></div>
		</div>
	</div>

	<script type="text/javascript">

	</script>
	
	<script src="<%=path%>/static/login/js/bootstrap.min.js"></script>
	<script src="<%=path%>/static/js/jquery-1.7.2.js"></script>
	<script src="<%=path%>/static/login/js/jquery.easing.1.3.js"></script>
	<script src="<%=path%>/static/login/js/jquery.mobile.customized.min.js"></script>
	<script src="<%=path%>/static/login/js/camera.min.js"></script>
	<script src="<%=path%>/static/login/js/templatemo_script.js"></script>
	<script src="<%=path%>/static/login/js/ban.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js/jQuery.md5.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js/jquery.tips.js"></script>
	<script type="text/javascript" src="<%=path%>/static/js/jquery.cookie.js"></script>
	
	<!-- 软键盘控件start -->
	<script type="text/javascript" src="<%=path%>/static/login/keypad/js/form/keypad.js"></script>
	<script type="text/javascript" src="<%=path%>/static/login/keypad/js/framework.js"></script>
	<!-- 软键盘控件end -->
	
<!-- ===========整合的组内==========================================================	 -->
	<script type="text/javascript">
			 
					$(function(){
				       $.ajax({
					   url:"<%=request.getContextPath()%>/Lancontroller/queryProvince.do",
					   type:"post",
					   dataType:"json",
					   success:function(data){
					   var html="";
					   for (var i = 0; i < data.length; i++) {
							   html+="<option value='"+data[i].provinceid+"'>"+data[i].province+"</option>";		   
   
					      }
					   
					     $("#shengzncy").html(html);	   
					   }
				       })
					 })
				    			
					  $("#shengzncy").change(function(){  	
					    	$("#shizncy").html("<option value='0'>请选择</option>");
					   		$("#xianzncy").html("<option value='0'>请选择</option>");
				  	   
				    	    $.ajax({
				    		   url:"<%=request.getContextPath()%>/Lancontroller/queryCity.do",
				    		   type:"post",
				    		   /* $(this).val()获得id对应的value值 */
				    		   data:{"provinceid":$(this).val()},
				    		   dataType:"json",
				    		   success:function(data){
				    		   var html="";
								for (var i = 0; i < data.length; i++) {
								
										html+="<option value='"+data[i].cityid+"'>"+data[i].city+"</option>";
 
								}
								
								$("#shizncy").append(html);
				
				    		   }
				    		
				    		 })   
				       });
				
				   	$("#shizncy").change(function(){
				   		$("#xianzncy").html("<option value='0'>请选择</option>");
				   		$.ajax({
				   			url:"<%=request.getContextPath()%>/Lancontroller/queryArea.do",
				   			type:"post",
				   			data:{"cityid":$(this).val()},
				   			dataType:"json",
				   			success:function(data){
				   				var html ="";
				   				for (var i = 0; i < data.length; i++) {
				   				
					   				html+="<option value='"+data[i].areaid+"'>"+data[i].area+"</option>";
		
				   				}
				   				$("#xianzncy").append(html);
				   			}
				   		})
				   	});					 
				</script> 
		 

		<script type="text/javascript">
			<%--点击按钮返回登录页面--%>
		function fanhui(){

			location.href="<%=request.getContextPath()%>/login.jsp";
			
		}
            <%--点击按钮发送验证码--%>
		function fasongyz(){
		
			var phone=$("#phone").val();
			if(phone==null||phone==""){
				
				alert("请输入合法号码")
				
			}else{
				$("#anniu").prop("disabled",true);
				$("#anniu").html("再次发送")
				$(document).ready(function() {
					var times = 60 * 100; // 60秒
					countTime = setInterval(function() {
						times = --times < 0 ? 0 : times;
						var ms = Math.floor(times / 100).toString();
		
						if(ms.length <= 1) {
							ms = "0" + ms;
						}
						var hm = Math.floor(times % 100).toString();
						if(hm.length <= 1) {
							hm = "0" + hm;
						}
						if(times == 0) {
							
							$("#anniu").removeAttr("disabled");
						
							clearInterval(countTime);
						}
						// 获取分钟、毫秒数
						$(".a").html(ms);
						$(".b").html(hm);
					}, 10);
				});
				
				
				
			$.ajax({
				url:"<%=request.getContextPath()%>/LoginAction/getyanzhengma.action",
				type:"post",
				data:{"userphone":phone},
				dataType:"json",
				async:false,
				success:function (){
					
				},
				error:function(){
					alert("注册出错！！！")
				}				
			})
		}}
			
		function zhuce(){
			$.ajax({
				url:"<%=request.getContextPath()%>/Lancontroller/saveuserinfo.do",
				type:"post",
				data:$("#saveuserinfo").serialize(),
				dataType:"json",
				async:false,
				success:function (result){
					if(result=="1"){
						alert("账号已存在")
					}
					if(result=="2"){
						alert("注册成功")
						location.href="<%=request.getContextPath()%>/index.jsp"
					}
					if(result=="3"){
						alert("验证码错误或失效")
					}
					
				},
				error:function(){
					alert("注册出错！！！")
				}				
			})
		}		
		</script>
	
</body>

</html>