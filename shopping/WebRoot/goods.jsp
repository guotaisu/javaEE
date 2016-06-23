<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'goods.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div class="module">
						<div class="caption"><a href="javascript:history.back();">後退</a>  
							
						</div>
						<div class="content">
							<ul class="goods_grid">
								<s:iterator value="list">
									<li>
										<p class="img">
											<a href="showgoods.action?id=${id}"><img
													src="<s:property value="goodspic"/>" alt="${goodsname}" />
											</a>
										</p>
										<p class="name">
											<a href="showgoods.action?id=${id}" title="${goodsname}"><s:property
													value="goodsname" /> </a>
										</p>
										<p class="price">
											${price}
										</p>
									</li>
								</s:iterator>
							</ul>
						</div>
					</div>
					
  </body>
</html>
