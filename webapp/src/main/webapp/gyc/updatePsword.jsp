<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<jsp:include page="../base.jsp"></jsp:include>
<%String path = request.getContextPath(); %>
<script type="text/javascript" src="<%=path %>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> Admin</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    <link rel="stylesheet" href="../css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="../css/fullcalendar.css" />
    <link rel="stylesheet" href="../css/maruti-style.css" />
    <link rel="stylesheet" href="../css/maruti-media.css" class="skin-color" />


    <%--<link rel="stylesheet" href="../css/maruti-login.css" />--%>
</head>
<body>
<%--  hello
  <a href="<%=request.getContextPath()%>/test!toShow.action?id=1"> tiao</a>--%>

<!--Header-part-->
<div id="header">
    <h1><a href="http://www.mafiashare.net">Shared on www.MafiaShare.net</a></h1>
</div>
<!--close-Header-part-->

<!--top-Header-messaages-->
<div class="btn-group rightzero"> <a class="top_message tip-left" title="Manage Files"><i class="icon-file"></i></a> <a class="top_message tip-bottom" title="Manage Users"><i class="icon-user"></i></a> <a class="top_message tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a> <a class="top_message tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a> </div>
<!--close-top-Header-messaages-->

<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
    <ul class="nav">
        <li class="" ><a title="" href="#"><i class="icon icon-user"></i> <span class="text">Profile</span></a></li>
        <li class=" dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a class="sAdd" title="" href="#">new message</a></li>
                <li><a class="sInbox" title="" href="#">inbox</a></li>
                <li><a class="sOutbox" title="" href="#">outbox</a></li>
                <li><a class="sTrash" title="" href="#">trash</a></li>
            </ul>
        </li>
        <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
        <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
    </ul>
</div>
<!--<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-left" title="Search"><i class="icon-search icon-white"></i></button>
</div>-->
<!--close-top-Header-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i>商家管理</a>
    <ul>
        <%--<li class="active"><i class="icon icon-home"></i> <span>商品管理</span></a>
            <ul>
                <li><a href="<%=request.getContextPath()%>/jump/tiao.action">商品录入</a></li>
                <li><a href="<%=request.getContextPath()%>/jump/tiaoManger.action"></a></li>
            </ul>
        </li>--%>
        <li> <a href="<%=request.getContextPath()%>/jump/tiao.action"><i class="icon icon-signal"></i> <span>商品管理</span></a> </li>
        <li> <a href="<%=request.getContextPath()%>/jump/tiaoPinpai.action"><i class="icon icon-signal"></i> <span>品牌管理</span></a> </li>
        <li> <a href="<%=request.getContextPath()%>/jump/info.action"><i class="icon icon-signal"></i> <span>信息管理</span></a> </li>
        <li> <a href="<%=request.getContextPath()%>/jump/updatePass.action"><i class="icon icon-signal"></i> <span>修改密码</span></a> </li>

        <li><a href="<%=request.getContextPath()%>/jpl/bb.action"><i class="icon icon-th"></i> <span>数据分析</span></a>

        </li>
        <li> <a href="#"><i class="icon icon-tag"></i> <span>订单详情</span></a> </li>
        <li> <a href="<%=request.getContextPath()%>/jpl/aa.action"><i class="icon icon-tags"></i> <span>库存管理</span></a> </li>
    </ul>
</div>

<div id="content">


    <div id="content-header">
        <div id="breadcrumb">
            <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
            <a href="#" class="current">updatePsword</a>
        </div>
        <h1 align="center">修改密码</h1>
    </div>



    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title">
								<span class="icon">
									<i class="icon-pencil"></i>
								</span>
                        <h5>Form wizard &amp; validation</h5>
                    </div>
                    <div class="widget-content nopadding" >
                        <form id="mima" class="form-horizontal" >
                            <div id="form-wizard-1" class="step">
                                <div class="control-group" >
                                    <label class="control-label" >用户名</label>
                                    <div class="controls">
                                        <input id="username" type="text" name="user.username"  onblur="yanyonghu()"/>
                                        <span id="msg"></span>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">新密码</label>
                                    <div class="controls">
                                        <input id="password" type="password" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">确认密码</label>
                                    <div class="controls">
                                        <input id="password2" type="password" name="user.password" />
                                    </div>
                                </div>
                            </div>
                           <%-- <div id="form-wizard-2" class="step">
                                <div class="control-group">
                                    <label class="control-label">电子邮件</label>
                                    <div class="controls">
                                        <input id="email" type="text" name="email" />
                                    </div>
                                </div>
                            </div>--%>
                            <div class="form-actions,demo">
                                <input id="back" class="btn btn-primary" type="reset" value="清空" />
                                <input id="next" class="btn btn-primary" type="submit" value="修改密码"onclick="updatepass()" />
                                <div id="status"></div>
                            </div>
                            <div id="submitted"></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>



<div class="row-fluid">
    <div id="footer" class="span12"> 2012 &copy; Marutii Admin. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> </div>
</div>



<script type="text/javascript">

   function updatepass() {
       $.ajax({
           url:"<%=request.getContextPath()%>/gyc/queryByName.action",
           data:$("#mima").serialize(),
           type:"post",
           dataType:"json",
           success: function (mima) {
               if (mima == "aa") {
                   alert("修改成功")
                   msg.innerHTML = "输入正确";
               } else if (mima == "bb") {
                   alert("请输入正确账户")
                   msg.innerHTML = "您输入的不是当前用户名";
               }
           }


       })
   }

</script>


</body>
</html>
