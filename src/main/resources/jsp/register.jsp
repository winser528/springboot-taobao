<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0034)http://www.taozfu.com/register.php -->
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD><TITLE>淘众福-淘我所需！ 打造全球最大的跨媒体生活信息服务平台！</TITLE>
    <META content="text/html; charset=utf-8" http-equiv=Content-Type>
    <META content=IE=EmulateIE7 http-equiv=X-UA-Compatible>
    <META name=keywords content=淘众福官方网>
    <META name=description content="淘众福 ABC模式 网络购物 网络创业">
    <META name=GENERATOR content="MSHTML 8.00.6001.19328">
    <LINK rel=stylesheet type=text/css href="/static/css/style.css">
    <LINK rel=stylesheet type=text/css href="/static/css/reg.css">
    <LINK rel=stylesheet type=text/css href="/static/css/taocss.css">
    <SCRIPT type=text/javascript src="/static/js/jquery-1.8.3.min.js"></SCRIPT>
    <SCRIPT type=text/javascript src="/static/js/jquery.js"></SCRIPT>
    <SCRIPT type=text/javascript src="/static/js/user_new.js"></SCRIPT>
    <SCRIPT type=text/javascript src="/static/js/utils.js"></SCRIPT>
</HEAD>
<BODY>
<jsp:include page="_head.jsp"/>
<DIV style="Z-INDEX: 9999; POSITION: relative; PADDING-TOP: 0px" class=search>
    <DIV class=Navlist>
        <DIV class=lnav><A onmousemove=showMenu() href="javascript:void(0)"><IMG src="/static/image/311top_142.gif"></A></DIV>
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
        <SPAN>
            <STRONG>热门搜索</STRONG>：<A href="#">金雅莉安</A><A href="#"> 超氧离子水生成器</A><A href="#"> O度</A>
        </SPAN>
        <SPAN class=jiesuan><A # rel=nofollow><IMG src="/static/image/311top_16.gif"></A></SPAN>
        <SPAN id=gouwuche class=gwc>共<STRONG>0</STRONG> 件商品 <STRONG></STRONG></SPAN>
    </FORM>
