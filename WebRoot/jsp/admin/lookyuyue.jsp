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

<title>My JSP 'edityuyue.jsp' starting page</title>

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
			<tr>
				<td colspan="6"></td>
				<td><a href="/core/adminindex">管理首页</a></td>
			</tr>
			<tr>
				<th>项目所在地</th>
				<th>客户角色</th>
				<th>客户项目名称</th>
				<th>建筑面积(平方)</th>
				<th>预期完成日期</th>
				<th>客户姓名</th>
				<th>客户电话</th>
			</tr>
			<tr>
				<td>${yuyueId.projectAddredd }</td>
				<td>${yuyueId.projectRole }</td>
				<td>${yuyueId.projectName }</td>
				<td>${yuyueId.projectArea }</td>
				<td>${yuyueId.projectCompleteDate }</td>
				<td>${yuyueId.name }</td>
				<td>${yuyueId.phoneNumber }</td>
			</tr>
			<tr>
				<th colspan="7">项目说明</th>
			</tr>
			<tr>
				<td colspan="7">${yuyueId.projectExplain }</td>
			</tr>
			<tr>
				<th colspan="7">洽谈信息记录</th>
			</tr>
			<tr>
				<td colspan="7">预约编号：${yuyueId.id }</td>
				
			</tr>
			<tr>
				<td align="center">编号</td>
				<td align="center" colspan="5">信息记录表</td>
				<td>记录日期</td>
			<tr>
				<c:if test="${!empty detailsList }">
					<c:forEach items="${detailsList }" var="d" varStatus="status">
						<tr>
							<td align="center">${status.index +1}</td>
							<td colspan="5">${d.projectDetails }</td>
							<td align="center">${d.projectDate}</td>
							<td><a href="/core/editdetails?id=${yuyueId.id}">洽谈信息编辑</a></td>
						</tr>
					</c:forEach>
				</c:if>
		</tbody>
	</table>
</body>
</html>
