<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0022)# -->
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD><TITLE>淘众福-淘我所需！ </TITLE>
    <META content="text/html; charset=utf-8" http-equiv=Content-Type>
    <META content=IE=7 http-equiv=X-UA-Compatible>
    <META name=keywords content=淘众福官方网>
    <META name=description content="淘众福  ABC模式  网络购物 网络创业">
    <LINK rel=stylesheet type=text/css href="/static/css/style.css">
    <LINK rel=stylesheet type=text/css href="/static/css/index.css">
    <LINK rel=stylesheet type=text/css href="/static/css/maihezhu.css">
    <LINK rel=stylesheet type=text/css href="/static/css/taocss.css">
    <SCRIPT type=text/javascript src="/static/js/jquery-1.8.3.min.js"></SCRIPT>
    <SCRIPT type=text/javascript src="/static/js/indexNav.js"></SCRIPT>
    <SCRIPT type=text/javascript src="/static/js/index_ban.js"></SCRIPT>
    <SCRIPT type=text/javascript src="/static/js/pp-first-huandeng.js"></SCRIPT>
    <SCRIPT>
        <!--
        /*可多次引用选项卡设定*/
        function setTab(name, cursel, n) {
            for (i = 0; i <= n; i++) {
                if (i > 0) {
                    var menu = document.getElementById(name + i);
                }
                var con = document.getElementById("con_" + name + "_" + i);
                if (i > 0) {
                    menu.className = i == cursel ? "hover" : "";
                }
                if (con) {
                    con.style.display = i == cursel ? "block" : "none";
                }
            }
            document.getElementById("con_" + name + "_" + 0).style.display = "none";
        }

        //-->
        function hideTab(name, n) {
            for (i = 0; i <= n; i++) {
                var con = document.getElementById("con_" + name + "_" + i);
                if (con) {
                    con.style.display = i == 0 ? "block" : "none";
                }
            }
        }
    </SCRIPT>
    <META name=GENERATOR content="MSHTML 8.00.6001.19328">
</HEAD>
<BODY>
<SCRIPT>
    //时间计算
    var i = 0;
    function showtime() {
        var urodz = new Date("01/10/2013");
        var now = new Date();
        var ile = urodz.getTime() - now.getTime();
        var dni = Math.floor(ile / (1000 * 60 * 60 * 24));
        var minute1 = now.getMinutes();//获取分钟；
        var seconds1 = now.getSeconds();//获取秒
        var hour1 = now.getHours();//获取小时
        var hour = 24 - hour1;
        var minute = 60 - minute1;
        if (minute1 < 10) {
            minute1 = "0" + minute1;
        }
        var seconds = 60 - seconds1;
        if (seconds < 10) {
            seconds = "0" + seconds;
        }
        var b = dni + "天" + hour + "时" + minute + "分" + seconds + "秒";
        document.getElementById("foot").innerHTML = b;
        setTimeout('showtime()', 1000);
    }

    function mainlist() {
        arr = ["商品名称", "产品编号", "产品品牌", "供应商名称", "福分"];
        document.getElementById("city").options.length = 0;
        for (var index in arr)//获取下拉框的值比较上面arr[值]里面的值然后继续赋值第二个框
        {
            var opt = document.createElement("option");
            opt.value = arr[index];
            opt.text = arr[index];
            document.getElementById("city").options.add(opt);
        }
    }

    window.onload = mainlist;
    //window.onload = showtime;
</SCRIPT>
<jsp:include page="_head.jsp"/>
<DIV style="Z-INDEX: 9999; POSITION: relative" class=search>
    <DIV class=Navlist>
        <DIV class=lnav><IMG src="/static/image/311top_14.gif">
            <DIV class=listMenu>
                <UL class=mainUl>
                    <c:forEach items="${categoryOne}" var="one" varStatus="o">
                        <LI id="menu${o.count}" class="mainUlLi">
                            <A href="WaresFenleiShow?tid=110">${one.cname}</A>
                            <DIV style="Z-INDEX: 9999; POSITION: absolute; display:none; " id="menu${o.count}_sub" class="listcontenner">
                                <DIV class="divL">
                                    <STRONG>选择分类</STRONG>
                                    <ul>
                                        <c:forEach items="${categoryTwo}" var="two" varStatus="t">
                                            <c:if test="${one.id == two.cid}">
                                                <li>
                                                    <a href="#" class="a2">${two.cname}</a>
                                                    <p>
                                                        <c:forEach items="${categoryThree}" var="three">
                                                            <c:if test="${two.id == three.cid}">
                                                                <a href="#">${three.cname}</a>
                                                            </c:if>
                                                        </c:forEach>
                                                    </p>
                                                </li>
                                            </c:if>
                                        </c:forEach>
                                    </ul>
                                </DIV>
                            </DIV>
                        </LI>
                    </c:forEach>

                    <LI id=menu10 class=mainUlLi_total>
                        <A class=a2 href="#">全部产品分类</A>
                    </LI>
                </UL>
            </DIV>
        </DIV>
        <DIV class=clear></DIV>
    </DIV>
    <FORM id=searchForm method="post" name=searchForm action="WaresHunt" target="_blank">
        <INPUT value=query type=hidden name=action>
        <SELECT class=select_t name=so_ctype id="city">

        </SELECT>
        <INPUT onblur="if(this.value=='')this.value='商品名称';" id=keyword class=text
               onfocus="if(this.value=='商品名称')this.value='';" value=商品名称 name="keywords">
        <INPUT class="submit" type="submit" name="hunt" value="">
        <SPAN>&nbsp;&nbsp;&nbsp;&nbsp;
            <STRONG>热门搜索</STRONG>：
            <A href="#">金雅莉安</A>
            <A href="#"> 超氧离子水生成器</A>
            <A href="#"> O度</A>
	    </SPAN>
        <SPAN class=jiesuan><A href="#" rel=nofollow><IMG src="/static/image/311top_16.gif"></A></SPAN>
        <SPAN id=gouwuche class=gwc>共 <STRONG>0</STRONG> 件商品 <STRONG></STRONG></SPAN>
    </FORM>
