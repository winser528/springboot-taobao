<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/static/admin/images/skin.css" rel="stylesheet" type="text/css"/>
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
        border: 1px solid #DADEE9;
        border-collapse: collapse;
        text-align: center;
        line-height: 23px;
    }

    .biao td {
        border: 1px solid #DADEE9;
    }

    .biao .trtd:HOVER {
        background: #DADEE9;
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
                        <div class="titlebt"> 用户信息</div>
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
                        <table class="biao">
                            <!--这里是显示内容-->
                            <tr style="background:#3C5E7C">
                                <td width="100px">账号</td>
                                <td width="100px">密码</td>
                                <td width="100px">邮箱</td>
                                <td width="100px">权限</td>
                                <td width="100px">状态</td>
                                <td width="100px">操作</td>
                            </tr>
                            <c:forEach items="${userList}" var="u">
                                <tr class="trtd">
                                    <td>${u.account}</td>
                                    <td>${u.password}</td>
                                    <td>${u.email}</td>
                                    <td>
                                        <c:if test="${u.power==0}"> 管理员 </c:if>
                                        <c:if test="${u.power==1}"> <span style="font-size:14px">普通用户</span> </c:if>
                                    </td>
                                    <td>
                                        <c:if test="${u.status==0}"> 正常 </c:if>
                                        <c:if test="${u.status==1}"> <span style="color:red">异常</span> </c:if>
                                    </td>
                                    <td>
                                        <a href="UserHandle?sid=${u.id}&status=${u.status}">删除</a>
                                        ||
                                        <a href="UserHandle?jid=${u.id}&status=${u.status}">
                                                <%--<input type="hidden" value="${u.status}" name="status">
                                                --%>
                                            <c:if test="${u.status==0}"> 禁用 </c:if>
                                            <c:if test="${u.status==1}"> <span style="color:red">解禁</span> </c:if>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                            <tr>
                                <td colspan="6" style="text-align:center">
                                    <a href="user_show?pageIndex=1">首页</a>
                                    <c:choose>
                                        <c:when test="${currentPage >1}">
                                            <a href="user_show?pageIndex=${currentPage-1}">上一页</a>
                                        </c:when>
                                        <c:otherwise>
                                            <span style="font-size:12px;color:#666666">上一页</span>
                                        </c:otherwise>
                                    </c:choose>
                                    <c:forEach begin="1" end="${totalPages}" varStatus="num">
                                        <a href="user_show?pageIndex=${num.count}">${num.count}</a>
                                    </c:forEach>
                                    <c:choose>
                                        <c:when test="${currentPage < totalPages}">
                                            <a href="user_show?pageIndex=${currentPage+1}">下一页</a>
                                        </c:when>
                                        <c:otherwise>
                                            <span style="font-size:12px;color:#666666">下一页</span>
                                        </c:otherwise>
                                    </c:choose>
                                    <a href="user_show?pageIndex=${totalPages}">尾页</a>
                                </td>
                            </tr>
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