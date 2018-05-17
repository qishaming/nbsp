<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- saved from url=(0093)https://passport.ly.com/register/index/?pageurl=https%3A%2F%2Fwww.ly.com%2F%3FrefId%3D4140683 -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title></title>
    <meta name="author" content="同程旅游">
    <meta name="copyright" content="同程旅游网络科技有限公司" http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/zhuce_files/NTSV2.6.8.js"></script>
    <script src="<%=request.getContextPath() %>/js/zhuce_files/hm.js"></script>
    <script async="" type="text/javascript" src="<%=request.getContextPath() %>/js/zhuce_files/saved_resource"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/zhuce_files/tc_top_1.1.js"></script>

    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/kindeditor-4.1.10/kindeditor.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/kindeditor-4.1.10/lang/zh_CN.js" charset="utf-8"></script>

    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/easyui/themes/ui-cupertino/easyui.css"/>



    <script type="text/javascript">
        var _tcopentime = new Date().getTime();
    </script>
    <link href="<%=request.getContextPath() %>/js/zhuce_files/reset_1.0.css" type="text/css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/zhuce_files/common_1.2.1.css" type="text/css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/zhuce_files/passport_1.0.css" type="text/css" rel="stylesheet">
    <style>
        .field-validation-valid span
        {
            background: none repeat scroll 0 0 #FFF4ED;
            border: 1px solid #FFD5BB;
            float: left;
            height: 21px;
            line-height: 21px;
            margin-left: 10px;
            padding: 0 10px;
        }
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
    <link rel="stylesheet" href="<%=request.getContextPath() %>/js/zhuce_files/style_https.3.2.0.css">
    <script src="<%=request.getContextPath() %>/js/zhuce_files/getsig"></script></head>
<body>






<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<title>注册账号</title>
<meta name="author" content="商家注册">
<meta name="copyright" content="品优购">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/js/zhuce_files/areaCodeSelect.0.0.1.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/zhuce_files/regstep1.0.0.2.css">


<h1 class="header clearfix">

    <div class="welcome">
        <h2>品优购 欢迎您注册！</h2>
    </div>
    <div class="login_entry">
        <p>已有商家账号？<a href="<%=request.getContextPath() %>/login.jsp">登录</a></p>
    </div>
</h1>
<div class="content">
    <div class="panel">
        <div class="panel_top"></div>
        <div class="panel_middle step1">
            <ul class="step_name clearfix">
                <li class="step_name_1">填写注册信息</li>
                <li class="step_name_2">接受并填写验证码</li>
                <li class="step_name_3">注册成功</li>
            </ul>
            <div class="step_cont_1 clearfix">
                <div class="register_wrapper">
                    <form name="registerStep1" id="registerStep1" >
                        <input type="hidden" name="isUseTieQiong" id="isUseTieQiong" value="1">


                        <p class="register_info_line c_two_register_second_info_line">
                            <label class="label" for="pwdOnce"><span class="requied_symbol">*</span>账号</label>
                            <input class="easyui-textbox"  id="userRealName" name="user.username" prompt="账号" style="width:220px;height:34px;">


                        </p>

                        <p class="register_info_line c_two_register_second_info_line">
                            <label class="label" for="pwdTwice"><span class="requied_symbol">*</span>密码</label>
                            <input class="easyui-textbox"  id="userCard" name="user.password"  prompt="密码"  style="width:220px;height:34px;">

                            <span class="prompt"></span>
                        </p>
                        <p class="register_info_line c_two_register_second_info_line">
                            <label class="label" for="pwdTwice"><span class="requied_symbol">*</span>电话</label>
                            <input class="easyui-textbox"  id="userPhone1" name="user.userphone"  prompt="电话"  style="width:220px;height:34px;">

                            <span class="prompt"></span>
                        </p>
                        <p class="register_info_line c_two_register_second_info_line">
                            <label class="label" for="pwdTwice"><span class="requied_symbol">*</span>验证</label>
                                <input type="text" class="easyui-textbox" prompt="请输入收到的验证码" style="width:220px;height:34px;" id="code1" name="code"  placeholder="请输入收到的验证码"></br>
                                <button  type="button" class="easyui-linkbutton" id="links" value="发送短信验证码">发送短信验证码</button>
                            <span class="prompt"></span>
                        </p>

                        <p class="register_info_line register_submit_btn_wrapper">
                            <a id="yanzhengCard1" class="register_submit_btn" href="javascript:void(0);">完成并继续下一步</a>
                            <%--<a style="display:none" href="javascript:void(0);" id="origin_modulecheck"></a><a style="display:none" href="javascript:;" id="modulecheck"></a>--%>
                           <%-- <span id="getcode"><script src="./zhuce_files/get.php" async=""></script><div class="gt_input"><input class="geetest_challenge" type="hidden" name="geetest_challenge">
                                <input class="geetest_validate" type="hidden" name="geetest_validate"><input class="geetest_seccode" type="hidden" name="geetest_seccode"></div></span>
                            <a id="cWaitestep1Submit" class="c_waite_register_submit_btn none" href="javascript:void(0);"></a>--%>
                        </p>
                    </form>
                    <div class="clause">
                        <div class="clause_head"><a href="https://passport.ly.com/register/index/?pageurl=https%3A%2F%2Fwww.ly.com%2F%3FrefId%3D4140683#" class="clause_close"></a></div>
                        <div class="clause_con">

                        </div>
                    </div>                    </div>
            </div>
        </div>
        <div class="panel_bottom"></div>
    </div>