</DIV>
<!--头部结束-->
<!--内容开始-->
<DIV class=gaiban>
    <!--left-->
    <DIV class=left>
        <DIV class=dianpu></DIV>
        <DIV style="HEIGHT: 32px"></DIV>
    </DIV>
    <!--right-->
    <DIV class=part1R>
        <DIV id=imgs class=mid>
            <!--<div class="ma_banner"><img src="/images_web/tmain_banner_45.gif" width="560" height="381"/></div> -->
            <UL>
                <LI class=first>
                    <DIV class=banner>
                        <A title="我不穿内衣 我穿的是健康 金雅莉安12月健康巡演" href="#">
                            <IMG alt="我不穿内衣 我穿的是健康 金雅莉安12月健康巡演" src="/static/image/ad_b1_1354587855.gif" width=560
                                 height=200>
                        </A>
                    </DIV>
                    <DIV class=hot-tui>
                        <DIV>
                            <A title=肤匀台玫瑰纯露100ml href="#pview?id=1675">
                                <IMG alt=肤匀台玫瑰纯露100ml src="/static/image/s_0_13531396610.jpg" width=100 height=100></A>
                            <A class=text_small href="#pview?id=1675">肤匀台玫瑰纯露100ml</A>
                        </DIV>
                        <DIV>
                            <A title=肤匀台抗敏修复精华乳100g href="#pview?id=1674">
                                <IMG alt=肤匀台抗敏修复精华乳100g src="/static/image/s_0_13528837640.jpg" width=100 height=100> </A>
                            <A class=text_small href="#pview?id=1674">肤匀台抗敏修复精华乳100g</A>
                        </DIV>
                        <DIV>
                            <A title=肤匀台抗敏修复精华50g href="#pview?id=1673">
                                <IMG alt=肤匀台抗敏修复精华50g src="/static/image/s_0_13528836690.jpg" width=100 height=100></A>
                            <A class=text_small href="#pview?id=1673">肤匀台抗敏修复精华50g</A>
                        </DIV>
                    </DIV>
                </LI>
                <LI>
                    <DIV class=banner>
                        <A title="新款女士冬装全新上架 这个冬天有了淘众福不再冷" href="#">
                            <IMG alt="新款女士冬装全新上架 这个冬天有了淘众福不再冷" src="/static/image/ad_b1_1353552440.gif" width=560
                                 height=200>
                        </A>
                    </DIV>
                    <DIV class=hot-tui>
                        <DIV>
                            <A title="彩宁多功能芽苗机水晶咖啡色 种植芽菜 加湿空气 豆芽机" href="#">
                                <IMG alt="彩宁多功能芽苗机水晶咖啡色 种植芽菜..." src="/static/image/s_0_13547831250.jpg" width=100
                                     height=100> </A>
                            <A class=text_small href="#">彩宁多功能芽苗机水晶咖啡色种植芽菜 加湿空气 豆芽机</A>
                        </DIV>
                        <DIV>
                            <A title=清清宝光触媒空气净化剂10g href="#">
                                <IMG alt=清清宝光触媒空气净化剂10g src="/static/image/s_0_13537436080.jpg" width=100 height=100></A>
                            <A class=text_small href="#">清清宝光触媒空气净化剂10g</A>
                        </DIV>
                        <DIV>
                            <A title="清清宝空气净化器QB-JH-06Q 紫色 绿色随机发 净化空气 除烟 除臭 加湿 释放再生因子、除味"
                               href="#pview?id=1691">
                                <IMG alt="清清宝空气净化器QB-JH-06Q ..." src="/static/image/s_0_13539116300.jpg" width=100 height=100></A>
                            <A class=text_small href="#pview?id=1691">清清宝空气净化器QB-JH-06Q 紫色 绿色随机发 净化空气 除烟 除臭 加湿
                                释放再生因子、除味</A>
                        </DIV>
                    </DIV>
                </LI>
                <LI>
                    <DIV class=banner>
                        <A title="古方灸麝香抑菌剂20ml*2瓶 外用 适用人群:风湿性关节炎 骨质增生 腰椎间盘突出 颈椎病 肩周" href="#">
                            <IMG alt="古方灸麝香抑菌剂20ml*2瓶 外用 适用人群:风湿性关节炎 骨质增生 腰椎间盘突出 颈椎病 肩周"
                                 src="/static/image/ad_b1_1353552553.jpg" width=560 height=200>
                        </A>
                    </DIV>
                    <DIV class=hot-tui>
                        <DIV>
                            <A title=肤匀台玫瑰纯露100ml href="#pview?id=1675">
                                <IMG alt=肤匀台玫瑰纯露100ml src="/static/image/s_0_13531396610.jpg" width=100
                                     height=100> </A><A class=text_small href="#pview?id=1675">肤匀台玫瑰纯露100ml</A>
                        </DIV>
                        <DIV>
                            <A title="清清宝空气净化器QB-JH-06Q 紫色 绿色随机发 净化空气 除烟 除臭 加湿 释放再生因子、除味"
                               href="#pview?id=1691"><IMG alt="清清宝空气净化器QB-JH-06Q ..."
                                                          src="/static/image/s_0_13539116300.jpg" width=100 height=100> </A><A
                                class=text_small href="#pview?id=1691">清清宝空气净化器QB-JH-06Q 紫色
                            绿色随机发 净化空气 除烟 除臭 加湿 释放再生因子、除味</A>
                        </DIV>
                        <DIV>
                            <A title="彩宁多功能芽苗机水晶咖啡色 种植芽菜 加湿空气 豆芽机" href="#"><IMG
                                    alt="彩宁多功能芽苗机水晶咖啡色 种植芽菜..." src="/static/image/s_0_13547831250.jpg"
                                    width=100 height=100> </A><A class=text_small href="#">彩宁多功能芽苗机水晶咖啡色
                            种植芽菜 加湿空气 豆芽机</A>
                        </DIV>
                    </DIV>
                </LI>
            </UL>
            <DIV id=img_list>
                <DIV class=list_a>
                    <A class=active href="#"></A>
                    <A href="#"></A>
                    <A href="#"></A>
                </DIV>
            </DIV>
        </DIV>
        <DIV class=right>
            <DIV class=gonggao>
                <DIV class=tit>
					<SPAN><A href="#gglb">更多</A>
					</SPAN>
                    <IMG src="/static/image/index1229_03.gif">
                    <IMG src="/static/image/iconnew.gif">
                </DIV>
                <UL>
                    <LI>
                        <A title=热烈祝贺淘众福荣获"金犁奖"双项大奖 href="#gonggao?id=328">热烈祝贺淘众福荣获"金犁奖"双项...<IMG
                                src="/static/image/index1229_11.gif" width=16 height=18>
                        </A>
                    </LI>
                    <LI>
                        <A title="淘众福2013-2015战略发布 地面战略全面打响" href="#gonggao?id=313">淘众福2013-2015战略发布...<IMG
                                src="/static/image/index1229_11.gif" width=16 height=18>
                        </A>
                    </LI>
                    <LI>
                        <A title=热烈祝贺淘众福入围2012年自主创业年会"金梨奖"双奖项
                           href="#gonggao?id=312">热烈祝贺淘众福入围2012年自主...<IMG
                                src="/static/image/index1229_11.gif" width=16 height=18>
                        </A>
                    </LI>
                </UL>
            </DIV>
            <DIV class=zfu>
                <DIV id=pt_zix_1>
                    <UL>
                        <LI id=the1 class=hover onClick="setTab('the',1,2)">
                            祝福吧
                        </LI>
                        <LI id=the2 onClick="setTab('the',2,2)">
                            微博互动
                        </LI>
                    </UL>
                </DIV>
                <DIV id=con_the_1>
                    <DIV class=ind_zix_cp>
                        <H1>
                            <A title=一起祝福吧 href="#" target=_blank><IMG
                                    src="/static/image/ad_b13_1341992907.jpg" width=200 height=50>
                            </A>
                        </H1>
                    </DIV>
                </DIV>
                <DIV style="DISPLAY: none" id=con_the_2>
                    <DIV class=ind_zix_cp>
                        <H1>
                            <A href="##"><IMG src="/static/image/t_pic_56.jpg"> <IMG
                                    src="/static/image/t_pic_64.jpg"> </A>
                        </H1>
                        <H1>
                            <A href="##"><IMG src="/static/image/t_pic_58.jpg"> <IMG
                                    src="/static/image/t_pic_65.jpg"> </A>
                        </H1>
                        <H1>
                            <A href="##"><IMG src="/static/image/t_pic_60.jpg"> <IMG
                                    src="/static/image/t_pic_65.jpg"> </A>
                        </H1>
                    </DIV>
                </DIV>
            </DIV>
            <DIV class=chongzhi>
                <DIV class=cz_title>
                    <ul>
                        <LI id=chongzhi0 class=select onmouseover="displaytaocan('chongzhi','0','3')">
                            手机充值
                        </LI>
                        <LI id=chongzhi1 onMouseOver="displaytaocan('chongzhi','1','3')">
                            机票
                        </LI>
                        <LI id=chongzhi2 onMouseOver="displaytaocan('chongzhi','2','3')">
                            彩票
                        </LI>
                    </ul>
                </DIV>
                <DIV id=chongzhi_0 class=cz_text>
                    <P>
                        手机号：
                        <INPUT
                                style="BORDER-BOTTOM: #cccccc 1px solid; BORDER-LEFT: #cccccc 1px solid; WIDTH: 140px; HEIGHT: 16px; BORDER-TOP: #cccccc 1px solid; BORDER-RIGHT: #cccccc 1px solid">
                        <BR>
                        <FONT style="PADDING-LEFT: 50px">支持移动、联通、电信</FONT>
                        <BR>
                        &nbsp;&nbsp;&nbsp;&nbsp;面值：
                        <SELECT name="">
                            <OPTION selected>
                                100
                            </OPTION>
                            <OPTION>
                                200
                            </OPTION>
                            <OPTION>
                                300
                            </OPTION>
                        </SELECT>
                    </P>
                    <P style="PADDING-LEFT: 45px; PADDING-TOP: 10px">
                        <IMG src="/static/image/cz_an.jpg">
                    </P>
                </DIV>

            </DIV>
            <DIV class=tao_cux>
                <A href="##"><IMG src="/static/image/t_pic_72.jpg">
                </A>
            </DIV>
        </DIV>
        <DIV class=clear></DIV>
    </DIV>
