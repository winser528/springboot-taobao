<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0032)fenlei.php -->
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD><TITLE>产品展示-淘我所需！</TITLE>
    <META content="text/html; charset=utf-8" http-equiv=Content-Type>
    <META content=IE=EmulateIE7 http-equiv=X-UA-Compatible>
    <META name=keywords content=淘众福官方网>
    <META name=description content="淘众福  ABC模式  网络购物 网络创业">
    <META name=GENERATOR content="MSHTML 8.00.6001.19328">
    <LINK rel=stylesheet type=text/css href="/static/css/style.css">
    <LINK rel=stylesheet type=text/css href="/static/css/productlist.css">
    <LINK rel=stylesheet type=text/css href="/static/css/maihezhu.css">
    <LINK rel=stylesheet type=text/css href="/static/css/taocss.css">
    <SCRIPT type=text/javascript src="/static/js/jquery-1.8.3.min.js"></SCRIPT>
    <SCRIPT type=text/javascript src="/static/js/jquery-latest.pack.js"></SCRIPT>
    <SCRIPT language=javascript>
        function changebg(t) {
            var ba = document.getElementById('ba' + t);
            alert(ba.className);
            if (ba.className == 'ba5') ba.className = 'ba55'; else ba.className = 'ba5';
        }
    </SCRIPT>
</HEAD>
<BODY>
<jsp:include page="_head.jsp"/>
<DIV style="Z-INDEX: 9999; POSITION: relative; PADDING-TOP: 0px" class=search>
    <DIV class=Navlist>
        <DIV class=lnav><A onmousemove=showMenu() href="javascript:void(0)"><IMG src="/static/image/311top_142.gif"></A>
            <DIV style="DISPLAY: none" id=listMenu class=listMenu>
                <UL class=mainUl>
                    <LI id=menu0 class=mainUlLi><A
                            href="#1">个护化妆</A>
                        <DIV style="Z-INDEX: 9999; POSITION: absolute; DISPLAY: none" id=menu0_sub
                             class=listcontenner>
                            <DIV class=divR><STRONG>推荐品牌</STRONG>
                                <UL>
                                    <LI>
                                        <P><A
                                                href="#124170">菲星数码</A></P>
                                        <P><A
                                                href="#127179">斐讯</A></P></LI>
                                </UL>
                                <STRONG>促销专题</STRONG>

                                <UL class=ulnew></UL>
                            </DIV>
                        </DIV>
                    </LI>
                </UL>
            </DIV>
        </DIV>
        <SCRIPT language=javascript type=text/javascript src=""></SCRIPT>

        <DIV class=clear></DIV>
    </DIV>
    <FORM id=searchForm method=get name=searchForm action=/fenlei.php
    ><INPUT value=query type=hidden name=action> <SELECT class=select_t
                                                         name=so_ctype>
        <OPTION selected value=1>商品名称</OPTION>
        <OPTION
                value=2>产品编号
        </OPTION>
        <OPTION value=3>产品品牌</OPTION>
        <OPTION
                value=4>供应商名称
        </OPTION>
        <OPTION value=5>福分</OPTION>
    </SELECT> <INPUT
            onblur="if(this.value=='')this.value='商品名称';" style="BACKGROUND: #ffffff"
            id=keyword class=text onFocus="if(this.value=='商品名称')this.value='';" value=商品名称
            name=keywords><INPUT class=submit type=submit name="" value="">
        <SPAN>&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>热门搜索</STRONG>： <A
                href="#"
        >金雅莉安</A><a href="#"
        > 超氧离子水生成器</A><A
                href="#"
        > O度</A> </SPAN><SPAN class=jiesuan><A
                href="flow.php" rel=nofollow><IMG
                src="fenlei_files/311top_16.gif"></A></SPAN><SPAN id=gouwuche class=gwc>共
