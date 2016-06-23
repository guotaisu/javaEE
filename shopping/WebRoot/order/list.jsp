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
<script src="js/admin/table.js"></script>
</head>

<body>
	<div class="top">&nbsp;订单列表</div>
	<div class="main">
		<table width="98%" cellpadding="2" border="0" cellspacing="2"
			align="center">
			<tr>
				<th>订单id</th>
				<th>商品名称</th>
				<th>购买数量</th>
				<th>购买用户</th>
				<th>订单状态</th>
				<th>操作</th>
			</tr>
			<s:iterator value="list" id="listo">
				<tr>
					<td><s:property value="id" /></td>
					<td><s:property value="goods.goodsname" /></td>
					<td><s:property value="total" /></td>
					<td><s:property value="user.username" /></td>
					<td><s:if test="(#listo.status==1)">已付款 </s:if> <s:if
							test="(#listo.status==2)">未付款 </s:if> <s:if
							test="(#listo.status==3)">已发货 </s:if></td>
					<td><s:if test="(#listo.status==1)">
							<a href="deliveryorder.action?oid=<s:property value="id"/>">发货</a>
						</s:if></td>
				</tr>
			</s:iterator>
		</table>

		<div class="footer"><jsp:include page="/admin/copyright.jsp" /></div>
</body>
</html>
