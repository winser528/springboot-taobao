<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0031)http://www.taozfu.com/login.php -->
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD><TITLE>淘众福-淘我所需！ 打造全球最大的跨媒体生活信息服务平台！</TITLE>
    <META content="text/html; charset=utf-8" http-equiv=Content-Type>
    <META content=IE=EmulateIE7 http-equiv=X-UA-Compatible>
    <META name=keywords content=淘众福官方网>
    <META name=description content="淘众福  ABC模式  网络购物 网络创业">
    <META name=GENERATOR content="MSHTML 8.00.6001.19328">
    <LINK rel=stylesheet type=text/css href="/static/css/style.css">
    <LINK rel=stylesheet type=text/css href="/static/css/reg.css">
    <LINK rel=stylesheet type=text/css href="/static/css/taocss.css">
    <SCRIPT type=text/javascript src="/static/js/jquery-1.8.3.min.js"></SCRIPT>
    <SCRIPT type=text/javascript src="/static/js/user_new.js"></SCRIPT>
    <SCRIPT type=text/javascript src="/static/js/utils.js"></SCRIPT>
</HEAD>
<BODY>
<jsp:include page="_head.jsp"/>
<DIV style="Z-INDEX: 9999; POSITION: relative; PADDING-TOP: 0px" class=search>
    <DIV class=Navlist>
        <DIV class=lnav><A onmousemove=showMenu() href="#"><IMG src="/static/image/311top_142.gif"></A>
            <DIV style="DISPLAY: none" id=listMenu class=listMenu></DIV>
        </DIV>
        <DIV class=clear></DIV>
    </DIV>
    <FORM id=searchForm method=get name=searchForm action=/fenlei.php>
        <INPUT value=query type=hidden name=action>
        <SELECT class=select_t name=so_ctype>
            <OPTION selected value=1>商品名称</OPTION>
            <OPTION value=2>产品编号</OPTION>
            <OPTION value=3>产品品牌</OPTION>
            <OPTION value=4>供应商名称</OPTION>
            <OPTION value=5>福分</OPTION>
        </SELECT>
        <INPUT onblur="if(this.value=='')this.value='商品名称';" style="BACKGROUND: #ffffff"
               id=keyword class=text onFocus="if(this.value=='商品名称')this.value='';" value=商品名称 name=keywords>
        <INPUT class=submit type=submit name="" value="">
        <SPAN>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>热门搜索</STRONG>：
            <A href="#">金雅莉安</A>
            <A href="#"> 超氧离子水生成器</A>
            <A href="#"> O度</A>
        </SPAN>
        <SPAN class=jiesuan>
            <A href="#" rel=nofollow><IMG src="/static/image/311top_16.gif"></A>
        </SPAN>
        <SPAN id=gouwuche class=gwc>共<STRONG>0</STRONG> 件商品 <STRONG></STRONG></SPAN>
    </FORM>
</DIV><!--头部结束--><!--内容开始-->
<DIV class=" box">
    <DIV class=boxL>
        <DIV class=loginleft><!--<p>★ 与中国工商银行+银联携手合作
        <br />
       &nbsp;&nbsp;&nbsp; 共同打造中国最大的品牌特惠分期商城
        <br />
        ★ 与700多家国际品牌商紧密合作
        <br />
       &nbsp;&nbsp;&nbsp; 共同打造中国最大的品牌特惠分期商城</p>--></DIV>
        <UL>
            <LI>
                <STRONG>正品低价、全场免邮</STRONG><BR>
                <SPAN lang=EN-US xml:lang="EN-US">700</SPAN>多家国际品牌商直接参与供货，所有商品均是原厂正品，超低价格，正规发票，享受原厂售后。
            </LI>
            <LI class=li2><IMG src="/static/image/login_17.gif"></LI>
            <LI>
                <STRONG>直付、到付任选</STRONG><BR>银联首批合作商城，安全快捷无需开通网银；分期手续费超低，多种分期支付方式：货到付款，支付宝，网银在线，财富通。
            </LI>
            <LI class=li2><IMG src="/static/image/login_17.gif"></LI>
            <LI><STRONG>一流的售前售后服务</STRONG><BR>全力打造“忠诚管家，维权卫士”的服务理念，让您买的放心、用的舒心，购物无忧快乐轻松。</LI>
        </UL>
    </DIV>
    <DIV class=boxR>
        <DIV class=R1>
            <UL></UL>
            <DIV class=clear></DIV>
        </DIV>
        <DIV class=R2>
            <SCRIPT type=text/javascript>
                function suggestion(val) {if (val == '请输入用户名') {document.getElementById('username').value = '';}}
            </SCRIPT>
            <FORM id="formLogin" onSubmit="return userLogin_new();" method=post name=formLogin action="UserLogin">
                <TABLE border=0 cellSpacing=10 cellPadding=0 width=370>
                    <TBODY>
                    <TR>
                        <TD width=54 align=right>用户名：</TD>
                        <TD width=300>
                            <LABEL>
                                <INPUT id=username class=input1 onfocus=suggestion(this.value) placeholder="请输入用户名" name=username>
                            </LABEL>
                        </TD>
                    </TR>
                    <TR>
                        <TD align=right>密码：</TD>
                        <TD>
                            <LABEL>
                                <INPUT id=password class=input1 type=password name=password placeholder="请输入密码">
                                <SPAN><A href="#"> 忘记密码?</A></SPAN>
                            </LABEL>
                        </TD>
                    </TR>
                    <TR>
                        <TD>&nbsp;</TD>
                        <TD>
                            <LABEL>
                                <!--<input type="checkbox" name=" " id=" " />记住用户名&nbsp;-->
                                <INPUT id=autologin value=1 CHECKED type=checkbox name=autologin>自动登录
                                <input type="hidden" value="1" name="power"/>
                            </LABEL>
                        </TD>
                    </TR>
                    <TR>
                        <TD align=middle><LABEL></LABEL></TD>
                        <TD>
                            <INPUT id="act" value="act_login_new" type="hidden" name="act">
                            <INPUT class=dl value="登 录" src="/static/image/ljdl.jpg" type=image name=login>
                            &nbsp; <SPAN id=login_message class=red></SPAN>
                        </TD>
                    </TR>
                    </TBODY>
                </TABLE>
            </FORM>
        </DIV>
        <DIV class=R3>
            <P><STRONG>还不是淘众福用户？</STRONG><BR>现在免费注册，立刻尽享淘众福提供的各项优惠及服务，开始便宜又放心的购物之旅吧!</P>
            <A href="/register"><IMG alt=新用户注册 src="/static/image/22_07.gif"></A>
        </DIV>
    </DIV>
    <DIV class=clear></DIV>
</DIV><!--内容结束-->
<jsp:include page="_foot.jsp"/>
</BODY>
</HTML>