</DIV>
<!--内容结束-->
<DIV class=taozf_main>
    <DIV class=tzf_left>
        <DIV class=maijiu>
            <DIV id=pt_crad_1>
                <UL>

                    <LI id=two1 class=hover onMouseOver="setTab('two',1,5)">
                        买就送
                    </LI>
                    <LI id=two2 onMouseOver="setTab('two',2,5)">
                        众福惠购
                    </LI>
                    <LI id=two3 onMouseOver="setTab('two',3,5)">
                        热卖商品
                    </LI>
                    <LI id=two4 onMouseOver="setTab('two',4,5)">
                        新品上市
                    </LI>
                    <LI id=two5 onMouseOver="setTab('two',5,5)">
                        猜您喜欢
                    </LI>
                </UL>
            </DIV>
            <DIV id=con_two_1>
                <DIV class=ind_hot>
                    <!--<dl>
                <a href="#">
                <h4>剩余<span>41</span>小时<span>9</span>分<span>55</span>秒</h4>
                  <dt><img src="/images_web/pic_77.gif"/></dt>
                  <dd>索尼W670时尚数码相机</dd>
                  <dd>抢购价：<span>￥1299.00</span></dd>
                </a>
              </dl>-->
                    <c:forEach items="${utilyi}" var="yi">
                        <dl>
                            <dt>
                                <A href="#" target=_blank>
                                    <IMG alt="" src="/image/${yi.image}" width=130 height=105>
                                </A>
                            </dt>
                            <DD style="HEIGHT: 40px">
                                <A href="#" target=_blank>${yi.wname}
                                    <SPAN class=mai>(健康穿出来 这个冬天也要...)</SPAN>
                                </A>
                            </DD>
                            <DD>
                                <STRONG>￥</STRONG>
                                <SPAN class=cv1>${yi.price}</SPAN>
                                <SPAN class=cv>￥${yi.yprice}</SPAN>
                            </DD>
                            <DD>
                                <DIV>
                                    福分&nbsp;&nbsp;${yi.fufen}
                                </DIV>
                            </DD>
                        </dl>
                    </c:forEach>
                </DIV>
            </DIV>

            <DIV style="DISPLAY: none" id=con_two_2>
                <DIV class=ind_hot>
                    <c:forEach items="${utilwu}" var="wu">
                        <DL>
                            <DT>
                                <A href="#" target=_blank> <IMG alt=活谐艾蒸灸熨仪
                                                                src="/image/${wu.image}" width=130 height=105>
                                </A>
                            </DT>
                            <DD style="HEIGHT: 40px">
                                <A href="#" target=_blank>${wu.wname}</A>
                            </DD>
                            <DD>
                                <STRONG>￥</STRONG>
                                <SPAN class=cv1>${wu.price}</SPAN>
                                <SPAN class=cv>￥${wu.yprice}</SPAN>
                            </DD>
                            <DD>
                                <DIV>
                                    福分&nbsp;&nbsp;${wu.fufen}
                                </DIV>
                            </DD>
                        </DL>
                    </c:forEach>
                </DIV>
            </DIV>

            <DIV style="DISPLAY: none" id=con_two_3>
                <DIV class=ind_hot>
                    <c:forEach items="${utilsi}" var="si">
                        <DL>
                            <DT>
                                <A href="#" target=_blank><IMG
                                        alt="${si.wname}" src="/image/${si.image}"
                                        width=130 height=105>
                                </A>
                            </DT>
                            <DD style="HEIGHT: 40px">
                                <A href="#" target=_blank>${si.wname}</A>
                            </DD>
                            <DD>
                                <STRONG>￥</STRONG><SPAN class=cv1>${si.price}</SPAN>
                                <SPAN class=cv>￥${si.yprice}</SPAN>
                            </DD>
                            <DD>
                                <DIV>
                                    福分&nbsp;&nbsp;${si.fufen}
                                </DIV>
                            </DD>
                        </DL>
                    </c:forEach>
                </DIV>
            </DIV>

            <DIV style="DISPLAY: none" id=con_two_4>
                <DIV class=ind_hot>
                    <c:forEach items="${utilsan}" var="san">
                        <DL>
                            <DT>
                                <A href="#" target=_blank>
                                    <IMG alt="${san.wname}" src="/image/${san.image}" width=130 height=105>
                                </A>
                            </DT>
                            <DD style="HEIGHT: 40px">
                                <A href="#" target=_blank>${san.wname}</A>
                            </DD>
                            <DD>
                                <STRONG>￥</STRONG><SPAN class=cv1>${san.price}</SPAN>
                                <SPAN class=cv>￥${san.yprice}</SPAN>
                            </DD>
                            <DD>
                                <DIV>
                                    福分&nbsp;&nbsp;${san.fufen}
                                </DIV>
                            </DD>
                        </DL>
                    </c:forEach>
                </DIV>
            </DIV>
            <DIV style="DISPLAY: none" id=con_two_5>
                <DIV class=ind_hot>
                    <c:forEach items="${utiler}" var="er">
                        <DL>
                            <DT>
                                <A href="#" target=_blank><IMG alt="${er.wname}" src="/image/${er.image}" width=130 height=105> </A>
                            </DT>
                            <DD style="HEIGHT: 40px">
                                <A href="#pview?id=192" target=_blank>金雅莉安远红外线冬季加厚保健保暖九分裤打底裤黑色</A>
                            </DD>
                            <DD>
                                <STRONG>￥</STRONG><SPAN class=cv1>${er.price}</SPAN>
                                <SPAN class=cv>￥${er.yprice}</SPAN>
                            </DD>
                            <DD>
                                <DIV>
                                    福分&nbsp;&nbsp;${er.fufen}
                                </DIV>
                            </DD>
                        </DL>
                    </c:forEach>
                </DIV>
            </DIV>
        </DIV>
    </DIV>

    <DIV class=tzf_right>
        <DIV class=tzf_ggao>
            <A title=百膜佳买赠活动进行中 href="#" target=_blank><IMG src="/static/image/ad_b7_1343896947.jpg" width=210 height=67> </A>
        </DIV>
        <DIV class=tao_miao>
            <H3> 精彩秒杀 </H3>
            <P><IMG align=absMiddle src="/static/image/tao_pin_18.jpg"> 剩余: <span id="foot"></span></P>
            <DL>
                <DT>
                    <IMG src="/static/image/tao_pic_22.jpg" width=97 height=97>
                </DT>
                <DD>
                    欧米皙优肤男士紧肤水润SOD蜜
                </DD>
            </DL>
            <DIV class=miaoon>
                <DIV class=oon>
                    <A href="#">立即秒杀</A>
                </DIV>
                <SPAN>￥1</SPAN>
            </DIV>
        </DIV>
    </DIV>
    <DIV class=tao_jptj>
        <DIV class=jptj_kjia>
            <DIV class=kjia_tetil>
                <DIV class=tetilbg> 精品推荐</DIV>
                <UL>
                    <LI id=dfl1 class=hover onMouseOver="setTab('dfl',1,1)"><A href="#1">个护化妆</A></LI>
                </UL>
            </DIV>
            <DIV class=kjia_table>
                <UL class=artist_l>
                    <DIV id=con_dfl_1>
                        <LI class=a2>
                            <IMG src="/static/image/ad_b2_1345477920.jpg" width=194 height=165>
                            <A title=香奈儿胶原肽液态饮健康饮 href="#" target=_blank> <STRONG>香奈儿胶原肽液态饮健康饮</STRONG>
                                <BR> <SPAN></SPAN> <BR>查看详情
                            </A>
                        </LI>
                        <LI class=a3>
                            <IMG src="/static/image/ad_b4_1345478061.jpg" width=388 height=165>
                            <A title=素迷采紫荷减肥胶囊 href="#pview?id=422" target=_blank> <STRONG>素迷采紫荷减肥胶囊</STRONG>
                                <BR>
                                <SPAN></SPAN>
                                <BR>查看详情
                            </A>
                        </LI>
                        <LI class=a4>
                            <IMG src="/static/image/ad_b5_1345478198.jpg" width=195 height=330>
                            <A title="时尚的焦点 娜尔思潮包新品上架" href="#" target=_blank> <STRONG>时尚的焦点
                                娜尔思潮包新品上架</STRONG>
                                <BR>
                                <SPAN></SPAN>
                                <BR>查看详情
                            </A>
                        </LI>
                        <LI class=a5>
                            <IMG src="/static/image/ad_b2_1345477865.jpg" width=194 height=165>
                            <A title="O度VD+钙晶果 健康营养嚼出来" href="#" target=_blank> <STRONG>O度VD+钙晶果
                                健康营养嚼出来</STRONG>
                                <BR>
                                <SPAN></SPAN>
                                <BR>查看详情
                            </A>
                        </LI>
                        <LI class=a6>
                            <IMG src="/static/image/ad_b2_1345477959.jpg" width=194 height=165>
                            <A title=花崎佰莉香水系列 href="#66" target=_blank> <STRONG>花崎佰莉香水系列</STRONG>
                                <BR>
                                <SPAN></SPAN>
                                <BR>查看详情
                            </A>
                        </LI>
                        <LI class=a7>
                            <IMG src="/static/image/ad_b2_1345477975.jpg" width=194 height=165>
                            <A title="橄榄健康调和油 调出新时代膳食平衡" href="#pview?id=978" target=_blank>
                                <STRONG>橄榄健康调和油 调出新时代膳食平衡</STRONG>
                                <BR>
                                <SPAN></SPAN>
                                <BR>查看详情
                            </A>
                        </LI>
                        <LI class=a8>
                            <IMG src="/static/image/ad_b3_1345478009.jpg" width=172 height=165>
                            <A title="你的脸是洗白了 还是白洗了？" href="#" target=_blank>
                                <STRONG>你的脸是洗白了还是白洗了？</STRONG>
                                <BR>
                                <SPAN></SPAN>
                                <BR>查看详情
                            </A>
                        </LI>
                        <LI class="a9">
                            <IMG src="/static/image/ad_b3_1345478027.jpg" width=172 height=165>
                            <A title=恬贝儿温情家庭套装 href="#" target=_blank> <STRONG>恬贝儿温情家庭套装</STRONG>
                                <BR>
                                <SPAN></SPAN>
                                <BR>查看详情
                            </A>
                        </LI>
                    </DIV>
                </UL>
            </DIV>
        </DIV>
    </DIV>
