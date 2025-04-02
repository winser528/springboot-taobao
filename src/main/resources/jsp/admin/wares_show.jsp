<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.jspsmart.upload.*" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>显示界面</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="/static/admin/images/skin.css" rel="stylesheet" type="text/css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<style type="text/css">
    <!--
    body {
        margin-left: 0px;
        margin-top: 0px;
        margin-right: 0px;
        margin-bottom: 0px;
        background-color: #EEF2FB;
    }

    .biao {
        width: 100%;
        border: 1px solid #666666;
        border-collapse: collapse;
    }

    .biao td {
        border: 1px solid #666666;
    }
    -->
</style>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td width="17" valign="top" background="/static/admin/images/mail_leftbg.gif">
            <img src="/static/admin/images/left-top-right.gif" width="17" height="29"/>
        </td>
        <td valign="top" background="/static/admin/images/content-bg.gif">
            <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
                <tr>
                    <td height="31">
                        <div class="titlebt"> 商品分类</div>
                    </td>
                </tr>
            </table>
        </td>
        <td width="16" valign="top" background="/static/admin/images/mail_rightbg.gif">
            <img src="/static/admin/images/nav-right-bg.gif" width="16" height="29"/>
        </td>
    </tr>
    <tr>
        <td valign="middle" background="/static/admin/images/mail_leftbg.gif"> &nbsp;</td>
        <td valign="top" bgcolor="#F7F8F9">
            <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="2" valign="top"> &nbsp;</td>
                    <td width="2%"> &nbsp;</td>
                    <td width="4%" valign="top"> &nbsp;</td>
                </tr>
                <tr>
                    <td width="2%">
                        <p> &nbsp; </p>
                        <p> &nbsp; </p>
                    </td>
                    <td width="92%" valign="top">
                        <script type="text/javascript">
                            function alter() {
                                //Stirng id=document.getElementsByName("classify").value;
                                alert("你改变了我,你的ID是");
                            }
                        </script>
                        <%--<select name="classify" onchange="alter()">
                            <c:forEach items="${listTitle}" var="t">
                                <option value="${t.tid}">${t.titleName}</option>
                            </c:forEach>
                        </select>
                            --%>
                        <form action="">
                            <table class="biao">
                                <!--这里是显示内容-->
                                <tr style="background:#3C5E7C;line-height:30px;text-align: center;">
                                    <td></td>
                                    <td width="250px">商品名字</td>
                                    <td width="80px">现价</td>
                                    <td width="80px">原价</td>
                                    <td>图片</td>
                                    <td width="100px">库存</td>
                                    <td width="100px">状态</td>
                                    <td width="100px">操作</td>
                                </tr>
                                <c:forEach items="${listwares}" var="w">
                                    <tr>
                                        <td>
                                            <input type="checkbox" name="${w.id}"/>
                                        </td>
                                        <td><a href="/admin/wares_update?id=${w.id}">${w.wname}</a></td>
                                        <td>${w.price}</td>
                                        <td>${w.yprice}</td>
                                        <td><IMG alt="${w.wname}" src="/static/image/${w.image}" width="80" height="80"></td>
                                        <td>剩余(${w.stock})</td>
                                        <td>${w.winfo}</td>
                                        <td>
                                            <a href="/admin/wares_update?id=${w.id}">修改</a>
                                            <a href="/admin/wares_delete?id=${w.id}">删除</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                            <p><input type="submit" value="删除"/></p>
                        </form>
                    </td>
                </tr>
            </table>
        </td>
        <td background="/static/admin/images/mail_rightbg.gif"> &nbsp;</td>
    </tr>
    <tr>
        <td valign="bottom" background="/static/admin/images/mail_leftbg.gif">
            <img src="/static/admin/images/buttom_left2.gif" width="17" height="17"/>
        </td>
        <td background="/static/admin/images/buttom_bgs.gif">
            <img src="/static/admin/images/buttom_bgs.gif" width="17" height="17">
        </td>
        <td valign="bottom" background="/static/admin/images/mail_rightbg.gif">
            <img src="/static/admin/images/buttom_right2.gif" width="16" height="17">
        </td>
    </tr>
</table>
</body>