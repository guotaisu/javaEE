<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
 
  <body>
  <s:iterator value="shopCarinGoods">
	<div style="width:700px;border:1px solid #CCF;height:120px;">
		购物车ID:<s:property value="id"/><br/>
		商品名称:<s:property value="goods.goodsname"/><br/>
		单价:<s:property value="goods.price"/><br/>
		数量:<s:property value="buytotal"/><br/>
		时间：<s:property value="buytime"/></br>
		<a href="saveorder.action?cid=<s:property value='id'/>&buytotal=<s:property value='buytotal'/>&gid=<s:property value='goods.id'/>"/>提交订单</a> 
	</div>
</s:iterator>
  	<br/><br/><br/><br/><br/><br/>
  	
  </body>
</html>