<STRONG>0</STRONG> 件商品 <STRONG></STRONG></SPAN></FORM>
</DIV><!--头部结束--><!--内容开始-->
<DIV style="HEIGHT: 1px; CLEAR: both"></DIV>
<DIV class=part1>
    <DIV class=pindaoleft>
        <DIV class=Lnavlist>
            <DIV class=dt><a href="#">个护化妆</A></DIV>
            <DIV class=ddul>
                <ul>
                    <LI><a href="#">魅力彩妆</A></LI>
                    <LI><a href="#">香水SPA</A></LI>
                    <LI><a href="#">面部护理</A></LI>
                    <LI><a href="#">身体护理</A></LI>
                    <LI><a href="#">口腔护理</A></LI>
                    <LI><a href="#">女性护理</A></LI>
                    <LI><a href="#">男士护理</A></LI>
                </ul>
            </DIV>
            <DIV class=dt><A
                    href="#2">家用电器、汽车用品</A></DIV>
            <DIV class=ddul>
                <ul>
                    <LI><a href="#">厨房电器</A></LI>
                    <LI><a href="#">个人护理</A></LI>
                    <LI><a href="#">生活电器</A></LI>
                    <LI><a href="#">大家电</A></LI>
                    <LI><a href="#">汽车用品</A></LI>
                    <LI><a href="#">健康电器</A></LI>
                </ul>
            </DIV>
            <DIV class=dt><a href="#">家居家装、厨具</A></DIV>
            <DIV class=ddul>
                <ul>
                    <LI><a href="#">厨具</A></LI>
                    <LI><a href="#">家纺</A></LI>
                    <LI><a href="#">生活日用</A></LI>
                    <LI><a href="#">清洁用品</A></LI>
                </ul>
            </DIV>
            <DIV class=dt><a href="#">礼品钟表、首饰</A></DIV>
            <DIV class=ddul>
                <ul>
                    <LI><a href="#">钟表</A></LI>
                    <LI><a href="#">首饰</A></LI>
                </ul>
            </DIV>
            <DIV class=dt><a href="#">食品饮料、保健品</A></DIV>
            <DIV class=ddul>
                <ul>
                    <LI><a href="#">健康礼品</A></LI>
                    <LI><a href="#">营养健康</A></LI>
                    <LI><a href="#">地方特产</A></LI>
                    <LI><a href="#">酒饮冲调</A></LI>
                    <LI><a href="#">休闲食品</A></LI>
                    <LI><a href="#">糖油调味</A></LI>
                </ul>
            </DIV>
            <DIV class=dt><a href="#">皮具箱包</A></DIV>
            <DIV class=ddul>
                <ul>
                    <LI><a href="#">拉杆箱</A></LI>
                    <LI><a href="#">女包</A></LI>
                    <LI><a href="#">男包</A></LI>
                    <LI><a href="#">银包</A></LI>
                </ul>
            </DIV>
            <DIV class=dt><a href="#">运动健康</A></DIV>
            <DIV class=ddul>
                <ul>
                    <LI><a href="#">成人用品</A></LI>
                    <LI><a href="#">户外装备</A></LI>
                    <LI><a href="#">运动器械</A></LI>
                    <LI><a href="#">体育娱乐</A></LI>
                    <LI><a href="#">保健器械</A></LI>
                    <LI><a href="#">急救卫生</A></LI>
                    <LI><a href="#">健康监测</A></LI>
                </ul>
            </DIV>
            <DIV class=dt><a href="#">母婴用品</A></DIV>
            <DIV class=ddul>
                <ul>
                    <LI><a href="#">营养辅食</A></LI>
                    <LI><a href="#">妈妈专区</A></LI>
                    <LI><a href="#">玩具乐器</A></LI>
                </ul>
            </DIV>
            <DIV class=dt><a href="#">服饰鞋帽</A></DIV>
            <DIV class=ddul>
                <ul>
                    <LI><a href="#">女装</A></LI>
                    <LI><a href="#">运动</A></LI>
                    <LI><a href="#">童装</A></LI>
                    <LI><a href="#">男装</A></LI>
                    <LI><a href="#">内衣</A></LI>
                    <LI><a href="#">女鞋</A></LI>
                    <LI><a href="#">亲子装</A></LI>
                    <LI><a href="#">配饰</A></LI>
                </ul>
            </DIV>
            <DIV class=dt><A
                    href="#122">电脑办公手机数码</A></DIV>
            <DIV class=ddul>
                <ul>
                    <LI><a href="#">手机通讯</A></LI>
                    <LI><a href="#">摄影摄像</A></LI>
                    <LI><a href="#">数码配件</A></LI>
                    <LI><a href="#">时尚影音</A></LI>
                    <LI><a href="#">电脑整机</A></LI>
                </ul>
            </DIV>
        </DIV>
        <DIV class=top5>
            <H2>热卖产品</H2>
            <DIV class=xstop5>
                <UL>
                    <LI class=liimg><a href="#"><IMG
                            alt=O度VD+钙晶果咀嚼营养素60粒*700mg src="fenlei_files/0428_OD-006-s.jpg"></A></LI>
                    <LI><A
                            href="1029">O度VD+钙晶果咀嚼营养素60粒*700...</A><BR><SPAN>￥148</SPAN>
                    </LI>
                </UL>
                <UL>
                    <LI class=liimg><a href="#"><IMG
                            alt=京良清凉凝胶凉垫万用垫45X135 src="fenlei_files/20110615JL38-s.jpg"></A></LI>
                    <LI><A
                            href="488">京良清凉凝胶凉垫万用垫45X135</A><BR><SPAN>￥248</SPAN>
                    </LI>
                </UL>
            </DIV>
        </DIV>
    </DIV><!---right--->
    <DIV class=pindaoright>
        <DIV class=fenlei>
            <H2><SPAN>首页 -&gt; 产品展示 -&gt; 全部产品 </SPAN></H2>
            <DIV style="DISPLAY: none">
                <H3><SPAN>品牌：</SPAN><SPAN class=s2><A class=select
                                                        href="#">全部</A> &nbsp;&nbsp;<A
                        href="#100">淘众福</A> &nbsp;&nbsp;<A
                        href="#112">金世玉</A> &nbsp;&nbsp;<A
                        href="#126">年轻100</A> &nbsp;&nbsp;<A
                        href="#167">皙兰菲</A> &nbsp;&nbsp;<A
                        href="#178">古星</A> &nbsp;&nbsp;<A
                        href="#169">白如雪</A> &nbsp;&nbsp;<A
                        href="#170">菲星数码</A> &nbsp;&nbsp;<A
                        href="#172">金雅莉安</A> &nbsp;&nbsp;<A
                        href="#173">世外园</A> &nbsp;&nbsp;<A
                        href="#175">视清肽</A> &nbsp;&nbsp;<A
                        href="#176">中国灸</A> &nbsp;&nbsp;<A
                        href="#177">年轻100</A> &nbsp;&nbsp;<A
                        href="#179">斐讯</A> &nbsp;&nbsp;<A
                        href="#180">casima/卡斯曼</A>
