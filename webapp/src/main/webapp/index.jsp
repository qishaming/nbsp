<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>商家后台</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="css/fullcalendar.css" />
    <link rel="stylesheet" href="css/maruti-style.css" />
    <link rel="stylesheet" href="css/maruti-media.css" class="skin-color" />
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
                <li><a class="sTrash" title="" href="#">注销</a></li>
            </ul>
        </li>
        <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">设置</span></a></li>
        <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">注销</span></a></li>
    </ul>
</div>
<!--<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-left" title="Search"><i class="icon-search icon-white"></i></button>
</div>-->
<!--close-top-Header-menu-->

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i>商家管理</a>
    <ul>
        <li class="active"><i class="icon icon-home"></i> <span>商品管理</span></a>
            <ul>
                <li><a href="show.jsp">商品录入</a></li>
                <li><a href="show.jsp">商品管理</a></li>
            </ul>
        </li>
        <li> <a href="#"><i class="icon icon-signal"></i> <span>品牌管理</span></a> </li>
        <li> <i class="icon icon-edit"></i> <span>基本信息管理</span></a>
            <ul>
                <li><a href="show.jsp">修改资料</a></li>
                <li><a href="show.jsp">修改密码</a></li>
            </ul>
        </li>
        <li><%--<a href="#">--%><i class="icon icon-th"></i> <span>财务状况</span></a>
            <ul>
                <li><a href="show.jsp">收入</a></li>
                <li><a href="show.jsp">支出</a></li>
            </ul>
        </li>
        <li> <a href="#"><i class="icon icon-tag"></i> <span>订单详情</span></a> </li>
        <li> <a href="#"><i class="icon icon-tags"></i> <span>库存管理</span></a> </li>
    </ul>
</div>