</DIV>
<DIV class=clear></DIV>
<DIV class=tao_mrong>
    <DIV style="BORDER-BOTTOM-COLOR: #db5975" class=mrong_tetil>
        <H1 style="COLOR: #db5975"> 1F <FONT style="FONT-SIZE: 12px">►</FONT> <SPAN>服饰鞋帽</SPAN></H1>
        <P>
            <A href="#49">更多 <IMG align=absMiddle src="/static/image/tao_pic_14.jpg"> </A>
        </P>
        <UL>
            <LI id=xfl_491 class=hover onMouseOver="setTab('xfl_49',1,8)">
                <!--onmouseout="hideTab('xfl_49',8)"-->
                <A href="#50">女装</A>
            </LI>
            <LI id=xfl_492 onMouseOver="setTab('xfl_49',2,8)">
                <!--onmouseout="hideTab('xfl_49',8)"-->
                <A href="#54">运动</A> |
            </LI>
            <LI id=xfl_493 onMouseOver="setTab('xfl_49',3,8)">
                <!--onmouseout="hideTab('xfl_49',8)"-->
                <A href="#55">童装</A> |
            </LI>
            <LI id=xfl_494 onMouseOver="setTab('xfl_49',4,8)">
                <!--onmouseout="hideTab('xfl_49',8)"-->
                <A href="#56">男装</A> |
            </LI>
            <LI id=xfl_495 onMouseOver="setTab('xfl_49',5,8)">
                <!--onmouseout="hideTab('xfl_49',8)"-->
                <A href="#57">内衣</A> |
            </LI>
            <LI id=xfl_496 onMouseOver="setTab('xfl_49',6,8)">
                <!--onmouseout="hideTab('xfl_49',8)"-->
                <A href="#60">女鞋</A> |
            </LI>
            <LI id=xfl_497 onMouseOver="setTab('xfl_49',7,8)">
                <!--onmouseout="hideTab('xfl_49',8)"-->
                <A href="#85">亲子装</A> |
            </LI>
            <LI id=xfl_498 onMouseOver="setTab('xfl_49',8,8)">
                <!--onmouseout="hideTab('xfl_49',8)"-->
                <A href="#254">配饰</A> |
            </LI>
        </UL>
    </DIV>
    <DIV class=mr_content>
        <DIV class=content1>
            <H2> 畅销排行榜 </H2>
            <DIV class=cxiao>
                <DIV id=pt_cha_1>
                    <UL>
                        <LI id=wer_491 class=hover onMouseOver="setTab('wer_49',1,3)"> 女装</LI>
                        <LI id=wer_492 onMouseOver="setTab('wer_49',2,3)"> 运动</LI>
                        <LI id=wer_493 onMouseOver="setTab('wer_49',3,3)"> 童装</LI>
                    </UL>
                </DIV>
                <DIV id=con_wer_49_1>
                    <DIV class=ind_paih_cp>

                        <c:forEach items="${utilsan}" var="san" varStatus="i">
                            <DIV class=paih1>
                                <DIV class=paih1_sz>
                                    <DIV class=szp>
                                            ${i.count}
                                    </DIV>
                                    <A href="#" target=_blank>${san.wname}</A>
                                </DIV>
                            </DIV>
                        </c:forEach>
                    </DIV>
                </DIV>
                <DIV style="DISPLAY: none" id=con_wer_49_2>
                    <DIV class=ind_paih_cp>
                        <c:forEach items="${utilsan}" var="san" varStatus="i">
                            <DIV class=paih1>
                                <DIV class=paih1_sz>
                                    <DIV class=szp> ${i.count} </DIV>
                                    <A href="#" target=_blank>${san.wname}</A>
                                </DIV>
                            </DIV>
                        </c:forEach>
                    </DIV>
                </DIV>
                <DIV style="DISPLAY: none" id=con_wer_49_3>
                    <DIV class=ind_paih_cp>
                        <DIV class=paih1>
                            <DIV class=paih1_sz>
                                <DIV class=szp> 1</DIV>
                                <A href="#pview?id=717" target=_blank>小甜果男女童羽绒棉保暖...</A>
                                <DL>
                                    <DT>
                                        <A href="#pview?id=717" target=_blank>
                                            <IMG border=0 src="/static/image/1214_XTG-680738-s.jpg" width=68 height=70>
                                        </A>
                                    </DT>
                                    <DD>
                                        <A href="#pview?id=717" target=_blank>小甜果男女童羽绒棉保暖......</A>
                                    </DD>
                                    <DD>
                                        商城价： <SPAN>￥88</SPAN>
                                    </DD>
                                </DL>
                            </DIV>
                        </DIV>
                    </DIV>
                </DIV>
            </DIV>
        </DIV>

        <DIV class=content2>
            <!--大分类下的产品-->
            <DIV id=con_xfl_49_0>
                <!--<DL>
  <DT><A href="#pview?id=1701" target=_blank><IMG 
  alt=米豆男女用素色格子纹丝绒围脖披肩两用超长围巾灰色 
  src="/image/s_0_13546997420.jpg" width=130 
  height=149></A> </DT>
  <DD style="HEIGHT: 44px"><A href="#pview?id=1701" 
  target=_blank>米豆男女用素色格子纹丝绒围脖披肩两用超长围巾灰色</A> </DD>
  <DD>￥<SPAN class=cv1>68.00</SPAN> <SPAN class=cv>82.00</SPAN> </DD>
  <DD>
  <DIV class=cv2>福分</DIV>
  <DIV class=cv3>&nbsp;&nbsp;3.00</DIV></DD></DL>
