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
<meta http-equiv="description" content="this is my page">
<link rel="stylesheet" type="text/css" href="css/admin/general.css" />
<script src="js/admin/table.js"></script>
</head>

<body>
	<div class="top">&nbsp;商品列表</div>
	<div class="main">
		<table widtd="200%" cellpadding="2" border="0" cellspacing="2" align="center" style="width: 859px;height: 548px">
		<tr>
			<td>id</td><td><s:property value="id"  /></td>
		</tr>
		<tr>	
			<td>商品显示图片</td><td><img src='<s:property value="goodspic"/>' width="100" height="100"/></td>
		</tr>
		<tr>	
			<td>商品名称</td><td><s:property value="goods.goodsname"/></td>
		</tr>
		<tr>	
			<td>商品价格</td><td><s:property value="goods.price"/></td>
		</tr>
		<tr>	
			<td>商品数量</td><td><s:property value="goods.count"/></td>
		</tr>	
		<tr>
			<td>商品分类</td><td><s:property value="goods.goodstype.id"/></td>
		</tr>	
		<tr>
			<td>商品详细</td><td><s:property value="goods.goodsdesc"/></td>
		</tr>
		</table>
	</div>
	<div class="footer"><jsp:include page="/admin/copyright.jsp" /></div>
</body>
</html>
