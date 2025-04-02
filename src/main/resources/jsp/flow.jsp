<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0030)http://www.taozfu.com/flow.php -->
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
    <TITLE>淘我所需！ 打造全球最大的跨媒体生活信息服务平台！</TITLE>
    <META content="text/html; charset=utf-8" http-equiv=Content-Type>
    <META content=IE=EmulateIE7 http-equiv=X-UA-Compatible>
    <META name=keywords content=淘众福官方网>
    <META name=description content="淘众福  ABC模式  网络购物 网络创业">
    <META name=GENERATOR content="MSHTML 8.00.6001.19328">
    <LINK rel=stylesheet type=text/css href="/static/css/style.css">
    <LINK rel=stylesheet type=text/css href="/static/css/flow.css">
    <LINK rel=stylesheet type=text/css href="/static/css/taocss.css">
    <SCRIPT type=text/javascript src="/static/js/jquery-1.8.3.min.js"></SCRIPT>
    <SCRIPT language=javascript>
        function flowx(iV, i, proid, guige) {
            frm = document.formCart;
            pronum = parseInt(document.getElementById("goods_number_" + i).value);
            pronum = isNaN(pronum) ? 0 : pronum;
            pronum += iV > 0 ? 1 : -1;
            if (pronum < 1) pronum = 1;
            window.location.href = "flow.php?action=editnum&id=" + proid + "&guige=" + encodeURI(guige) + "&num=" + pronum;
        }

        function goodsdel(id, numkey, guige) {
            //alert(id);
            location.href = '?action=del&id=' + id + '&guige=' + encodeURI(guige);
        }
    </SCRIPT>
</HEAD>
<BODY>
<jsp:include page="_head.jsp"/>
<DIV style="Z-INDEX: 9999; POSITION: relative; PADDING-TOP: 0px" class=search>
    <DIV class=Navlist>
        <DIV class=lnav><A onmousemove=showMenu() href="#"><IMG src="/static/image/311top_142.gif"></A>
            <DIV style="DISPLAY: none" id=listMenu class=listMenu></DIV>
        </DIV>
        <SCRIPT language=javascript type=text/javascript src="/static/image/lNav.html"></SCRIPT>
        <DIV class=clear></DIV>
    </DIV>
    <FORM id=searchForm method=get name=searchForm action=/fenlei.php target=_blank><INPUT value=query type=hidden name=action>
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
            <A href="#" target=_blank>金雅莉安</A>
            <A href="#" target=_blank> 超氧离子水生成器</A>
            <A href="#" target=_blank> O度</A>
        </SPAN>
        <SPAN class=jiesuan><A href="#" rel=nofollow><IMG src="/static/image/311top_16.gif"></A></SPAN>
        <SPAN id=gouwuche class=gwc>共<STRONG>1</STRONG> 件商品 <STRONG></STRONG></SPAN>
    </FORM>