-->
                <DL>
                    <DT>
                        <A href="#pview?id=1700" target=_blank><IMG
                                alt=米豆新复古图腾民族风麻质披肩围巾米色 src="/static/image/s_0_13542663080.jpg" width=130
                                height=149>
                        </A>
                    </DT>
                    <DD style="HEIGHT: 44px">
                        <A href="#pview?id=1700" target=_blank>米豆新复古图腾民族风麻质披肩围巾米色</A>
                    </DD>
                    <DD>
                        ￥
                        <SPAN class=cv1>58.00</SPAN>
                        <SPAN class=cv>82.00</SPAN>
                    </DD>
                    <DD>
                        <DIV class=cv2>
                            福分
                        </DIV>
                        <DIV class=cv3>
                            &nbsp;&nbsp;3.00
                        </DIV>
                    </DD>
                </DL>
                <DL>
                    <DT>
                        <A href="#pview?id=1695" target=_blank><IMG
                                alt=米豆风车春秋摩登马车雪纺长丝巾披肩围巾 src="/static/image/s_0_13541756800.jpg"
                                width=130 height=149>
                        </A>
                    </DT>
                    <DD style="HEIGHT: 44px">
                        <A href="#pview?id=1695" target=_blank>米豆风车春秋摩登马车雪纺长丝巾披肩围巾</A>
                    </DD>
                    <DD>
                        ￥
                        <SPAN class=cv1>58.00</SPAN>
                        <SPAN class=cv>75.00</SPAN>
                    </DD>
                    <DD>
                        <DIV class=cv2>
                            福分
                        </DIV>
                        <DIV class=cv3>
                            &nbsp;&nbsp;3.00
                        </DIV>
                    </DD>
                </DL>
            </DIV>

            <!--小分类切换产品-->
            <DIV style="DISPLAY: none" id=con_xfl_49_1>
                <DL>
                    <DT>
                        <A href="#pview?id=1682" target=_blank><IMG
                                alt=新小天后秋冬针织拼接袖牛仔外套配驼子毛领1108款 src="/static/image/s_0_13534007010.jpg"
                                width=130 height=149>
                        </A>
                    </DT>
                    <DD style="HEIGHT: 44px">
                        <A href="#pview?id=1682" target=_blank>新小天后秋冬针织拼接袖牛仔外套配驼子毛领1108款</A>
                    </DD>
                    <DD>
                        ￥
                        <SPAN class=cv1>225.00</SPAN>
                        <SPAN class=cv>245.00</SPAN>
                    </DD>
                    <DD>
                        <DIV class=cv2>
                            福分
                        </DIV>
                        <DIV class=cv3>
                            &nbsp;&nbsp;20.00
                        </DIV>
                    </DD>
                </DL>
            </DIV>


            <DIV style="DISPLAY: none" id=con_xfl_49_2>
                <DL>
                    <DT>
                        <A href="#pview?id=187" target=_blank><IMG alt=金万利女装KST-6310
                                                                   src="/static/image/20110506kst6310wh.jpg" width=130 height=149>
                        </A>
                    </DT>
                    <DD style="HEIGHT: 44px">
                        <A href="#pview?id=187" target=_blank>金万利女装KST-6310</A>
                    </DD>
                    <DD>
                        ￥
                        <SPAN class=cv1>115.20</SPAN>
                        <SPAN class=cv>128.00</SPAN>
                    </DD>
                    <DD>
                        <DIV class=cv2>
                            福分
                        </DIV>
                        <DIV class=cv3>
                            &nbsp;&nbsp;12.00
                        </DIV>
                    </DD>
                </DL>
            </DIV>


            <DIV style="DISPLAY: none" id=con_xfl_49_3>
                <DL>
                    <DT>
                        <A href="#pview?id=717" target=_blank><IMG
                                alt=小甜果男女童羽绒棉保暖套装680738款米黄色(面)配湖蓝色(内)
                                src="/static/image/1214_XTG-680738-s.jpg" width=130 height=149>
                        </A>
                    </DT>
                    <DD style="HEIGHT: 44px">
                        <A href="#pview?id=717" target=_blank>小甜果男女童羽绒棉保暖套装680738款米黄色(面...</A>
                    </DD>
                    <DD>
                        ￥
                        <SPAN class=cv1>88.00</SPAN>
                        <SPAN class=cv>200.00</SPAN>
                    </DD>
                    <DD>
                        <DIV class=cv2>
                            福分
                        </DIV>
                        <DIV class=cv3>
                            &nbsp;&nbsp;10.00
                        </DIV>
                    </DD>
                </DL>
            </DIV>


            <DIV style="DISPLAY: none" id=con_xfl_49_4>
                <DL>
                    <DT>
                        <A href="#pview?id=632" target=_blank><IMG
                                alt="金雅莉安远红外线莫代尔男士背心0382均码 改善肩周炎"
                                src="/static/image/s_0_13472514210.jpg" width=130 height=149>
                        </A>
                    </DT>
                    <DD style="HEIGHT: 44px">
                        <A href="#pview?id=632" target=_blank>金雅莉安远红外线莫代尔男士背心0382均码
                            改善肩...</A>
                    </DD>
                    <DD>
                        ￥
                        <SPAN class=cv1>198.00</SPAN>
                        <SPAN class=cv>218.00</SPAN>
                    </DD>
                    <DD>
                        <DIV class=cv2>
                            福分
                        </DIV>
                        <DIV class=cv3>
                            &nbsp;&nbsp;25.00
                        </DIV>
                    </DD>
                </DL>
            </DIV>


            <DIV style="DISPLAY: none" id=con_xfl_49_5>

                <DL>
                    <DT>
                        <A href="#pview?id=1491" target=_blank><IMG
                                alt="金雅莉安远红外线能量磁调整型塑身美体连体衣S515 送A299保健文胸+F333卵巢保养内裤 木纤维"
                                src="/static/image/s_0_13484796190.jpg" width=130 height=149>
                        </A>
                    </DT>
                    <DD style="HEIGHT: 44px">
                        <A href="#pview?id=1491" target=_blank>金雅莉安远红外线能量磁调整型塑身美体连体衣S515...</A>
                    </DD>
                    <DD>
                        ￥
                        <SPAN class=cv1>3580.00</SPAN>
                        <SPAN class=cv>3980.00</SPAN>
                    </DD>
                    <DD>
                        <DIV class=cv2>
                            福分
                        </DIV>
                        <DIV class=cv3>
                            &nbsp;&nbsp;600.00
                        </DIV>
                    </DD>
                </DL>
            </DIV>


            <DIV style="DISPLAY: none" id=con_xfl_49_6></DIV>
            <DIV style="DISPLAY: none" id=con_xfl_49_7>
                <DL>
                    <DT>
                        <A href="#" target=_blank><IMG alt=恬贝儿心型磨毛卫衣1201#男女童装
                                                       src="/static/image/s_0_13517621230.jpg" width=130 height=149>
                        </A>
                    </DT>
                    <DD style="HEIGHT: 44px">
                        <A href="#" target=_blank>恬贝儿心型磨毛卫衣1201#男女童装</A>
                    </DD>
                    <DD>
                        ￥
                        <SPAN class=cv1>58.00</SPAN>
                        <SPAN class=cv>98.00</SPAN>
                    </DD>
                    <DD>
                        <DIV class=cv2>
                            福分
                        </DIV>
                        <DIV class=cv3>
                            &nbsp;&nbsp;5.00
                        </DIV>
                    </DD>
                </DL>
            </DIV>


            <DIV style="DISPLAY: none" id=con_xfl_49_8>

                <DL>
                    <DT>
                        <A href="#" target=_blank><IMG alt=米豆男女用素色格子纹丝绒围脖披肩两用超长围巾灰色
                                                       src="/static/image/s_0_13546997420.jpg" width=130 height=149>
                        </A>
                    </DT>
                    <DD style="HEIGHT: 44px">
                        <A href="#" target=_blank>米豆男女用素色格子纹丝绒围脖披肩两用超长围巾灰色</A>
                    </DD>
                    <DD>
                        ￥
                        <SPAN class=cv1>68.00</SPAN>
                        <SPAN class=cv>82.00</SPAN>
                    </DD>
                    <DD>
                        <DIV class=cv2>
                            福分
                        </DIV>
                        <DIV class=cv3>
                            &nbsp;&nbsp;3.00
                        </DIV>
                    </DD>
                </DL>
            </DIV>
        </DIV>


        <DIV class=content3>
            <!--<div class="content3_1">
                  <div class="nt3_1"><img src="../uploadfile/brands/1346983657.JPG" width="63" height="44" /></div>
                 </div>-->
            <DIV class=content3_2>
                <A title=乳康宝功能疗效性保健文胸 href="#" target=_blank> <IMG
                        src="/static/image/ad_b12_1338133416.jpg" width=212 height=65>
                </A>
                <A title="金雅莉安远红外线保健袜 三天除臭，一月治脚气 抗菌除臭" href="#" target=_blank> <IMG
                        src="/static/image/ad_b12_1338191337.jpg" width=212 height=65>
                </A>
                <A title="恬贝儿翻领衫家庭套装612#妈妈装 " href="#" target=_blank> <IMG
                        src="/static/image/ad_b12_1338198577.jpg" width=212 height=65>
                </A>
            </DIV>
        </DIV>
    </DIV>
</DIV>

<DIV class=tao_mrong>
    <DIV style="BORDER-BOTTOM-COLOR: #175fb0" class=mrong_tetil>
        <H1 style="COLOR: #175fb0">
            2F
            <FONT style="FONT-SIZE: 12px">►</FONT><SPAN>家居家装、厨具</SPAN>
        </H1>
        <P>
            <A href="#4">更多 <IMG align=absMiddle src="/static/image/tao_pic_14.jpg">
            </A>
        </P>
        <UL>
            <LI id=xfl_41 class=hover onMouseOver="setTab('xfl_4',1,4)">
                <!--onmouseout="hideTab('xfl_4',4)"-->
                <A href="#78">家纺</A>
            </LI>
            <LI id=xfl_42 onMouseOver="setTab('xfl_4',2,4)">
                <!--onmouseout="hideTab('xfl_4',4)"-->
                <A href="#80">生活日用</A> |
            </LI>
            <LI id=xfl_43 onMouseOver="setTab('xfl_4',3,4)">
                <!--onmouseout="hideTab('xfl_4',4)"-->
                <A href="#114">厨具</A> |
            </LI>
            <LI id=xfl_44 onMouseOver="setTab('xfl_4',4,4)">
                <!--onmouseout="hideTab('xfl_4',4)"-->
                <A href="#135">清洁用品</A> |
            </LI>
        </UL>
    </DIV>
    <DIV class=mr_content>
        <DIV class=content1>
            <H2>
                畅销排行榜
            </H2>
            <DIV class=cxiao>
                <DIV id=pt_cha_1>
                    <UL>
                        <LI id=wer_41 class=hover onMouseOver="setTab('wer_4',1,3)">
                            家纺
                        </LI>
                        <LI id=wer_42 onMouseOver="setTab('wer_4',2,3)">
                            生活日用
                        </LI>
                        <LI id=wer_43 onMouseOver="setTab('wer_4',3,3)">
                            厨具
                        </LI>
                    </UL>
                </DIV>
                <DIV id=con_wer_4_1>
                    <DIV class=ind_paih_cp>


                        <DIV class=paih1>
                            <DIV class=paih1_sz>
                                <DIV class=szp>
                                    1
                                </DIV>
                                <A href="#" target=_blank>清洗世界刷哥多用途合成...</A>
                                <DL>
                                    <DT>
                                        <A href="#" target=_blank><IMG border=0
                                                                       src="/static/image/QXSJ-SG-0407-s.jpg" width=68 height=70>
                                        </A>
                                    </DT>
                                    <DD>
                                        <A href="#" target=_blank>清洗世界刷哥多用途合成......</A>
                                    </DD>
                                    <DD>
                                        商城价：
                                        <SPAN>￥12</SPAN>
                                    </DD>
                                </DL>
                            </DIV>
                        </DIV>
                        <DIV class=paih1>
                            <DIV class=paih1_sz>
                                <DIV class=szp4>
                                    4
                                </DIV>
                                <A href="#" target=_blank>购买健牌工坊优嘉莉系列...</A>
                            </DIV>
                        </DIV>

                        <DIV class=paih1>
                            <DIV class=paih1_sz>
                                <DIV class=szp4>
                                    5
                                </DIV>
                                <A href="#" target=_blank>白如雪健康抑菌洗手液5...</A>
                            </DIV>
                        </DIV>
                    </DIV>
                </DIV>

                <DIV style="DISPLAY: none" id=con_wer_4_3>
                    <DIV class=ind_paih_cp>
                        <DIV class=paih1>
                            <DIV class=paih1_sz>
                                <DIV class=szp>
                                    1
                                </DIV>
                                <A href="#" target=_blank>程锋科技不锈钢纳米能量...</A>
                                <DL>
                                    <DT>
                                        <A href="#" target=_blank> <IMG border=0
                                                                        src="/static/image/1029_CFKJ-001-s.jpg" width=68 height=70> </A>
                                    </DT>
                                    <DD>
                                        <A href="#" target=_blank>程锋科技不锈钢纳米能量......</A>
                                    </DD>
                                    <DD>
                                        商城价：
                                        <SPAN>￥98</SPAN>
                                    </DD>
                                </DL>
                            </DIV>
                        </DIV>

                        <DIV class=paih1>
                            <DIV class=paih1_sz>
                                <DIV class=szp4>
                                    5
                                </DIV>
                                <A href="#" target=_blank>万年利正宗金门菜刀单刀...</A>
                            </DIV>
                        </DIV>
                    </DIV>
                </DIV>
            </DIV>
        </DIV>


        <DIV class=content2>
            <!--大分类下的产品-->
            <DIV id=con_xfl_4_0>
                <DL>
                    <DT>
                        <A href="#" target=_blank><IMG alt="水天使全方位洁净元素（粉）1kg 100%纯"
                                                       src="/static/image/s_0_13528824030.jpg" width=130 height=149>
                        </A>
                    </DT>
                    <DD style="HEIGHT: 44px">
                        <A href="#" target=_blank>水天使全方位洁净元素（粉）1kg 100%纯天然 ...</A>
                    </DD>
                    <DD>
                        ￥
                        <SPAN class=cv1>208.00</SPAN>
                        <SPAN class=cv>228.00</SPAN>
                    </DD>
                    <DD>
                        <DIV class=cv2>
                            福分
                        </DIV>
                        <DIV class=cv3>
                            &nbsp;&nbsp;30.00
                        </DIV>
                    </DD>
                </DL>

            </DIV>
            <!--小分类切换产品-->
            <DIV style="DISPLAY: none" id=con_xfl_4_1>
                <DL>
                    <DT>
                        <A href="#" target=_blank><IMG
                                alt="京良温感保暖热垫坐垫50*50cm 咖啡色 卡其色自选色"
                                src="/static/image/s_0_13553058350.jpg" width=130 height=149>
                        </A>
                    </DT>
                    <DD style="HEIGHT: 44px">
                        <A href="#" target=_blank>京良温感保暖热垫坐垫50*50cm 咖啡色 卡其色...</A>
                    </DD>
                    <DD>
                        ￥
                        <SPAN class=cv1>89.00</SPAN>
                        <SPAN class=cv>130.00</SPAN>
                    </DD>
                    <DD>
                        <DIV class=cv2>
                            福分
                        </DIV>
                        <DIV class=cv3>
                            &nbsp;&nbsp;8.00
                        </DIV>
                    </DD>
                </DL>
            </DIV>


            <DIV style="DISPLAY: none" id=con_xfl_4_2>

                <DL>
                    <DT>
                        <A href="#" target=_blank><IMG
                                alt="育本源天然生物果蔬餐具清洗液500ml  杀菌 消毒 分解农药 温和不伤皮肤"
                                src="/static/image/1201_YBY-004-s.jpg" width=130 height=149>
                        </A>
                    </DT>
                    <DD style="HEIGHT: 44px">
                        <A href="#" target=_blank>育本源天然生物果蔬餐具清洗液500ml 杀菌 消...</A>
                    </DD>
                    <DD>
                        ￥
                        <SPAN class=cv1>28.00</SPAN>
                        <SPAN class=cv>30.00</SPAN>
                    </DD>
                    <DD>
                        <DIV class=cv2>
                            福分
                        </DIV>
                        <DIV class=cv3>
                            &nbsp;&nbsp;3.00
                        </DIV>
                    </DD>
                </DL>
            </DIV>


            <DIV style="DISPLAY: none" id=con_xfl_4_3>
                <DL>
                    <DT>
                        <A href="#" target=_blank><IMG
                                alt=万年利正宗金门菜刀单刀--切片刀(175X70X1.2mm)
                                src="/static/image/0830_WNL-005-s.jpg" width=130 height=149>
                        </A>
                    </DT>
                    <DD style="HEIGHT: 44px">
                        <A href="#" target=_blank>万年利正宗金门菜刀单刀--切片刀(175X70X1...</A>
                    </DD>
                    <DD>
                        ￥
                        <SPAN class=cv1>88.00</SPAN>
                        <SPAN class=cv>128.00</SPAN>
                    </DD>
                    <DD>
                        <DIV class=cv2>
                            福分
                        </DIV>
                        <DIV class=cv3>
                            &nbsp;&nbsp;8.00
                        </DIV>
                    </DD>
                </DL>
                <DL>
                    <DT>
                        <A href="#" target=_blank><IMG
                                alt=程锋科技不锈钢纳米能量π水杯380ML（含杯芯，杯身，杯盖）
                                src="/static/image/1029_CFKJ-001-s.jpg" width=130 height=149>
                        </A>
                    </DT>
                    <DD style="HEIGHT: 44px">
                        <A href="#" target=_blank>程锋科技不锈钢纳米能量π水杯380ML（含杯芯，杯...</A>
                    </DD>
                    <DD>
                        ￥
                        <SPAN class=cv1>98.00</SPAN>
                        <SPAN class=cv>188.00</SPAN>
                    </DD>
                    <DD>
                        <DIV class=cv2>
                            福分
                        </DIV>
                        <DIV class=cv3>
                            &nbsp;&nbsp;10.00
                        </DIV>
                    </DD>
                </DL>
            </DIV>
            <DIV style="DISPLAY: none" id=con_xfl_4_4>

                <DL>
                    <DT>
                        <A href="#" target=_blank><IMG
                                alt="U8油污净500ml 含特效活性物及强效溶剂 快速渗透油污深层 软化溶解油污"
                                src="/static/image/0618_U8-123-s.jpg" width=130 height=149>
                        </A>
                    </DT>
                    <DD style="HEIGHT: 44px">
                        <A href="#" target=_blank>U8油污净500ml 含特效活性物及强效溶剂 快速...</A>
                    </DD>
                    <DD>
                        ￥
                        <SPAN class=cv1>19.50</SPAN>
                        <SPAN class=cv>19.90</SPAN>
                    </DD>
                    <DD>
                        <DIV class=cv2>
                            福分
                        </DIV>
                        <DIV class=cv3>
                            &nbsp;&nbsp;2.00
                        </DIV>
                    </DD>
                </DL>
            </DIV>
        </DIV>


        <DIV class=content3>
            <DIV class=content3_2>
                <A title="柏米  天然永恒之美" href="S" target=_blank> <IMG
                        src="/static/image/ad_b12_1338114423.jpg" width=212 height=65> </A>
                <A title="充电式声波美白电动牙刷 强劲美白效果" href="S" target=_blank> <IMG
                        src="/static/image/ad_b12_1338114561.jpg" width=212 height=65> </A>
                <A title=德康家美--优质健康睡眠 href="#" target=_blank> <IMG
                        src="/static/image/ad_b12_1351828418.jpg" width=212 height=65> </A>
            </DIV>
        </DIV>
    </DIV>
</DIV>


<DIV class=tao_mrong>
    <DIV style="BORDER-BOTTOM-COLOR: #fd88a1" class=mrong_tetil>
        <H1 style="COLOR: #fd88a1">
            3F
            <FONT style="FONT-SIZE: 12px">►</FONT><SPAN>友情链接：</SPAN>
        </H1>
        <P>
            <A href="#">更多 <IMG align=absMiddle src="/static/image/tao_pic_14.jpg">
            </A>
        </P>
    </DIV>
</DIV>
<DIV class=index_frie>
    <DIV class=frieleft>
        <DIV class=dlink1>
            <A title=商业模式 href="#" target=_blank> <IMG
                    src="/static/image/ad_b8_1338361962.jpg" width=202 height=70>
            </A>
        </DIV>
        <DIV class=dlink1>
            <A title=联系我们 href="#" target=_blank> <IMG
                    src="/static/image/ad_b8_1338714357.jpg" width=202 height=70>
            </A>
        </DIV>
        <DIV class=dlink1>
            <A title=E起祝福吧 href="#" target=_blank> <IMG
                    src="/static/image/ad_b8_1338714378.jpg" width=202 height=70>
            </A>
        </DIV>
    </DIV>
    <DIV class=friecont>
        <DIV class=cont1>
            <DIV class="cont1_one ">
                <A title=123 href="#" target=_blank><IMG
                        src="/static/image/ad_b9_1336958562.gif" width=164 height=110>
                </A>
            </DIV>
            <DIV class="cont1_one cv5">
                <A title=123 href="#" target=_blank><IMG
                        src="/static/image/ad_b9_1336958580.gif" width=164 height=110>
                </A>
            </DIV>
            <DIV class="cont1_one ">
                <A title=123 href="#" target=_blank><IMG
                        src="/static/image/ad_b9_1336958590.gif" width=164 height=110>
                </A>
            </DIV>
        </DIV>
        <A title=123 href="#" target=_blank><IMG
                src="/static/image/ad_b10_1350293698.jpg" width=546 height=107>
        </A>
    </DIV>
    <DIV class=frieright>
        <DIV class=dlinkr2>
            <A title=123 href="#" target=_blank><IMG
                    src="/static/image/ad_b11_1336958610.gif" width=215 height=51>
            </A>
        </DIV>
        <DIV class=dlinkr2>
            <A title=123 href="#" target=_blank><IMG
                    src="/static/image/ad_b11_1336958618.gif" width=215 height=51>
            </A>
        </DIV>
        <DIV class=dlinkr2>
            <A title=123 href="#" target=_blank><IMG
                    src="/static/image/ad_b11_1336958628.gif" width=215 height=51>
            </A>
        </DIV>
        <DIV class=dlinkr2>
            <A title=123 href="#" target=_blank><IMG
                    src="/static/image/ad_b11_1336958645.gif" width=215 height=51>
            </A>
        </DIV>
    </DIV>
</DIV>
<!--link--->
<DIV class=link>
    友情链接：<A href="#" target=_blank>淘众福</A>
</DIV>
<jsp:include page="_foot.jsp"/>
</BODY>
</HTML>