</DIV><!--头部结束--><!--内容开始-->
<DIV class=box>
    <DIV class=tit style="margin-top: 40px;"><SPAN><STRONG>我已注册，现在就<A href="/login">登录</A></STRONG></SPAN></DIV>
    <DIV class=con>
        <DIV style="WIDTH: 500px; FLOAT: left; BORDER-RIGHT: #ccc 1px solid">
            <FORM id="formUser" onSubmit="return register_new();" method="post" name=formUser action="UserRegister">
                <TABLE border=0 cellSpacing=0 cellPadding=0 width=380 align=right>
                    <TBODY>
                    <TR>
                        <TD align=right>用户名：</TD>
                        <TD>
                            <LABEL>
                                <INPUT onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^A-Za-z0-9]/g,''))"
                                       onblur=is_registered(this.value); id=username class=input1
                                       onkeyup="value=value.replace(/[^A-Za-z0-9]/g,'')" name="username">
                                <SPAN class=red>* </SPAN>
                            </LABEL>
                        </TD>
                    </TR>
                    <TR>
                        <TD>&nbsp;</TD>
                        <TD><LABEL id=username_notice class=red><font color="#000000">3--25字母或数字.</font></LABEL></TD>
                    </TR>
                    <TR>
                        <TD align=right>设置密码：</TD>
                        <TD>
                            <LABEL>
                                <INPUT id=password class=input1 onkeyup=is_registerpwd(this.value); type=password name="password">
                                <SPAN class=red>*</SPAN>
                            </LABEL>
                        </TD>
                    </TR>
                    <TR>
                        <TD>&nbsp;</TD>
                        <TD><LABEL id=password_notice class=red><font color="#000000">6位以上</font></LABEL></TD>
                    </TR>
                    <TR>
                        <TD align=right>确认密码：</TD>
                        <TD>
                            <INPUT id=confirm_password class=input1 onkeyup=is_register_conpwd(this.value); type=password
                                   name=confirm_password>
                            <SPAN class=red>*</SPAN>
                        </TD>
                    </TR>
                    <TR>
                        <TD>&nbsp;</TD>
                        <TD><LABEL id=conform_password_notice class=red></LABEL></TD>
                    </TR>
                    <TR>
                        <TD align=right>邮箱：</TD>
                        <TD><INPUT onblur=is_registeremail(this.value); id=email class=input1 name="email"> <SPAN class=red>*</SPAN></TD>
                    </TR>
                    <TR>
                        <TD>&nbsp;</TD>
                        <TD><LABEL id=email_notice class=red></LABEL></TD>
                    </TR>
                    <TR>
                        <TD align=right>验证码：</TD>
                        <TD>
                            <INPUT style="WIDTH: 140px; MARGIN-RIGHT: 5px" id=captcha class=input1 maxLength=4 name=captcha>
                            <SPAN>
                                <img src="/captcha" width="60" height="25" align="absmiddle" onclick="this.src='/captcha?'+Math.random()"
                                     alt="点击换一张"/>
                            </SPAN>
                            <SPAN class=red> *</SPAN>
                        </TD>
                    </TR>
                    <TR>
                        <TD>&nbsp;</TD>
                        <TD><LABEL id=captcha_notice class=red></LABEL></TD>
                    </TR>
                    <TR>
                        <TD><INPUT id=captcha_have value=1 type=hidden name=captcha_have></TD>
                        <TD>
                            <LABEL>
                                <INPUT id=agreement value=1 CHECKED type=checkbox name=agreement>
                                <span>我已看过并接受《<A style="COLOR: blue">用户协议</A>》</span>
                            </LABEL>
                        </TD>
                    </TR>
                    <TR>
                        <TD>&nbsp;</TD>
                        <TD><LABEL id=agreement_notice class=red></LABEL></TD>
                    </TR>
                    <TR>
                        <TD>&nbsp;</TD>
                        <TD>
                            <INPUT id=act value=act_register_new type=hidden name=act>
                            <INPUT id=return_url value=/member/ type=hidden name=return_url>
                            <INPUT id=submit class=zhuc src="/static/image/reg_btn.png" type=image name="submit">
                        </TD>
                    </TR>
                    <TR>
                        <TD>&nbsp;</TD>
                        <TD><LABEL id=reg_notice class=red></LABEL></TD>
                    </TR>
                    </TBODY>
                </TABLE>
            </FORM>
        </DIV>
        <DIV style="PADDING-LEFT: 20px; WIDTH: 430px; PADDING-RIGHT: 20px; FLOAT: left">
            <DIV style="SCROLLBAR-ARROW-COLOR: #ffc6ca; POSITION: absolute; SCROLLBAR-FACE-COLOR: #ff4844; PADDING-LEFT: 0px; WIDTH: 430px; PADDING-RIGHT: 0px; SCROLLBAR-DARKSHADOW-COLOR: #ff4844; SCROLLBAR-BASE-COLOR: #ff4844;
            HEIGHT: 355px; SCROLLBAR-HIGHLIGHT-COLOR: #ff4844; SCROLLBAR-SHADOW-COLOR: #ff4844; OVERFLOW: auto; SCROLLBAR-TRACK-COLOR:#ffc6ca; SCROLLBAR-3DLIGHT-COLOR: #ffc6ca; PADDING-TOP: 10px">
                <DIV><STRONG>一、本站服务条款的确认和接纳
                </STRONG><BR>本站的各项电子服务的所有权和运作权归本站。本站提供的服务将完全按照其发布的服务条款和操作规则严格执行。用户同意所有服务条款并完成注册程序，才能成为本站的正式用户。用户确认：本协议条款是处理双方权利义务的约定，除非违反国家强制性法律，否则始终有效。在下订单的同时，您也同时承认了您拥有购买这些产品的权利能力和行为能力，并且将您对您在订单中提供的所有信息的真实性负责。
                    <BR><STRONG>二、服务简介 </STRONG><BR>本站运用自己的操作系统通过国际互联网络为用户提供网络服务。同时，用户必须：
                    <BR>(1)自行配备上网的所需设备，包括个人电脑、调制解调器或其它必备上网装置。 <BR>(2)自行负担个人上网所支付的与此服务有关的电话费用、网络费用。
                    <BR>基于本站所提供的网络服务的重要性，用户应同意 <BR>(1)提供详尽、准确的个人资料。 <BR>(2)不断更新注册资料，符合及时、详尽、准确的要求。
                    <BR>本站不公开用户的姓名、地址、电子邮箱和笔名， 除以下情况外： <BR>用户授权本站透露这些信息。 <BR>相应的法律及程序要求本站提供用户的个人资料。
                    <BR>（3）本站代消商采取实名制，部分资料会在代消商分站网页显示。 <BR><STRONG>三、价格和数量</STRONG>
                    <BR>本站将尽最大努力保证您所购商品与网站上公布的价格一致。
                    <BR>产品的价格和可获性都在本站上指明，这类信息将随时更改。商品的价格不包含增值税。送货费将另外结算，费用根据您选择的送货方式的不同而异。如果发生了意外情况，在确认了您的订单后，由于供应商提价，税额变化引起的价格变化，或是由于网站的错误等造成商品价格变化，您有权取消您的订单，并希望您能在1个工作日内通过电子邮件或电话通知客户服务部，否则我们将视做您同意
                    您所订购的商品，如果发生缺货1周以上，您有权取消订单或可以调换其他商品。 <BR><STRONG>四、送货及费用
                    </STRONG><BR>本站将会把产品送到您所指定的送货地址。所有在本站上列出的送货时间为参考时间，参考时间的计算是根据库存状况、正常的处理过程和送货时间、送货地点的基础上估计得出的。送货费用根据您选择的配送方式的不同而异。
                    <BR>请清楚准确地填写您的真实姓名、送货地址及联系方式。因如下情况造成订单延迟或无法配送等，本站将不迟延配送的责任：
                    <BR>(1)客户提供错误信息和不详细的地址； <BR>(2)货物送达无人签收，由此造成的重复配送所产生的费用及相关的后果。
                    <BR>(3)不可抗力，例如：自然灾害、交通戒严、突发战争等。 <BR><STRONG>五、服务条款的修改
                    </STRONG><BR>本站将可能不定期的修改本用户协议的有关条款，一旦条款及服务内容产生变动，本站将会在重要页面上提示修改内容。
                    <BR><STRONG>六、用户隐私制度
                    </STRONG><BR>尊重用户个人隐私是本站的一项基本政策。所以，作为对以上第二点注册人资料分析的补充，本站一定不会在未经合法用户授权时公开、编辑或透露其注册资料及保存在本站中的非公开内容，除非有法律许可要求或本站在诚信的基础上认为透露这些信息是必要的。
                    <BR><STRONG>七、用户的帐号，密码和安全性
                    </STRONG><BR>用户一旦注册成功，成为本站的合法用户，将得到一个密码和用户名。您可随时根据指示改变您的密码。用户需谨慎合理的保存、使用用户名和密码。用户若发现任何非法使用用户帐号或存在安全漏洞的情况，请立即通知本站和向公安机关报案。
                    <BR><STRONG>八、对用户信息的存储和限制
                    </STRONG><BR>本站有判定用户的行为是否符合国家法律法规规定及本站服务条款权利，如果用户违背了国家法律法规规定或服务条款的规定，本站有中断对其提供网络服务的权利。
                    <BR><STRONG>九、用户管理
                    </STRONG><BR>用户单独承担发布内容的责任。用户对服务的使用是根据所有适用于本站的国家法律、地方法律和国际法律标准的。用户必须遵循：
                    <BR>(1)从中国境内向外传输技术性资料时必须符合中国有关法规。 <BR>(2)使用网络服务不作非法用途。 <BR>(3)不干扰或混乱网络服务。
                    <BR>(4)遵守所有使用网络服务的网络协议、规定、程序和惯例。
                    <BR>用户须承诺不传输任何非法的、骚扰性的、中伤他人的、辱骂性的、恐性的、伤害性的、庸俗的，淫秽等信息资料。另外，用户也不能传输任何教唆他人构成犯罪行为的资料；不能传输助长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法律的资料。未经许可而非法进入其它电脑系统是禁止的。
                    <BR>若用户的行为不符合以上提到的服务条款，本站将作出独立判断立即取消用户服务帐号。用户需对自己在网上的行为承担法律责任。用户若在本站上散布和传播反动、色情或其它违反国家法律的信息，本站的系统记录有可能作为用户违反法律的证据。
                    <BR><STRONG>十、淘众福网会员制计划（VIP计划）协议的变更/终止/责任限制</STRONG>
                    <BR>淘众福网的会员制计划（VIP计划），本计划由淘众福网/或其关联企业提供。以上计划条款和条件，连同计划有关的任何促销内容的相应条款和条件，构成本计划会员与淘众福之间关于制度的完整协议。如果您参加计划，您就接受了这些条款、条件、限制和要求。请注意，您对淘众福的使用以及您的会员资格还受制于淘众福网站上时常更新的所有条款、条件、限制和要求，请仔细阅读这些条款和条件。
                    <BR><STRONG>十一、通告
                    </STRONG><BR>所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。用户协议条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。
                    <BR><STRONG>十二、参与广告策划
                    </STRONG><BR>用户在他们发表的信息中加入宣传资料或参与广告策划，在本站的免费服务上展示他们的产品，任何这类促销方法，包括运输货物、付款、服务、商业条件、担保及与广告有关的描述都只是在相应的用户和广告销售商之间发生。
                    <BR><STRONG>十三、网络服务内容的所有权</STRONG>
                    <BR>本站定义的网络服务内容包括：文字、软件、声音、图片、录象、图表、广告中的全部内容；电子邮件的全部内容；本站为用户提供的其它信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在本站和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。本站所有的文章版权归原文作者和本站共同所有，任何人需要转载本站的文章，必须征得原文作者或本站授权。
                    <BR><STRONG>十四、责任限制</STRONG>
                    <BR>如因不可抗力或其它本站无法控制的原因使本站销售系统崩溃或无法正常使用导致网上交易无法完成或丢失有关的信息、记录等本站会尽可能合理地协助处理善后事宜，并努力使客户免受经济损失。
                    <BR><STRONG>十五、法律管辖和适用 </STRONG><BR>本协议的订立、执行和解释及争议的解决均应适用中国法律。
                    <BR>如发生本站服务条款与中国法律相抵触时，则这些条款将完全按法律规定重新解释，而其它合法条款则依旧保持对用户产生法律效力和影响。
                    <BR>本协议的规定是可分割的，如本协议任何规定被裁定为无效或不可执行，该规定可被删除而其余条款应予以执行。
                    <BR>如双方就本协议内容或其执行发生任何争议，双方应尽力友好协商解决；协商不成时，任何一方均可向本站所在地的人民法院提起诉讼。
                </DIV>
            </DIV>
        </DIV>
    </DIV>
    <DIV><IMG src="/static/image/zhuce_10.gif"></DIV>
</DIV><!--内容结束-->
<jsp:include page="_foot.jsp"/>
</BODY>
</HTML>