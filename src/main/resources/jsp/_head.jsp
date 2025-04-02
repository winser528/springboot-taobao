<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<SCRIPT type=text/javascript src="/static/js/jquery-1.8.3.min.js"></SCRIPT>
<SCRIPT>
    /* 添加到收藏夹 */
    function addToFavorite() {
        var a = "http://www.taozfu.com/";
        var b = "淘我所需！ 打造全球最大的跨媒体生活信息服务平台！！";
        if (document.all) {
            window.external.AddFavorite(a, b)
        } else if (window.sidebar) {
            window.sidebar.addPanel(b, a, "")
        } else {
            alert("对不起，您的浏览器不支持此操作!\n请您使用菜单栏或Ctrl+D收藏本站。")
        }
    }

    $(document).ready(function () {
        $('li.mainlevel').mousemove(function () {
            $(this).find('ul').slideDown();//you can give it a speed
        });
        $('li.mainlevel').mouseleave(function () {
            $(this).find('ul').slideUp("fast");
        });
    });
</SCRIPT>
<DIV class=head>
    <DIV class=tao_top>
        <P>您好，欢迎光临淘众福！<SPAN><A href="/login">[请登录]</A></SPAN>，新用户？<SPAN><A href="/register">免费注册</A></SPAN></P>
        <UL>
            <LI id=mainlevel_01 class=mainlevel>
                <A href="#">我的淘众福<IMG src="/static/image/t_pic_11.gif"></A>
                <UL style="DISPLAY: none" id=sub_01 class=tao_xhcai>
                    <LI><A href="#"><IMG src="/static/image/t_pic_21.jpg"> 我的账户</A></LI>
                    <LI><A href="#"><IMG src="/static/image/t_pic_21.jpg"> 我的订单</A></LI>
                    <!--<li><a href="#"><img src="/images_web/t_pic_21.jpg"/> 我的收藏</a></li>-->
                </UL>
            </LI>
            <LI style="LINE-HEIGHT: 18px"><IMG src="/static/image/t_pic_08.gif"> 购物车<SPAN><A href="#">0</A></SPAN>件</LI>
            <LI id=mainlevel_02 class=mainlevel>
                <A href="#">网站导航<IMG src="/static/image/t_pic_11.gif"></A>
                <UL id=sub_02 class="tao_xhcai2 tvvi">
                    <LI><A href="#"><IMG src="/static/image/t_pic_21.jpg"> 新手上路</A></LI>
                    <LI><A onClick="javascript:alert('暂无此功能');" href="#"><IMG src="/static/image/t_pic_21.jpg"> 促销专区</A></LI>
                    <LI><A href="#"><IMG src="/static/image/t_pic_21.jpg"> 我要供货</A></LI>
                    <LI><A href="#"><IMG src="/static/image/t_pic_21.jpg"> 我要创业</A></LI>
                    <LI><A href="#"><IMG src="/static/image/t_pic_21.jpg"> 众福资讯</A></LI>
                </UL>
            </LI>
            <LI><IMG align=absMiddle src="/static/image/t_pic_05.jpg" width=12 height=17> <A href="#">在线客服</A></LI>
        </UL>
    </DIV>
    <DIV class=top_banner>
        <A title="贴心搭配  为您的生活添彩！" href="#"><IMG src="/static/image/ad_b6_1350695274.gif" width=978 height=43></A>
    </DIV>
    <DIV class=tao_topnav>
        <DIV class=navlogo><IMG src="/static/image/t_pic_28.jpg"></DIV>
        <DIV class=tao_mainbav>
            <P><IMG src="/static/image/t_pic_25.jpg"></P>
            <DIV class=topnav1>
                <DIV class=nav1><A href="#">首页</A></DIV>
                <DIV class=nav2>
                    <DIV class=nav2_left><IMG src="/static/image/t_pic_30.jpg"></DIV>
                    <DIV class=nav2_cent>
                        <UL>
                            <LI class=nc><A href="#">福品汇</A></LI>
                            <LI class=nc><A onClick="javascript:alert('暂无此功能');" href="#">促销专区</A></LI>
                            <!--<li class="nc"><a href="#">品牌专区</a></li>-->
                            <LI class=nc><A href="#">商学院</A></LI>
                            <LI class=nc1><A href="#">关于淘众福</A></LI>
                            <LI class=nc2><A href="#">众福资讯</A></LI>
                        </UL>
                    </DIV>
                    <DIV class=nav2_right><IMG src="/static/image/t_pic_33.jpg"></DIV>
                </DIV>
                <DIV class=topnav3><A href="#"
                >我要购物</A><A href="#"
                >我要创业</A><A href="#"
                >我要供货</A></DIV>
            </DIV>
        </DIV>
    </DIV>
</DIV>