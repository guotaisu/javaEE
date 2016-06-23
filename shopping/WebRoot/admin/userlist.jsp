<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'list.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/admin/general.css" />
<script src="js/admin/table.js"></script>
</head>

<body>
	<div class="top">&nbsp;用户信息列表</div>
	<div class="main">
		<table width="98%" cellpadding="2" border="0" cellspacing="2"
			align="center">
			<tr>
				<th>id</th>
				<th>用户名</th>
				<th>真实姓名</th>
				<th>联系方式</th>
				<th>电子信箱</th>
				<th>地址</th>
				<th>用户角色</th>
				<th>操作</th>
			</tr>
			<s:iterator value="list">
				<tr>
					<td><s:property value="id" /></td>
					<td><s:property value="username" /></td>
					<td><s:property value="realname" /></td>
					<td><s:property value="tel" /></td>
					<td><s:property value="email" /></td>
					<td><s:property value="address" /></td>
					<td><s:property value="role.rolename" /></td>
					<td><a
						href="deleteuser.action?userid=<s:property value="id"/>">删除</a></td>
				</tr>
			</s:iterator>
		</table>
		<div class="footer"><jsp:include page="/admin/copyright.jsp" /></div>
</body>
</html>
