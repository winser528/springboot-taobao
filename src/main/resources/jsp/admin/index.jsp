<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>框架</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta http-equiv=Content-Type content=text/html;charset=utf-8>
</head>
<frameset rows="64,*" frameborder="NO" border="0" framespacing="0">
    <frame src="/admin/admin_top" noresize="noresize" frameborder="0" name="topFrame" scrolling="no" marginwidth="0" marginheight="0"
           target="main"/>
    <frameset cols="200,*" rows="100%,*" id="frame">
        <frame src="/admin/admin_left" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no"
               target="main"/>
        <frame src="/admin/admin_right" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self"/>
    </frameset>
</frameset>
<noframes></noframes>
</html>