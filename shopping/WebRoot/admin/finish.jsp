<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script src="/js/admin/jquery-1.10.2.js"></script>
<script src="/js/admin/finish.js"></script>
<link rel="stylesheet" type="text/css" href="css/admin/general.css" />
</head>

<body>
	<div class="top">管理中心</div>
	<div class="main">
		操作成功在<span style="color:#F00;" id="sp">5</span>秒后跳转,<a id="url" href="${url}">手动跳转</a>
	</div>
	<div class="footer">
		<jsp:include page="copyright.jsp" />
	</div>
</body>
</html>