</DIV><!--头部结束--><!--内容开始-->
<DIV class=part1>
    <DIV class="flow flow1"></DIV>
    <FORM id=formCart method=post name=formCart action=flow.php>
        <TABLE style="MARGIN: 0px auto; WIDTH: 960px" class=tableLists border=0
               cellSpacing=0>
            <TBODY>
            <TR>
                <TH colSpan=2>商品名称</TH>
                <TH width=112>商品属性</TH>
                <TH width=89>众福价</TH>
                <TH width=89>福分</TH>
                <TH width=101>数量</TH>
                <TH width=101>小计(元)</TH>
                <TH width=102>小计(福分)</TH>
                <TH width=62>操作</TH>
            </TR>
            <TR class=dapei_tr_0 onMouseOver="this.style.backgroundColor='#FFF8F0'"
                onmouseout="this.style.backgroundColor='#ffffff'">
                <TD style="PADDING-BOTTOM: 5px; BORDER-RIGHT-STYLE: none; PADDING-LEFT: 3px; WIDTH: 80px; PADDING-RIGHT: 3px; PADDING-TOP: 5px"
                    class=hasGoods vAlign=center width=84>
                    <DIV class=cart_img><A href="#" target=_blank><IMG class=img align=right src=""></A></DIV>
                </TD>
                <TD style="TEXT-ALIGN: left; LINE-HEIGHT: 20px" vAlign=center width=200 align=left>
                    <A href="#" target=_blank>买三盒赛蒂贝娜生物抗衰微囊 送一瓶都市丽人多维平衡洁面乳120ml再加一瓶都市丽人保湿嫩肤凝乳5</A>
                </TD>
                <TD>无</TD>
                <TD>594.00</TD>
                <TD><SPAN class=red>90.00</SPAN></TD>
                <TD>
                    <A onClick="flowx(0,0,922,'');" href="#">
                        <IMG style="CURSOR: pointer" id=c_jie title=减 border=0 src="/static/image/jie.gif"></A>&nbsp;
                    <INPUT style="BORDER-BOTTOM: #cccccc 1px solid; TEXT-ALIGN: center; BORDER-LEFT: #cccccc 1px solid;
                    LINE-HEIGHT: 20px; WIDTH: 30px; HEIGHT: 20px; BORDER-TOP: #cccccc 1px solid; BORDER-RIGHT: #cccccc 1px solid" value=1
                           name=goods_number_0 id=goods_number_0 onKeyUp="this.value=this.value.replace(/[^0-9]/g,'');"> &nbsp;
                    <A onClick="flowx(1,0,922,'');" href="#">
                        <IMG style="CURSOR: pointer" id=c_jia title=加 border=0 src="/static/image/jia.gif"> </A>
                </TD>
                <TD><SPAN class=red>￥ 594</SPAN></TD>
                <TD><SPAN class=red>90</SPAN></TD>
                <TD style="BORDER-RIGHT-STYLE: none" class=hanldea>
                    <A onclick="goodsdel(922,0,'')" href="#">删除</A>&nbsp;
                </TD>
            </TR>
            <TR>
                <TD style="TEXT-ALIGN: right" class=youhuitishi colSpan=10>
                    <IMG align=absMiddle src="/static/image/youheitishi.png"><SPAN style="PADDING-LEFT: 5px">升级为代销商享受更低价</SPAN>
                </TD>
            </TR>
            <TR>
                <TD style="BORDER-RIGHT-STYLE: none; BACKGROUND: #f7f7f7" height=45 vAlign=center colSpan=9>
                    <SPAN style="LINE-HEIGHT: 50px; MARGIN-TOP: 10px; FLOAT: left">
                        <A onclick="location.href='?action=qingkong'" href="#">
                            <IMG align=absMiddle src="/static/image/clear_cart.gif"></A>
                    </SPAN>
                    <SPAN style="LINE-HEIGHT: 45px; PADDING-LEFT: 10px; FLOAT: right">商品总重量：<B class="red font-14">0.47kg</B> </SPAN>
                    <SPAN style="LINE-HEIGHT: 45px; PADDING-LEFT: 10px; FLOAT: right">购物所得福分：<B class="red font-14">90</B> </SPAN>
                    <SPAN style="LINE-HEIGHT: 45px; FLOAT: right">商品金额总计：<B class="red font-14">￥594</B> </SPAN>
                </TD>
            </TR>
            </TBODY>
        </TABLE>
    </FORM>
    <DIV class=flow-but>
        <SPAN style="DISPLAY: block; FLOAT: right; MARGIN-RIGHT: 15px">
            <A title=点击去结算 href="#">
                <IMG id=jiesuan border=0 align=absMiddle src="/static/image/btn_jiesuan.png">
            </A>
        </SPAN>
        <SPAN style="DISPLAY: block; FLOAT: right; MARGIN-RIGHT: 10px">
            <A title=点击继续购物 href="#">
                <IMG border=0 align=absMiddle src="/static/image/btn_continue.png">
            </A>
        </SPAN>
        <DIV class=clear>&nbsp;</DIV>
    </DIV>
</DIV><!--内容结束-->
<jsp:include page="_foot.jsp"/>
</BODY>
</HTML>