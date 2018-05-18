<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0094)https://passport.ly.com/Register/mobile?token=143019050172022142075055165226114090066224157104 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>注册账号</title>
	<meta name="author" content="商家注册">
	<meta name="copyright" content="品优购">
	<script src="<%=request.getContextPath() %>/js/zhuce2_files/hm.js"></script><script type="text/javascript" src="<%=request.getContextPath() %>/zhuce2_files/NTSV2.6.8.js"></script><script type="text/javascript" src="<%=request.getContextPath() %>/zhuce2_files/fish.1.4.5.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/zhuce2_files/regstep2.0.0.1.css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/zhuce2_files/regstep2.0.0.2.js"></script>

	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/kindeditor-4.1.10/kindeditor.js" charset="utf-8"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/kindeditor-4.1.10/lang/zh_CN.js" charset="utf-8"></script>

	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/ui-cupertino/easyui.css"/>

	<style type="text/css">
		.ec_tip{
			display:none;
			padding:5px;
			position: absolute;
			background: #555;
			color:#fff;
			border: 3px solid #555;
			z-index: 9999;
		}
	</style>

</head>
<body>
<h1 class="header clearfix">

	<!-- 欢迎注册 -->
	<div class="welcome">
		<h2>品优购 欢迎您注册！</h2>
	</div>
	<!-- 已有会员账号的登录入口 -->
	<div class="login_entry">
		<p>已有商家账号？<a href="<%=request.getContextPath() %>/login.jsp">登录</a></p>
	</div>
</h1>
<div class="content">
	<div class="panel">
		<div class="panel_top">
		</div>
		<div class="panel_middle step2">
			<ul class="step_name clearfix">
				<li class="step_name_1">填写注册信息</li>
				<li class="step_name_2">接受并填写验证码</li>
				<li class="step_name_3">注册成功</li>
			</ul>
			<div class="mobile_verif_code_wrapper">
				<form  id="registerStep2"  name="registerStep2">

					<p class="step2_prompt_line">
						<label>
						</label>
						<%--<span class="medium_prompt">您好!<em><%=request.getSession().getAttribute("mingzi") %></em>
                            <input type="hidden" name="mobilePhone" id="mobilePhone" value="17623542343">
                            先生!身份已锁定请填写信息!
                        </span>--%>
					</p>

					<p class="step2_input_line">
						<label>
							<span class="requied_symbol">*</span>姓名</label>
						<input class="easyui-textbox"  id="customerName2" name="merchant.customerName"

							   <%--data-options="icons:[{
		iconCls:'icon-search',
		handler: function(e){
			var userName = $(e.data.target).textbox('getValue');
			$.ajax({
			url:'<%=request.getContextPath() %>/login/chaname',
			data:{'userName':userName},
			type:'post',
			dataType:'text',
			success:function(succ){
				if(succ == '1'){
					Alert('账号可用')
				}else{
					Alert('账号不可用')
				}

			}
			})
		}
	}]"--%>  prompt="字母加数字" style="width:220px;height:34px;">

						<span class="prompt"></span>

					</p>

					<p class="step2_input_line">
						<label ><span class="requied_symbol">*</span>籍贯</label>
						<input class="easyui-textbox"  id="merchantArea2" name="merchant.merchantArea"  prompt="籍贯"  style="width:220px;height:34px;">

						<span class="prompt"></span>
					</p>
					<p class="step2_input_line">
						<label ><span class="requied_symbol">*</span>商铺客服电话</label>
						<input class="easyui-textbox"  id="merchantPhone2" name="merchant.merchantPhone"  prompt="商铺客服电话"  style="width:220px;height:34px;">

						<span class="prompt"></span>
					</p>
					<p class="step2_input_line">
						<label ><span class="requied_symbol">*</span>商铺名称</label>
						<input class="easyui-textbox"  id="merchantName2" name="merchant.merchantName"  prompt="商铺名称"  style="width:220px;height:34px;">

						<span class="prompt"></span>
					</p>
					<p class="step2_input_line">
						<label ><span class="requied_symbol">*</span>邮箱</label>
						<input class="easyui-textbox"  id="merchantMail2" name="merchant.merchantMail"  prompt="邮箱"  style="width:220px;height:34px;">

						<span class="prompt"></span>
					</p>

					<p class="step2_btn_line" style="margin-top: 15px;">
						<label class="c_step2_btn_line_label">
						</label>
						<a id="zhucesubmit" class="step2_submit" href="javascript:void(0);">确认并提交注册</a></p>
<%--
					<input type="hidden" id="Token" name="Token" value="143019050172022142075055165226114090066224157104">
--%>
				</form>            </div>

		<div class="panel_bottom">
		</div>
	</div>
</div>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/zhuce2_files/c_0_1.js"></script>
<script type="text/javascript">
    //弹出提示效果
    window.Alert = function(messages,callback){
        if($(".ec_tip").length<1){
            $("body").append("<div class=\"ec_tip\">"+messages+"</div>");
        }
        //定位居中显示
        leftW = (document.body.clientWidth-$(".ec_tip").width())/2;
        topH = (document.body.clientHeight-$(".ec_tip").height())/2;
        $(".ec_tip").css("top", topH+"px").css("left", leftW+"px").fadeIn(2000);
        //谈出效果并执行回调
        $(".ec_tip").animate({top:"0px",opacity:0},2000,function(){
            $(".ec_tip").remove();
            if(callback!=undefined)
                callback();
        });
    }

    var _tcq = _tcq || [];
    var _timediff = -1;
    if (typeof _tcopentime != "undefined") {
        _timediff = new Date().getTime() - _tcopentime;
    }
    _tcq.push(['_serialid', '0']);
    _tcq.push(['_vrcode', '10002-2000-0']);
    _tcq.push(['_refId', getRefid()]);
    _tcq.push(['_userId', getMemberId()]);
    _tcq.push(['_openTime', _timediff]);
    _tcq.push(['_trackPageview', '/公共/Passport/register/mobile']);
</script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/zhuce2_files/vst.ashx" charset="utf-8"></script>

<div class="footer">
	Copyright&nbsp;©&nbsp;2002-2018&nbsp;版权所有&nbsp;同程网络科技股份有限公司&nbsp;<a target="_blank" href="https://security.40017.cn/cn/img/new_ui/public/images/ICP.jpg" class="icp_num">苏ICP证B2-20100204</a>    </div>
<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?c6a93e2a75a5b1ef9fb5d4553a2226e5";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>

<script>

    $("#zhucesubmit").click(function(){

        $.ajax({

            url:"<%=request.getContextPath()%>/LoginAction/addMerchant.action",
            data:$("#registerStep2").serialize(),
            type:"post",
            dataType:"text",
            success:function(ss){
                alert(ss);
                if(ss == "bb"){
                    alert("注册失败");
                }else{
                    alert("注册成功");
                    location.href="<%=request.getContextPath()%>/login.jsp";
                }
            },
            error:function(){
                alert("有问题,呵呵")
            }

        })
    })

</script>

</body>

</html>