&nbsp;&nbsp;<a href="#">巴马三堡</A> 
&nbsp;&nbsp;<a href="#">娜尔思</A> 
&nbsp;&nbsp;<a href="#">汇海佳</A> 
&nbsp;&nbsp;<a href="#">素绚</A> 
&nbsp;&nbsp;<a href="#">礼拜日</A> 
&nbsp;&nbsp;<a href="#">华誉红</A> 
&nbsp;&nbsp;<a href="#">德康家美</A> 
&nbsp;&nbsp;<a href="#">艾因坦</A> 
&nbsp;&nbsp;<a href="#">木立芦荟</A> 
&nbsp;&nbsp;<a href="#">任我学</A> 
&nbsp;&nbsp;<a href="#">金世玉</A> 
&nbsp;&nbsp;<a href="#">格锐狮迪</A> 
&nbsp;&nbsp;<a href="#">金日来</A> 
&nbsp;&nbsp;<a href="#">润田</A> 
&nbsp;&nbsp;<a href="#">水天使</A> 
&nbsp;&nbsp;<a href="#">肤匀台</A> 
&nbsp;&nbsp;<a href="#">古方灸</A> 
&nbsp;&nbsp;<a href="#">新小天后</A> 
&nbsp;&nbsp;<a href="#">清清宝</A> 
&nbsp;&nbsp;<a href="#">米豆</A> 
&nbsp;&nbsp;<a href="#">策思帝国</A> 
&nbsp;&nbsp;<a href="#">彩宁</A> 
&nbsp;&nbsp;<a href="#">淘众福</A> 
&nbsp;&nbsp;<A
                            href="#205">NEXTIME</A>
