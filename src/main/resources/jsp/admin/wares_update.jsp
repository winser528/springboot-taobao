<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.jspsmart.upload.*" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		
		<title>修改商品</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link href="admin/images/skin.css" rel="stylesheet" type="text/css" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
.biao{
	width:100%;
	border:1px solid #666666;
	border-collapse: collapse;
}
.biao td{
	border:1px solid #666666;
}
-->
</style>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="17" valign="top" background="admin/images/mail_leftbg.gif">
					<img src="admin/images/left-top-right.gif" width="17" height="29" />
				</td>
				<td valign="top" background="admin/images/content-bg.gif">
					<table width="100%" height="31" border="0" cellpadding="0"
						cellspacing="0" class="left_topbg" id="table2">
						<tr>
							<td height="31">
								<div class="titlebt">
									修改商品
								</div>
							</td>
						</tr>
					</table>
				</td>
				<td width="16" valign="top" background="admin/images/mail_rightbg.gif">
					<img src="admin/images/nav-right-bg.gif" width="16" height="29" />
				</td>
			</tr>
			<tr>
				<td valign="middle" background="admin/images/mail_leftbg.gif">
					&nbsp;

				</td>
				<td valign="top" bgcolor="#F7F8F9">
					<table width="98%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td colspan="2" valign="top">
								&nbsp;
							</td>
							<td width="2%">
								&nbsp;
							</td>
							<td width="4%" valign="top">
								&nbsp;
							</td>
						</tr>
						<tr>
							<td width="2%">
								<p>
									&nbsp;
								</p>
								<p>
									&nbsp;
								</p>
							</td>
							<td width="92%" valign="top">
									<form action="AdminWaresUpdateThenSubmit" method="post" enctype="multipart/form-data">
										<table class="">
											<!--这里是显示内容-->
												<tr>
													<td>类型<br/>
													</td>
												</tr>
												<tr>
													<td>商品名字<br/>
														<input type="hidden" name="wid" value="${wares.wid }"/>
														<input type="text" name="warename" value="${wares.wname}">
													</td>							
												</tr>
												<tr>
													<td>简介<br/>
														<textarea rows="5" cols="40" name="wareinfo">${wares.winfo}</textarea>
													</td>
												</tr>
												<tr>
													<td>现价<br/>
														<input type="text" name="wareprice" value="${wares.price}">
													</td>
												</tr>
												<tr>
													<td>原价<br/>
														<input type="text" name="wareyprice" value="${wares.yprice}">
													</td>
												</tr>
												<tr>
													<td>图片<br/>
														<input type="hidden" name="pic"  value="${wares.image}"> 
														<input type="file" name="pics">
													</td>
												</tr>
												<tr>
													<td>库存<br/>
														<input type="text" name="warestock" value="${wares.stock }">
													</td>
												</tr>
												<tr>
													<td>
														<input type="submit" value="提交"/>
													</td>
												</tr>
											</table>
										</form>
								</td>
							</tr>
					</table>
				</td>
				<td background="admin/images/mail_rightbg.gif">
					&nbsp;

				</td>
			</tr>
			<tr>
				<td valign="bottom" background="admin/images/mail_leftbg.gif">
					<img src="admin/images/buttom_left2.gif" width="17" height="17" />
				</td>
				
				<td background="admin/images/buttom_bgs.gif">
					<img src="admin/images/buttom_bgs.gif" width="17" height="17">
				</td>
				
				<td valign="bottom" background="admin/images/mail_rightbg.gif">
					<img src="admin/images/buttom_right2.gif" width="16" height="17">
				</td>
			</tr>
		</table>
	</body>