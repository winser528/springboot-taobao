<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0029)http://www.taozfu.com/member/ -->
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD><TITLE>会员中心 - 淘我所需</TITLE>
    <META content="text/html; charset=utf-8" http-equiv=Content-Type>
    <META content=IE=EmulateIE7 http-equiv=X-UA-Compatible>
    <META name=keywords content="淘众福  ABC模式  网络购物 网络创业">
    <META name=description content=淘众福官方网>
    <META name=GENERATOR content="MSHTML 8.00.6001.19328">
    <LINK rel=stylesheet type=text/css href="/static/css/mvm.css">
    <LINK rel=stylesheet type=text/css href="/static/css/style.css">
    <LINK rel=stylesheet type=text/css href="/static/css/index.css">
    <LINK rel=stylesheet type=text/css href="/static/css/maihezhu.css">
    <LINK rel=stylesheet type=text/css href="/static/css/taocss.css">
    <SCRIPT language=javascript src="/static/js/jquery.js"></SCRIPT>

    <SCRIPT language=javascript src="/static/js/jquery.adscroll.js"></SCRIPT>

    <SCRIPT type=text/javascript src="/static/js/index.js"></SCRIPT>

    <STYLE type=text/css>BODY {
        MARGIN: 0px
    }

    .STYLE1 {
        FONT-SIZE: 12px
    }

    .STYLE3 {
        FONT-SIZE: 12px;
        FONT-WEIGHT: bold
    }

    .STYLE4 {
        COLOR: #03515d;
        FONT-SIZE: 12px
    }
    </STYLE>
</HEAD>
<BODY><!-- 头部开始 -->
<jsp:include page="_head.jsp"/>
<DIV style="Z-INDEX: 9999; POSITION: relative; PADDING-TOP: 0px" class=search>
    <DIV class=Navlist>
        <DIV class=lnav><A onmousemove=showMenu() href="javascript:void(0)"><IMG src="/static/image/311top_142.gif"></A>
            <DIV style="DISPLAY: none" id=listMenu class=listMenu></DIV>
        </DIV>
        <DIV class=clear></DIV>
    </DIV>
    <FORM id=searchForm method=get name=searchForm action=/fenlei.php target=_blank>
        <INPUT value=query type=hidden name=action>
        <SELECT class=select_t name=so_ctype>
            <OPTION selected value=1>商品名称</OPTION>
            <OPTION value=2>产品编号</OPTION>
            <OPTION value=3>产品品牌</OPTION>
            <OPTION value=4>供应商名称</OPTION>
            <OPTION value=5>福分</OPTION>
        </SELECT> <INPUT
            onblur="if(this.value=='')this.value='商品名称';" style="BACKGROUND: #ffffff"
            id=keyword class=text onfocus="if(this.value=='商品名称')this.value='';" value=商品名称
            name=keywords><INPUT class=submit type=submit name="" value="">
        <SPAN>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>热门搜索</STRONG>： <A
                href="#"
                target=_blank>金雅莉安</A><A href="#"
                                             target=_blank> 超氧离子水生成器</A><A
                href="#"
                target=_blank> O度</A> </SPAN><SPAN class=jiesuan><A
            href="#" rel=nofollow><IMG
            src="/static/image/311top_16.gif"></A></SPAN><SPAN id=gouwuche class=gwc>共