<div id="content">
    <div id="content-header">
        <div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Tables</a> </div>
    </div>

    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title"><span class="icon"><i class="icon-signal"></i></span>
                        <h5>数据分析</h5>
                        <div class="buttons"><a href="#" class="btn btn-mini"><i class="icon-refresh"></i> Update stats</a></div>
                    </div>
                    <div class="widget-content">
                        <div class="row-fluid">
                            <div class="span12">
                                <div class="chart"></div>
                            </div>
                        </div></div></div>
                <div class="row-fluid">
                    <div class="span6">
                        <div class="widget-box">
                            <div class="widget-title"><span class="icon"><i class="icon-file"></i></span>
                                <h5>最新帖子</h5>
                            </div>
                            <div class="widget-content nopadding">
                                <ul class="recent-posts">
                                    <li>
                                        <div class="user-thumb"> <img width="40" height="40" alt="User" src="img/demo/av1.jpg"> </div>
                                        <div class="article-post"> <span class="user-info"> By: john Deo /日期:2018年5月9日 /时间：09:27 AM</span>
                                            <p><a href="#">This is a much longer one that will go on for a few lines.It has multiple paragraphs and is full of waffle to pad out the comment.</a> </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="user-thumb"> <img width="40" height="40" alt="User" src="img/demo/av2.jpg"> </div>
                                        <div class="article-post"> <span class="user-info"> By: john Deo /日期:2018年5月9日 /时间：09:27 AM </span>
                                            <p><a href="#">This is a much longer one that will go on for a few lines.It has multiple paragraphs and is full of waffle to pad out the comment.</a> </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="user-thumb"> <img width="40" height="40" alt="User" src="img/demo/av4.jpg"> </div>
                                        <div class="article-post"> <span class="user-info"> By: john Deo /日期:2018年5月9日 /时间：09:27 AM </span>
                                            <p><a href="#">This is a much longer one that will go on for a few lines.Itaffle to pad out the comment.</a> </p>
                                        </div>

                                    <li><button class="btn btn-warning btn-mini">View All</button></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="span6">
                        <div class="widget-box">
                            <div class="widget-title"> <span class="icon"> <i class="icon-refresh"></i> </span>
                                <h5>新闻资讯</h5>
                            </div>
                            <div class="widget-content nopadding updates">
                                <div class="new-update clearfix"><i class="icon-ok-sign"></i>
                                    <div class="update-done"><a title="" href="#"><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></a> <span>dolor sit amet, consectetur adipiscing eli</span> </div>
                                    <div class="update-date"><span class="update-day">20</span>jan</div>
                                </div>
                                <div class="new-update clearfix"> <i class="icon-gift"></i> <span class="update-notice"> <a title="" href="#"><strong>Congratulation Maruti, Happy Birthday </strong></a> <span>many many happy returns of the day</span> </span> <span class="update-date"><span class="update-day">11</span>jan</span> </div>
                                <div class="new-update clearfix"> <i class="icon-move"></i> <span class="update-alert"> <a title="" href="#"><strong>Maruti is a Responsive Admin theme</strong></a> <span>But already everything was solved. It will ...</span> </span> <span class="update-date"><span class="update-day">07</span>Jan</span> </div>
                                <div class="new-update clearfix"> <i class="icon-leaf"></i> <span class="update-done"> <a title="" href="#"><strong>Envato approved Maruti Admin template</strong></a> <span>i am very happy to approved by TF</span> </span> <span class="update-date"><span class="update-day">05</span>jan</span> </div>
                                <div class="new-update clearfix"> <i class="icon-question-sign"></i> <span class="update-notice"> <a title="" href="#"><strong>I am alwayse here if you have any question</strong></a> <span>we glad that you choose our template</span> </span> <span class="update-date"><span class="update-day">01</span>jan</span> </div>
                            </div>
                        </div>
                    </div>

                </div>


            </div>
        </div>
        <div class="widget-box">
            <div class="widget-content">
                <div class="row-fluid">
                    <div class="span6">
                        <div class="alert alert-success">我们在这里做了聊天选项，通过写一些东西×看看<a href="#" class="close" data-dismiss="alert">×</a></div>
                        <div class="widget-box widget-chat">
                            <div class="widget-title"> <span class="icon"> <i class="icon-comment"></i> </span>
                                <h5>Chat Option</h5>
                            </div>
                            <div class="widget-content nopadding">
                                <div class="chat-users panel-right2">
                                    <div class="panel-title">
                                        <h5>Online Users</h5>
                                    </div>
                                    <div class="panel-content nopadding">
                                        <ul class="contact-list">
                                            <li id="user-Sunil" class="online"><a href=""><img alt="" src="img/demo/av1.jpg" /> <span>张迁</span></a></li>
                                            <li id="user-Laukik"><a href=""><img alt="" src="img/demo/av2.jpg" /> <span>张娜娜</span></a></li>
                                            <li id="user-vijay" class="online new"><a href=""><img alt="" src="img/demo/av3.jpg" /> <span>刘振国</span></a><span class="msg-count badge badge-info">3</span></li>
                                            <li id="user-Jignesh" class="online"><a href=""><img alt="" src="img/demo/av4.jpg" /> <span>晋鹏龙</span></a></li>
                                            <li id="user-Malay" class="online"><a href=""><img alt="" src="img/demo/av5.jpg" /> <span>孙佑证</span></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="chat-content panel-left2">
                                    <div class="chat-messages" id="chat-messages">
                                        <div id="chat-messages-inner"></div>
                                    </div>
                                    <div class="chat-message well">
                                        <button class="btn btn-success">发送</button>
                                        <span class="input-box">
                    <input type="text" name="msg-box" id="msg-box" />
                    </span> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span6">
                        <div class="accordion" id="collapse-group">
                            <div class="accordion-group widget-box">
                                <div class="accordion-heading">
                                    <div class="widget-title"> <a data-parent="#collapse-group" href="#collapseGOne" data-toggle="collapse"> <span class="icon"><i class="icon-magnet"></i></span>
                                        <h5>Accordion Example 1</h5>
                                    </a> </div>
                                </div>
                                <div class="collapse in accordion-body" id="collapseGOne">
                                    <div class="widget-content"> It has multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end. </div>
                                </div>
                            </div>
                            <div class="accordion-group widget-box">
                                <div class="accordion-heading">
                                    <div class="widget-title"> <a data-parent="#collapse-group" href="#collapseGTwo" data-toggle="collapse"> <span class="icon"><i class="icon-magnet"></i></span>
                                        <h5>Accordion Example 2</h5>
                                    </a> </div>
                                </div>
                                <div class="collapse accordion-body" id="collapseGTwo">
                                    <div class="widget-content">And is full of waffle to It has multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end.</div>
                                </div>
                            </div>
                            <div class="accordion-group widget-box">
                                <div class="accordion-heading">
                                    <div class="widget-title"> <a data-parent="#collapse-group" href="#collapseGThree" data-toggle="collapse"> <span class="icon"><i class="icon-magnet"></i></span>
                                        <h5>Accordion Example 3</h5>
                                    </a> </div>
                                </div>
                                <div class="collapse accordion-body" id="collapseGThree">
                                    <div class="widget-content"> Waffle to It has multiple paragraphs and is full of waffle to pad out the comment. Usually, you just </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span6">
                        <div class="widget-box">
                            <div class="widget-title">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#tab1">Tab1</a></li>
                                    <li><a data-toggle="tab" href="#tab2">Tab2</a></li>
                                    <li><a data-toggle="tab" href="#tab3">Tab3</a></li>
                                </ul>
                            </div>
                            <div class="widget-content tab-content">
                                <div id="tab1" class="tab-pane active"><p>And is full of waffle to It has multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end.multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end.multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end. </p>
                                    <img src="img/demo/demo-image1.jpg" alt="demo-image"/></div>
                                <div id="tab2" class="tab-pane">
                                    <img src="img/demo/demo-image2.jpg" alt="demo-image"/><p>And is full of waffle to It has multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end.multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end.multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end. </p></div>
                                <div id="tab3" class="tab-pane"><p>And is full of waffle to It has multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end.multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end.multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end. </p>
                                    <img src="img/demo/demo-image3.jpg" alt="demo-image"/></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<div class="row-fluid">
    <div id="footer" class="span12"> 此网站有金科最强组开发如有雷同.那就随缘吧 <%-- Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>--%> </div>
</div>
<script src="js/excanvas.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.ui.custom.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.flot.min.js"></script>
<script src="js/jquery.flot.resize.min.js"></script>
<script src="js/jquery.peity.min.js"></script>
<script src="js/fullcalendar.min.js"></script>
<script src="js/maruti.js"></script>
<script src="js/maruti.dashboard.js"></script>
<script src="js/maruti.chat.js"></script>

</body>
</html>
