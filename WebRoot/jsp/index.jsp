<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>欢迎访问庆阳互联网造价咨询平台</title>

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
	<center>
		<h3>请选择您要浅谈的工程项目</h3>
	</center>
	<table align="center">
		<tr>
			<td><a href="/core/jsp/frame/gjfyjs.jsp">1.钢筋翻样计算与审核</a></td>
		</tr>
		<tr>
			<td><a href="/core/jsp/frame/zjjd.jsp">2.造价鉴定与索赔</a></td>
		</tr>
		<tr>
			<td><a href="/core/jsp/frame/htps.jsp">3.合同评审</a></td>
		</tr>
		<tr>
			<td><a href="/core/jsp/frame/qdbz.jsp">4.清单编制与审核</a></td>
		</tr>
		<tr>
			<td><a href="/jsp/frame/qdbz.jsp">5.工程量计算</a></td>
		</tr>
	</table>
</body>
</html>
