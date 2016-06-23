<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String  id=request.getParameter("id");
String  goodsname=new String(request.getParameter("goodsname").getBytes("iso8859-1"),"utf-8");
%>

<!doctype html public "-//w3c//dtd xhtml 1.0 transitional//en" "http://www.w3.org/tr/xhtml1/dtd/xhtml1-transitional.dtd">
<html>
<head>
<base href="<%=basePath%>">
    
    <title>修改</title>
    
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/admin/general.css" />
<script src="js/admin/table.js"></script>
  </head>
  
  
  
  <body>
          
<div class="top">修改商品</div>

<div class="main">

<form action="modifygood.action" method="post">
<table width="100%" border="0" cellpadding="1" cellspacing="1">
    <tr>
      <input type="hidden" name="id" value="<%=id%>"  readonly="readonly"/>
    </tr>
	<tr>
			<td align="right">商品名称:</td><td align="left"><input type="text"  name="name"  value="<%=goodsname%>"   readonly="readonly"/></td>
	</tr>


		<tr>
			<td align="right">商品价格:</td><td align="left"><input name="price" /></td>
		</tr>
		
		<tr>
			<td align="right">商品数量:</td><td align="left"><input name="count" /></td>
		</tr>
		<tr>
			<td align="right">商品描述:</td><td align="left"><textarea name="goodsdesc" class="ckeditor" cols="120" id="editor1"  rows="10"></textarea></td>
		</tr>
		<tr>
			<td>&nbsp;</td><td><input type="submit" value="修改商品"/><input type="reset" value="重置"/></td>
		</tr>
</table>
</form>
</div>
<div class="footer">
<jsp:include page="/admin/copyright.jsp" />
</div>
  </body>
</html>
