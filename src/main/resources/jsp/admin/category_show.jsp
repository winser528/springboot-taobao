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
    <base href="<%=basePath%>">
    <title>商品标题</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="/static/admin/images/skin.css" rel="stylesheet" type="text/css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="text/javascript" src="/static/admin/js/jquery-1.8.3.min.js"></script>
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

        #menu {
            list-style: none;
            border: 1px solid red;
            padding: 0px;
            width: 150px;
            float: left;
            padding-left: 5px;
            font-size: 15px;
        }

        #menu li {
            margin: 5px;
            cursor: pointer;
        }

        #menu li:hover {
            color: red;
        }

        #menu1 {
            display: none;
            float: left;
            list-style: none;
            border: 1px solid red;
            padding: 0px;
            width: 150px;
            height: 200px;
        }

        #menu2 {
            display: none;
            float: left;
            list-style: none;
            border: 1px solid red;
            padding: 0px;
            width: 150px;
        }

        -->
    </style>
</head>
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
                        <div class="titlebt"> 商品标题</div>
                    </td>
                </tr>
            </table>
        </td>
        <td width="16" valign="top" background="/static/admin/images/mail_rightbg.gif">
            <img src="/static/admin/images/nav-right-bg.gif" width="16" height="29"/>
        </td>
    </tr>
    <tr>
        <td valign="middle" background="/static/admin/images/mail_leftbg.gif">&nbsp;</td>
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
                        <table class="biao">
                            <!--这里是显示内容-->
                            <tr style="background:#3C5E7C;line-height:30px;text-align: center;">
                                <td></td>
                                <td width="250px">分类名字</td>
                                <td width="100px">上级分类</td>
                                <td width="100px">操作</td>
                            </tr>
                            <c:forEach items="${listOne}" var="c">
                                <tr>
                                    <td><input type="checkbox" name="${c.id}"/></td>
                                    <td><a href="/admin/category_update?id=${c.id}">${c.cname}</a></td>
                                    <td>${c.cid}</td>
                                    <td>
                                        <a href="/admin/category_update?id=${c.id}">修改</a>
                                        <a href="/admin/category_delete?id=${c.id}">删除</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
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
<script>
    function ulmenu(obj) {
        document.getElementById("menu1").style.display = "block";
        obj.style.color = "red";
        $.ajax({
            url: 'AdminTitleQueryCid',
            type: 'post',
            data: {cid: obj.id},
            ddataType: 'html',
            success: function (data) {$("#ulmenu1").html(data)}
        })
    }

    function ulmenu1() {
        document.getElementById("menu1").style.display = "none";
    }
</script>
</html>