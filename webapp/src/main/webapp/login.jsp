<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
    <div id="windows1">
        <div id="loginbox" >
            <!-- =============================================================================== -->
            <form action="" method="post" role="form" id="saveuserinfo1">

                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
							<span class="add-on bg_lg">
							<i>账号</i>
							</span><input type="text"  name="username" id="unameing" value="" placeholder="请输入账号名" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
							<span class="add-on bg_ly">
							<i>密码</i>
							</span><input type="password"  name="password" id="pwding" placeholder="请输入密码" class="keypad" keypadMode="full" allowKeyboard="true" value=""/>
                        </div>
                    </div>
                </div>

                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
							<span class="add-on bg_ly">
							<i>验证</i>
                             </span>
                            <input type="text" class="form-control" placeholder="请输入验证码" name="validataCode" id="pcodeznn">
                           <%-- <s:set name="loginFlag" value="#session[loginFlag]" />
                            <s:if test='%{#loginFlag==4}'>
                                <font color='red'>验证码错误</font>
                            </s:if>--%>
                            ${loginFlag == 4 ? "<font color='red'>验证码错误</font>" : "" }
                            <img id="imgIdznning" src="<%=request.getContextPath()%>/LoginAction/validateCode.action"/>
                            <a href="javascript:void(0)" onclick="changeValidateImage()">看不清？换一张!</a>
                        </div>
                    </div>
                </div>


                <div>
                    <span class="pull-right"><button type="button"  class="flip-link btn btn-info" onclick="userlogin()" >登录</button></span>
                    <span class="pull-right"><button type="button" class="flip-link btn btn-info" onclick="zhuce()">注册</button></span>
                </div>
            </form>

        </div>
    </div>
</div>
<!-- ===================================================================================== -->
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
<!-- 软键盘控件-->
<script type="text/javascript" src="<%=path%>/static/login/keypad/js/form/keypad.js"></script>
<script type="text/javascript" src="<%=path%>/static/login/keypad/js/framework.js"></script>
<!-- ==========验证码==========================================================	 -->
<script type="text/javascript">
    function changeValidateImage(){
        var imgObj = document.getElementById("imgIdznning");

        var imgSrc = imgObj.src + "?timestamp="+(new Date()).valueOf();

        imgObj.src = imgSrc;
    }
</script>
<!-- =========== 进行登录验证和注册页面跳转======================================================	 -->
<script type="text/javascript">
    function userlogin(){
       /* var aa=$("#u_stateing").val();*/
        $.ajax({
            url:"<%=path%>/LoginAction/login.action",
            type:"post",
            data:{"username":$("#unameing").val(),"password":$("#pwding").val(),"validataCode":$("#pcodeznn").val()},
            dataType:"json",
            success:function(data){
               // idsStr = data.substring(1,data.length-1);
                if(data=="1") {
                    location.href = "<%=request.getContextPath()%>/index.jsp";
                   }else if(data=="2"){
                        location.href="<%=request.getContextPath()%>/show.jsp";
                    }else if(data=="3"){
                        location.href="<%=request.getContextPath()%>/index.jsp";
                    } else if(data=="usererror"){
                    alert("账号或密码错误");
                }else if(data=="passworderror"){
                    alert("账号或密码错误")
                }else if(data=="errorcode"){
                    alert("验证码错误")
                }
            }
        });
    }
//跳转到注册页面进行注册
    function zhuce(){

        location.href="<%=request.getContextPath()%>/zhuche.jsp";
    }
</script>

</body>

</html>