</SPAN></H3></DIV>
        </DIV>
        <DIV class=cp_shai>
            <P>筛选条件</P>
            <FORM method=post name=from action=?action=p_query>
                <DIV class=shaix>
                    <UL>
                        <LI>
                            <TABLE border=0 width="100%">
                                <TBODY>
                                <TR>
                                    <TD class=cv8 height=30 width="10%" align=right>所属商家：</TD>
                                    <TD height=30 width="3%" align=right><LABEL for=textfield></LABEL><LABEL
                                            for=textarea><INPUT id=checkbox value=1 type=checkbox name=checkbox>
                                    </LABEL></TD>
                                    <TD height=30 width="8%">淘众福配</TD>
                                    <TD height=30 width="4%"><IMG title=由淘众福平台配货
                                                                  src="fenlei_files/tao_pin_0f.jpg" width=14 height=15></TD>
                                    <TD height=30 width="4%"><INPUT id=checkbox2 value=1 type=checkbox
                                                                    name=checkbox2></TD>
                                    <TD width="7%">商家配</TD>
                                    <TD width="66%"><IMG title=由供应商配货 alt=""
                                                         src="fenlei_files/tao_pin_0f.jpg" width=14
                                                         height=15></TD>
                                </TR>
                                </TBODY>
                            </TABLE>
                        </LI>
                        <LI>
                            <TABLE border=0 width="100%">
                                <TBODY>
                                <TR>
                                    <TD class=cv8 height=30 width="10%" align=right>其他选择：</TD>
                                    <TD height=30 width="3%"><INPUT id=checkbox3 value=1 type=checkbox
                                                                    name=checkbox3></TD>
                                    <TD height=30 width="6%">免运费</TD>
                                    <TD height=30 width="4%"><INPUT id=checkbox4 value=1 type=checkbox
                                                                    name=checkbox4></TD>
                                    <TD height=30 width="7%">热卖推荐</TD>
                                    <TD width="3%"><INPUT id=checkbox5 value=1 type=checkbox
                                                          name=checkbox5></TD>
                                    <TD width="67%">优品推荐</TD>
                                </TR>
                                </TBODY>
                            </TABLE>
                        </LI>
                        <LI>
                            <TABLE border=0 width="100%">
                                <TBODY>
                                <TR>
                                    <TD class=cv8 height=30 width="10%" align=right>关键字：</TD>
                                    <TD height=30 width="21%"><INPUT id=keywords_k class=cv9 name=keywords_k value="${keywords}"></TD>
                                    <TD height=30 width="29%"><INPUT
                                            style="BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-TOP-STYLE: none; BORDER-LEFT-STYLE: none"
                                            class=cv10 value="" type=submit></TD>
                                    <TD height=30 width="20%">&nbsp;</TD>
                                    <TD height=30
                                        width="20%">&nbsp;
                                    </TD>
                                </TR>
                                </TBODY>
                            </TABLE>
                        </LI>
                    </UL>
                </DIV>
            </FORM>
        </DIV>
        <DIV class=zui_chanp>
            <DIV id=pt_zuix_1>
                <UL>
                    <LI id=six1 class=hover><A class=hovera
                                               href="1">全部产品</A></LI>
                    <LI id=six2><A
                            href="2">热销产品</A></LI>
                    <LI id=six3><A
                            href="3">最新产品</A></LI>
                    <LI id=six4><A
                            href="4">免邮产品</A></LI>
                    <LI id=six5><A
                            href="5">凑单产品</A>
                    </LI>
                </UL>
                <DIV class=ba5><A
                        href="xsdesc">福分</A></DIV>
                <DIV class=ba5><A
                        href="pdesc">价格</A></DIV>
            </DIV>
            <DIV id=con_six_1>
                <DIV class=ind_zuixc_cp>
                    <DIV class=zui_dan>
                        <P>单页显示</P>
                        <DIV class=c01><A style="COLOR: #ffffff"
                                          href="=">20</A></DIV>
                        <DIV class=c01><A style="COLOR: #ffffff"
                                          href="#">40</A></DIV>
                        <DIV class=c01><A style="COLOR: #ffffff"
                                          href="#">60</A></DIV>
                        <H6>共${count}个商品</H6></DIV>
                    <DIV class=chan_lesi>
                        <!--这里将显示商品分类和分页 -->
                        <c:forEach items="${listwares}" var="w">
                            <DL>
                                <DT>
                                    <A href="#">
                                        <IMG alt="${w.wname}" src="fenlei_files/${w.image}" width=163 height=142>
                                    </A>
                                </DT>
                                <DD style="HEIGHT: auto">
                                    <A title="${w.wname}" href="34">${w.wname}</A>
                                </DD>

                                <DD style="HEIGHT: auto">
                                    <SPAN class=ba3>原价￥${w.yprice}元</SPAN>
                                </DD>

                                <DD style="HEIGHT: auto">
                                    <SPAN class=ba2>商城价:</SPAN>
                                </DD>

                                <SPAN class="ba1">￥${w.price}</SPAN>
                                <DD>
                                    <DIV class=vcr2>
                                        <A onclick="return confirm('你加入购物车的商品有不同型号可选，你是否立即跳转到商品详情选择？');"
                                           href="34">购买</A></DIV>
                                    <DIV class=vcr3>
                                        <A style="CURSOR: hand" title="${w.wname}"
                                           onclick="javascript:window.external.AddFavorite('34','健滋源车载空气净化器  净化空气  分解有害气体  抑制细菌');return false;">
                                            收藏</A>
                                    </DIV>
                                </DD>
                            </DL>

                        </c:forEach>

                    </DIV>
                </DIV>
            </DIV>
        </DIV>
        <DIV class=pdpro>
            <P class=pp2>
		<SPAN>
			<SPAN>
				<A href="WaresFenleiShow?pageIndex=${totalPages-1}&tid=${tid}">
					<IMG src="fenlei_files/list_13.gif">
				</A>
			</SPAN>
			<SPAN class=abord> 
			<c:forEach begin="1" end="${totalPages}" varStatus="t">
                <a href="WaresFenleiShow?pageIndex=${t.count}&tid=${tid}">${t.count}</a>
            </c:forEach>
			</SPAN>
			<SPAN>
				<A href="WaresFenleiShow?pageIndex=${totalPages+1}&tid=${tid}">
					<IMG src="fenlei_files/list_11.gif">
				</A>
			</SPAN>
		</SPAN>
            </P>
        </DIV>
    </DIV>
</DIV><!--内容结束-->
<jsp:include page="_foot.jsp"/>
</BODY>
</HTML>