</div>

<div class="footer">
    Copyright&nbsp;©&nbsp;2002-2018&nbsp;版权所有&nbsp;品优购&nbsp;<a target="_blank" href="https://security.40017.cn/cn/img/new_ui/public/images/ICP.jpg" class="icp_num">北京ICP证B2-110110110</a>    </div>

<script type="text/javascript">
    var _tcopentime = new Date().getTime();
</script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/zhuce_files/saved_resource(1)"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/zhuce_files/c_0_1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/zhuce_files/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/zhuce_files/leonid-tq-jq-v3-min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/zhuce_files/areaCodeSelect.0.0.1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/zhuce_files/regstep1.0.0.1.js"></script>
<script type="text/javascript">
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
    _tcq.push(['_trackPageview', '/公共/Passport/register/index']);
</script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/zhuce_files/vst.ashx" charset="utf-8"></script>

<!--百度统计-->
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
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?c6a93e2a75a5b1ef9fb5d4553a2226e5";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<script type="text/javascript">
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
    _tcq.push(['_trackPageview', '/公共/Passport/登陆']);
</script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/zhuce_files/vst.ashx" charset="utf-8"></script>

<%--
<div id="areaCodeSelect-49024f6e-ec41-d716-c050-9664534fbace" class="pt__areacode_wrap" style="display: none"><div class="areacode_wrap_box"><span class="pt__areacode_close"></span><div class="pt__areacode_con"> <div class="pt__areacode_tab"><ul class="clearfix"><li class="current">HOT</li><li class="">A</li><li class="">B</li><li class="">D</li><li class="">E</li><li class="">F</li><li class="">G</li><li class="">H</li><li class="">J</li><li class="">L</li><li class="">M</li><li class="">N</li><li class="">P</li><li class="">R</li><li class="">S</li><li class="">T</li><li class="">W</li><li class="">X</li><li class="">Y</li><li class="">Z</li></ul></div><div class="pt__areacode_tray clearfix"><span class="areacode-normal" title="中国86" attr-code="86"><em>中国</em><i>86</i></span><span class="areacode-normal" title="中国香港852" attr-code="852"><em>中国香港</em><i>852</i></span><span class="areacode-normal" title="中国澳门853" attr-code="853"><em>中国澳门</em><i>853</i></span><span class="areacode-normal" title="中国台湾886" attr-code="886"><em>中国台湾</em><i>886</i></span><span class="areacode-normal" title="日本81" attr-code="81"><em>日本</em><i>81</i></span><span class="areacode-normal" title="韩国82" attr-code="82"><em>韩国</em><i>82</i></span><span class="areacode-normal" title="泰国66" attr-code="66"><em>泰国</em><i>66</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="澳大利亚61" attr-code="61"><em>澳大利亚</em><i>61</i></span><span class="areacode-normal" title="埃及20" attr-code="20"><em>埃及</em><i>20</i></span><span class="areacode-normal" title="埃塞俄比亚251" attr-code="251"><em>埃塞俄比亚</em><i>251</i></span><span class="areacode-normal" title="安哥拉244" attr-code="244"><em>安哥拉</em><i>244</i></span><span class="areacode-normal" title="阿尔巴尼亚355" attr-code="355"><em>阿尔巴尼亚</em><i>355</i></span><span class="areacode-normal" title="安道尔376" attr-code="376"><em>安道尔</em><i>376</i></span><span class="areacode-normal" title="奥地利43" attr-code="43"><em>奥地利</em><i>43</i></span><span class="areacode-normal" title="爱尔兰353" attr-code="353"><em>爱尔兰</em><i>353</i></span><span class="areacode-normal" title="阿根廷54" attr-code="54"><em>阿根廷</em><i>54</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="巴基斯坦92" attr-code="92"><em>巴基斯坦</em><i>92</i></span><span class="areacode-normal" title="百慕大群岛1441" attr-code="1441"><em>百慕大群岛</em><i>1441</i></span><span class="areacode-normal" title="巴拿马507" attr-code="507"><em>巴拿马</em><i>507</i></span><span class="areacode-normal" title="伯利兹501" attr-code="501"><em>伯利兹</em><i>501</i></span><span class="areacode-normal" title="冰岛354" attr-code="354"><em>冰岛</em><i>354</i></span><span class="areacode-normal" title="白俄罗斯375" attr-code="375"><em>白俄罗斯</em><i>375</i></span><span class="areacode-normal" title="波兰48" attr-code="48"><em>波兰</em><i>48</i></span><span class="areacode-normal" title="比利时32" attr-code="32"><em>比利时</em><i>32</i></span><span class="areacode-normal" title="保加利亚359" attr-code="359"><em>保加利亚</em><i>359</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="东帝汶670" attr-code="670"><em>东帝汶</em><i>670</i></span><span class="areacode-normal" title="丹麦45" attr-code="45"><em>丹麦</em><i>45</i></span><span class="areacode-normal" title="德国49" attr-code="49"><em>德国</em><i>49</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="俄罗斯7" attr-code="7"><em>俄罗斯</em><i>7</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="菲律宾63" attr-code="63"><em>菲律宾</em><i>63</i></span><span class="areacode-normal" title="斐济679" attr-code="679"><em>斐济</em><i>679</i></span><span class="areacode-normal" title="芬兰358" attr-code="358"><em>芬兰</em><i>358</i></span><span class="areacode-normal" title="法国33" attr-code="33"><em>法国</em><i>33</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="古巴53" attr-code="53"><em>古巴</em><i>53</i></span><span class="areacode-normal" title="格陵兰岛299" attr-code="299"><em>格陵兰岛</em><i>299</i></span><span class="areacode-normal" title="关岛1671" attr-code="1671"><em>关岛</em><i>1671</i></span><span class="areacode-normal" title="哥伦比亚57" attr-code="57"><em>哥伦比亚</em><i>57</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="韩国82" attr-code="82"><em>韩国</em><i>82</i></span><span class="areacode-normal" title="哈萨克斯坦7" attr-code="7"><em>哈萨克斯坦</em><i>7</i></span><span class="areacode-normal" title="荷兰31" attr-code="31"><em>荷兰</em><i>31</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="柬埔寨855" attr-code="855"><em>柬埔寨</em><i>855</i></span><span class="areacode-normal" title="加拿大1" attr-code="1"><em>加拿大</em><i>1</i></span><span class="areacode-normal" title="捷克420" attr-code="420"><em>捷克</em><i>420</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="老挝856" attr-code="856"><em>老挝</em><i>856</i></span><span class="areacode-normal" title="利比亚218" attr-code="218"><em>利比亚</em><i>218</i></span><span class="areacode-normal" title="立陶宛370" attr-code="370"><em>立陶宛</em><i>370</i></span><span class="areacode-normal" title="罗马尼亚40" attr-code="40"><em>罗马尼亚</em><i>40</i></span><span class="areacode-normal" title="卢森堡352" attr-code="352"><em>卢森堡</em><i>352</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="马来西亚60" attr-code="60"><em>马来西亚</em><i>60</i></span><span class="areacode-normal" title="马尔代夫960" attr-code="960"><em>马尔代夫</em><i>960</i></span><span class="areacode-normal" title="孟加拉国880" attr-code="880"><em>孟加拉国</em><i>880</i></span><span class="areacode-normal" title="蒙古976" attr-code="976"><em>蒙古</em><i>976</i></span><span class="areacode-normal" title="美国1" attr-code="1"><em>美国</em><i>1</i></span><span class="areacode-normal" title="墨西哥52" attr-code="52"><em>墨西哥</em><i>52</i></span><span class="areacode-normal" title="摩洛哥212" attr-code="212"><em>摩洛哥</em><i>212</i></span><span class="areacode-normal" title="马达加斯加261" attr-code="261"><em>马达加斯加</em><i>261</i></span><span class="areacode-normal" title="毛里求斯230" attr-code="230"><em>毛里求斯</em><i>230</i></span><span class="areacode-normal" title="摩纳哥377" attr-code="377"><em>摩纳哥</em><i>377</i></span><span class="areacode-normal" title="秘鲁51" attr-code="51"><em>秘鲁</em><i>51</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="尼泊尔977" attr-code="977"><em>尼泊尔</em><i>977</i></span><span class="areacode-normal" title="南非27" attr-code="27"><em>南非</em><i>27</i></span><span class="areacode-normal" title="挪威47" attr-code="47"><em>挪威</em><i>47</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="葡萄牙351" attr-code="351"><em>葡萄牙</em><i>351</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="日本81" attr-code="81"><em>日本</em><i>81</i></span><span class="areacode-normal" title="瑞典46" attr-code="46"><em>瑞典</em><i>46</i></span><span class="areacode-normal" title="瑞士41" attr-code="41"><em>瑞士</em><i>41</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="斯里兰卡94" attr-code="94"><em>斯里兰卡</em><i>94</i></span><span class="areacode-normal" title="沙特966" attr-code="966"><em>沙特</em><i>966</i></span><span class="areacode-normal" title="萨摩亚685" attr-code="685"><em>萨摩亚</em><i>685</i></span><span class="areacode-normal" title="塞尔维亚381" attr-code="381"><em>塞尔维亚</em><i>381</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="泰国66" attr-code="66"><em>泰国</em><i>66</i></span><span class="areacode-normal" title="土耳其90" attr-code="90"><em>土耳其</em><i>90</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="文莱673" attr-code="673"><em>文莱</em><i>673</i></span><span class="areacode-normal" title="委内瑞拉58" attr-code="58"><em>委内瑞拉</em><i>58</i></span><span class="areacode-normal" title="乌克兰380" attr-code="380"><em>乌克兰</em><i>380</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="新加坡65" attr-code="65"><em>新加坡</em><i>65</i></span><span class="areacode-normal" title="西班牙34" attr-code="34"><em>西班牙</em><i>34</i></span><span class="areacode-normal" title="希腊30" attr-code="30"><em>希腊</em><i>30</i></span><span class="areacode-normal" title="匈牙利36" attr-code="36"><em>匈牙利</em><i>36</i></span><span class="areacode-normal" title="新西兰64" attr-code="64"><em>新西兰</em><i>64</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="印尼62" attr-code="62"><em>印尼</em><i>62</i></span><span class="areacode-normal" title="越南84" attr-code="84"><em>越南</em><i>84</i></span><span class="areacode-normal" title="印度91" attr-code="91"><em>印度</em><i>91</i></span><span class="areacode-normal" title="以色列972" attr-code="972"><em>以色列</em><i>972</i></span><span class="areacode-normal" title="意大利39" attr-code="39"><em>意大利</em><i>39</i></span><span class="areacode-normal" title="英国44" attr-code="44"><em>英国</em><i>44</i></span></div><div class="pt__areacode_tray none clearfix"><span class="areacode-normal" title="中国86" attr-code="86"><em>中国</em><i>86</i></span><span class="areacode-normal" title="中国澳门853" attr-code="853"><em>中国澳门</em><i>853</i></span><span class="areacode-normal" title="中国台湾886" attr-code="886"><em>中国台湾</em><i>886</i></span><span class="areacode-normal" title="中国香港852" attr-code="852"><em>中国香港</em><i>852</i></span><span class="areacode-normal" title="智利56" attr-code="56"><em>智利</em><i>56</i></span></div></div></div></div><div class="gt_holder gt_popup" style="touch-action: none;"><div class="gt_mask"></div><div class="gt_popup_wrap"><div class="gt_popup_header"><div class="gt_popup_ready">请先完成下方验证</div><div class="gt_popup_finish">页面将在2秒后跳转</div><div class="gt_popup_cross"></div></div><div class="gt_popup_box"><div class="gt_widget"><div class="gt_holder_top"></div><div class="gt_box_holder" style="height: 116px;"><div class="gt_box"><div class="gt_loading"><div class="gt_loading_icon"></div><div class="gt_loading_text">加载中...</div></div><a class="gt_bg gt_show" style="background-image: none;"><div class="gt_cut_bg gt_show"><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -157px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -145px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -265px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -277px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -181px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -169px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -241px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -253px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -109px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -97px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -289px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -301px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -85px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -73px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -25px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -37px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -13px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -1px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -121px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -133px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -61px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -49px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -217px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -229px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -205px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -193px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -145px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -157px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -277px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -265px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -169px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -181px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -253px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -241px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -97px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -109px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -301px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -289px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -73px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -85px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -37px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -25px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -1px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -13px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -133px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -121px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -49px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -61px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -229px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -217px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -193px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/bg/81899987e.webp&quot;); background-position: -205px 0px;"></div></div><div class="gt_slice gt_show" style="left: 0px; background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/slice/81899987e.png&quot;); width: 63px; height: 52px; top: 34px;"></div></a><a class="gt_fullbg gt_show" style="cursor: default; background-image: none;"><div class="gt_cut_fullbg gt_show"><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -157px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -145px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -265px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -277px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -181px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -169px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -241px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -253px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -109px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -97px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -289px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -301px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -85px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -73px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -25px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -37px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -13px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -1px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -121px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -133px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -61px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -49px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -217px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -229px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -205px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -193px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -145px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -157px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -277px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -265px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -169px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -181px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -253px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -241px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -97px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -109px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -301px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -289px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -73px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -85px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -37px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -25px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -1px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -13px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -133px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -121px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -49px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -61px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -229px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -217px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -193px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/6121c49a0/6121c49a0.webp&quot;); background-position: -205px 0px;"></div></div><div class="gt_flash" style="height: 94px;"></div><div class="gt_ie_success"></div></a><a class="gt_curtain gt_hide" style="background-image: none;"><div class="gt_curtain_bg_wrap"><div class="gt_curtain_bg"><div class="gt_cut_curtain"></div></div></div><div class="gt_curtain_button gt_hide"></div></a><a class="gt_box_tips" style="display: none;"></a></div><div class="gt_info"><div class="gt_info_tip"><div class="gt_info_icon"></div><div class="gt_info_text"></div></div></div></div><div class="gt_bottom"><a class="gt_refresh_button"><div class="gt_refresh_tips">刷新验证</div></a><a class="gt_help_button" href="http://www.geetest.com/contact#report" target="_blank"><div class="gt_help_tips">帮助反馈</div></a><a class="gt_logo_button" href="http://www.geetest.com/first_page" target="_blank"></a></div></div><div class="gt_slider"><div class="gt_guide_tip gt_show">按住左边滑块，拖动完成上方拼图</div><div class="gt_slider_knob gt_show" style="left: 0px;"></div><div class="gt_curtain_tip gt_hide">点击上图按钮并沿道路拖动到终点处</div><div class="gt_curtain_knob gt_hide">移动到此开始验证</div><div class="gt_ajax_tip gt_ready"></div></div></div></div></div>--%>

