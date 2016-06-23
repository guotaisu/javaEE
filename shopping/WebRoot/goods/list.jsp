<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
	<div class="top">&nbsp;商品列表</div>
	<div class="main">
		<table width="98%" cellpadding="2" border="0" cellspacing="2"
			align="center">
			<tr>
				<th>id</th>
				<th>商品图片</th>
				<th>商品名称</th>
				<th>分类</th>
				<th>单价</th>
				<th>描述</th>
				<th>操作</th>
			</tr>
			<s:iterator value="list">
				<tr>
					<td><s:property value="id" /></td>
					<td><img src='<s:property value="goodspic"/>' width="40"
						height="30" /></td>
					<td><a href="#"><s:property value="goodsname" /></a></td>
					<td><s:property value="goodstype.typename" /></td>
					<td><a href="#"><s:property value="price" /></a></td>
					<td><a href="#"><s:property value="goodsdesc" /></a></td>
					<td><a href="goods/modity.jsp?id=<s:property value='id' />&goodsname=<s:property value='goodsname'/>">修改</a>&nbsp&nbsp
						<a href="deletegood.action?id=<s:property value='id' />"onclick="return comfirm('你确认要删除吗？')">删除</a>
					</td>
				</tr>
			</s:iterator>
		</table>
		<div style="text-align: center;">
			<a href="goods.action?currentPage=1">首页</a> <a
				href="goods.action?currentPage=${currentPage-1}">上一页</a> <a
				href="goods.action?currentPage=${currentPage+1}">下一页</a> <a
				href="goods.action?currentPage=${totalPage}">尾页</a> 共${totalPage}页数
			当前${currentPage}页
			<s:iterator begin="1" end="totalPage" status="st"> &nbsp;<s:property
					value="#st.index+1" />
			</s:iterator>
		</div>
	</div>
	<div class="footer"><jsp:include page="/admin/copyright.jsp" /></div>
</body>
</html>
