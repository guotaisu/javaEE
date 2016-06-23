<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html public "-//w3c//dtd xhtml 1.0 transitional//en" "http://www.w3.org/tr/xhtml1/dtd/xhtml1-transitional.dtd">
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

</head>

<body>
	<div class="top">&nbsp;添加商品分类</div>
	<div class="main">
	<form action="savetype" method="post">
		<table width="500">
			<tr>
				<td>分类名称：</td>
				<td><input name="typename" /></td>
			</tr>
			<tr>
				<td>上级分类：</td>
				<td><select name="pid" >
					<s:iterator value="gtlist" var="g">
						<option value="${g.id}">
						<s:property value="typename"/>
						</option>
					</s:iterator>
				</select></td>
			</tr>
			<tr>
				<td>分类注释：</td>
				<td><input name="note" /></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			<td><input type="submit" value="添加分类" /></td>
			</tr>
		</table>
		</form>
	</div>
	<div class="footer"><jsp:include page="/admin/copyright.jsp"/></div>
</body>
</html>
