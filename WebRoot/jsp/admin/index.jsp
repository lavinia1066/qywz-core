<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<center>客户预约信息</center>
	<table border="1" align="center">
		<tbody>
		<tr><td colspan="7"></td><td><a href="/core/yuyue">项目预约</a></td></tr>
			<tr>
				<th>项目所在地</th>
				<th>客户角色</th>
				<th>客户项目名称</th>
				<th>建筑面积(平方)</th>
				<th>预期完成日期</th>
				<th>客户姓名</th>
				<th>客户电话</th>
				<th>操作</th>
			</tr>
			<c:if test="${!empty yuyueList }">
				<c:forEach items="${yuyueList }" var="yuyue">
					<tr>
						<td>${yuyue.projectAddredd }</td>
						<td>${yuyue.projectRole }</td>
						<td>${yuyue.projectName }</td>
						<td>${yuyue.projectArea }</td>
						<td>${yuyue.projectCompleteDate }</td>
						<td>${yuyue.name }</td>
						<td>${yuyue.phoneNumber }</td>
						<td>
							<a href="/core/getYuyueLookId?id=${yuyue.id }">查看</a>
							<a href="/core/adddetail?id=${yuyue.id }">添加洽谈信息记录</a>
						</td>
						
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</body>
</html>