<STRONG>0</STRONG> 件商品 <STRONG></STRONG></SPAN></FORM>
</DIV>
<DIV class=clear></DIV>
<DIV class=wrapper><!-- 左边开始 -->
    <DIV class=left11>
        <H2 class=title5><A style="COLOR: #ffffff" href="/peason_center/main.html" target=I2>中心首页</A></H2>
        <DIV class="help11 height_overflow" rel="action">
            <DL>
                <DT>
                    <A class=show href="v" rel=menu_head>
                        <SPAN class=edge></SPAN>
                        <SPAN><IMG style="VERTICAL-ALIGN: middle" border=0 src="peason_center/huiyuan.gif"></SPAN>
                        我的账户</A>
                </DT>
                <DD>
                    <A href="#" target=I2>帐户金额管理</A>
                    <A href="#" target=I2>购物福分管理</A>
                    <A href="#" target=I2>重复消费查询</A>
                </DD>
            </DL>
            <DL>
                <DT><A class=hidden href="#" rel=menu_head>我的订单</A></DT>
                <DD style="DISPLAY: none">
                    <A href="#" target=I2>未支付订单</A>
                    <A href="#" target=I2>已支付订单</A>
                    <A href="#" target=I2>已发货订单</A>
                    <A href="#" target=I2>已收货订单</A>
                    <A href="#" target=I2>退货物流单</A>
                </DD>
            </DL>
            <DL>
                <DT>
                    <A class=hidden href="#"
                       rel=menu_head>升级查询</A>
                </DT>
                <DD style="DISPLAY: none">
                    <A href="#" target=I2>代消商升级记录</A>
                    <A href="#" target=I2>会员升级记录</A>
                </DD>
            </DL>
            <DL>
                <DT><A class=hidden href="#" rel=menu_head>信息管理</A></DT>
                <DD style="DISPLAY: none">
                    <A href="#" target=I2>系统公告</A>
                    <A href="#" target=I2>写邮件</A>
                    <A href="#" target=I2>收邮件</A>
                    <A href="#" target=I2>发件箱</A>
                    <A href="#" target=I2>我要投诉</A>
                    <A href="#" target=I2>我的投诉</A></DD>
            </DL>
            <DL>
                <DT><A class=hidden href="#" rel=menu_head>财务管理</A></DT>
                <DD style="DISPLAY: none"><A href="#" target=I2>网银充值</A><A href="#" target=I2>汇款通知</A></DD>
            </DL>
            <DL>
                <DT><A class=hidden href="#" rel=menu_head>供应商申请管理</A></DT>
                <DD style="DISPLAY: none"><A href="#" target=I2>供应商申请</A><A href="#" target=I2>供应商申请列表</A></DD>
            </DL>
            <DL>
                <DT><A class=hidden href="v" rel=menu_head>在线问答</A></DT>
                <DD style="DISPLAY: none"><A href="#" target=I2>在线提问</A><A href="#" target=I2>我的提问</A></DD>
            </DL>
        </DIV><!-- 帮助中心结束 -->
        <DIV class=clear></DIV>
        <H3 style="PADDING-LEFT: 5px; PADDING-TOP: 2px" class=title5>客服中心</H3>
        <DIV class="help_contact height_overflow">
            <P class=s_time><B>服务热线：</B><FONT color=#ff0000>400-677-9158</FONT></P>
            <P class=s_time><B>服务时间：</B>每天 8:30-23:30</P>
            <P><A href="#" target=_blank><IMG title=点击这里给我发消息 border=0 alt=点击这里给我发消息 src="peason_center/pa.gif"></A></P>
            <P><B>E-mail：</B>taozhongfukefu@126.com</P></DIV>
        <DIV class=clear></DIV>
    </DIV><!-- 左边结束 --><!-- 左边结束 -->
    <IFRAME style="MARGIN-LEFT: 5px" height=600 src="peason_center/main.html" frameBorder=0 width=770 allowTransparency name=I2>
        浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。
    </IFRAME>
</DIV>
<jsp:include page="_foot.jsp"/>
<!-- 页脚结束 -->
<SCRIPT language=javascript>
    function Marquee(o, lh, speed, delay) {
        var p = false;
        var t;
        o.innerHTML += o.innerHTML;
        o.style.marginTop = "0px";
        o.onmouseover = function () {p = true;}
        o.onmouseout = function () {p = false;}

        function start() {
            if (!p) o.style.marginTop = parseInt(o.style.marginTop) - 1 + "px";
            t = setInterval(scrolling, speed);
        }

        function scrolling() {
            if (parseInt(o.style.marginTop) % lh != 0) {
                o.style.marginTop = parseInt(o.style.marginTop) - 1 + "px";
                if (Math.abs(parseInt(o.style.marginTop)) >= o.scrollHeight / 2)
                    o.style.marginTop = o.scrollHeight / 2 - Math.abs(parseInt(o.style.marginTop)) + "px";
            } else {
                clearInterval(t);
                setTimeout(start, delay);
            }
        }

        setTimeout(start, delay);
    }

    if (document.getElementById("AntAccountmq")) {
        Marquee(document.getElementById("AntAccountmq"), 40, 20, 2000);
    }
</SCRIPT>
</BODY>
</HTML>