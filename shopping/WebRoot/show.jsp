<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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

		<s:property value="goods.goodsname" />
		<br />
		<s:property value="goods.goodsdesc" escape='0' />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		数量:
		<input type="text" id="totalAmount"></input>
		<input type="button" onclick=
	hello();;
value="加入购物车"></input>
		<input type="hidden" id="goodsId" value="${goods.id}"></input>
		<input type="hidden" id="goodsName" value="${goods.goodsname}"></input>
	</body>

	<script>
	function hello() {
		var goodsId = document.getElementById("goodsId").value;
		var goodsName = document.getElementById("goodsName").value;
		var buytotal = document.getElementById("totalAmount").value;
		document.location.href = "addcar.action?gid=" + goodsId + "&goodsname="
				+ goodsName + "&buytotal=" + buytotal;
	}
</script>

</html>
