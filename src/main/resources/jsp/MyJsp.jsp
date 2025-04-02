<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.jspsmart.upload.*" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>My JSP 'MyJsp.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <script type="text/javascript" src="/static/js/jquery-1.8.3.min.js"></script>
</head>

<body>
<input type="button" value="as" id="adian">
<input type="button" value="sd" id="dian" onclick="fangfa()"/>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td width="17" valign="top" background="/static/image/mail_leftbg.gif">
            <img src="/static/image/left-top-right.gif" width="17" height="29"/>
        </td>
        <td valign="top" background="/static/image/content-bg.gif">
            <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
                <tr>
                    <td height="31">
                        <div class="titlebt"> 添加标题</div>
                    </td>
                </tr>
            </table>
        </td>
        <td width="16" valign="top" background="/static/image/mail_rightbg.gif">
            <img src="/static/image/nav-right-bg.gif" width="16" height="29"/>
        </td>
    </tr>
    <tr>
        <td valign="middle" background="/static/image/mail_leftbg.gif"> &nbsp;</td>
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
                        <form action="AdminTitleAddSubmit" method="post">
                            <table class="">
                                <!--这里是显示内容-->
                                <tr>
                                    <td width="100">一级标题</td>
                                    <td width="150">操作</td>
                                </tr>
                                <tr>
                                    <td><input type="text" name="title"/></td>
                                    <td><input type="submit" value="添加"/></td>
                                </tr>
                            </table>
                        </form>
                        <form action="AdminTitleAddSubmit">
                            <table>
                                <tr>
                                    <td width="100">一级标题</td>
                                    <td width="100">二级标题</td>
                                    <td width="150">操作</td>
                                </tr>
                                <tr>
                                    <td>
                                        <select name="cid">
                                            <c:forEach items="${listOne}" var="one">
                                                <option value="${one.id}">${one.cname}</option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                    <td><input type="text" name="title"/></td>
                                    <td><input type="submit" value="添加"/></td>
                                </tr>
                            </table>
                        </form>
                        <form action="AdminTitleAddSubmit">
                            <table>
                                <tr>
                                    <td width="100">一级标题</td>
                                    <td width="100">二级标题</td>
                                    <td width="100">三级标题</td>
                                    <td width="150">操作</td>
                                </tr>
                                <tr>
                                    <td>
                                        <select id="twos" name="sel">
                                            <c:forEach items="${listOne}" var="one">
                                                <option value="${one.id}">${one.cname}</option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                    <td>
                                        <select name="cid">
                                            <c:forEach items="${listTwo}" var="two">
                                                <option value="${two.id}">${two.cname}</option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                    <td><input type="text" name="title"/></td>
                                    <td><input type="submit" value="添加"/></td>
                                </tr>
                            </table>
                        </form>
                    </td>
                </tr>
            </table>
        </td>
        <td background="/static/image/mail_rightbg.gif"> &nbsp;</td>
    </tr>
    <tr>
        <td valign="bottom" background="/static/image/mail_leftbg.gif">
            <img src="/static/image/buttom_left2.gif" width="17" height="17"/>
        </td>
        <td background="/static/image/buttom_bgs.gif">
            <img src="/static/image/buttom_bgs.gif" width="17" height="17">
        </td>
        <td valign="bottom" background="/static/image/mail_rightbg.gif">
            <img src="/static/image/buttom_right2.gif" width="16" height="17">
        </td>
    </tr>
</table>
</body>
<script type="text/javascript">
    $(function () {alert("123")})

    function fangfa() {
        $.ajax({
            url: 'AdminTitleTwo',
            type: 'post',
            data: {cid: $("#twos").val()},
            ddataType: 'text',
            success: function (data) {}
        })
    }
</script>
</html>