<script type="text/javascript">
    var aa = 60;
    $("#links").click(function(){
        /*  alert($("#userPhone").val());*/
        aa = 60;
        this.disabled=true;
        $.ajax({
            url:"<%=request.getContextPath()%>/LoginAction/yanzhengPhone.action",
            data:{"userphone":$("#userPhone1").val()},
            dataType:"text",
            type:"post",
            async:false,
            success:function(){
                alert(123)
            },
            error:function(){
                alert("!系统错误")
            }
        })
        jishi()
    })
    function jishi(){

        $("#links").val(aa+"秒后可重新发送");
        if (aa-- != 0) {
            window.setTimeout("jishi()", 1000);
        }else {
            $("#links").val("发送短信验证码");
            $("#links").prop("disabled",false);
        }
    }

    /*完成并继续*/
    $("#yanzhengCard1").click(function(){
        var code= $("#code1").val()
        $.ajax({

            url:"<%=request.getContextPath()%>/LoginAction/zhuce1.action?code"+code,
            data:$("#registerStep1").serialize(),
            type:"post",
            dataType:"text",
            async:false,
            success:function(succ){
                if (succ == "1") {
                    alert("注册失败验证码不正确")

                }else {
                    alert("继续填写")
                    location.href="<%=request.getContextPath()%>/storezhuche.jsp";
                }
            },
            error:function(){
                Alert("请联系管理员")
            }
        })

    })
</script>

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



/*
    $("#username").blur(function(){
        var name=$("#username").val();
        $.ajax({
            url:"<%=request.getContextPath()%>/queryName",
            type:"post",
            data:{"name":name},
            dataType:"text",
            async:true,
            success:function(data){
                if(data == "success"){

                }
                else{
                    Alert("用户名已存在");
                    $("#username").val("");
                }
            },
            error:function(){
                Alert("登录出现异常！！！");
            }
        })


    })*/

</script>


</body></html>