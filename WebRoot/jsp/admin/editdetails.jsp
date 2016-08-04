<%@page import="com.qyzb.entiy.Details"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

<title>My JSP 'details.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.jSelectDate.js"></script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
	$("body").ready(function() {

		//应用方法
		$("input.date").jSelectDate({
			css : "date",
			yearBeign : 1995,
			disabled : false
		});

	})

	$(this).jSelectDate
</script>
</head>
<body>
	<center>
		<h3>洽谈信息编辑</h3>
		<form action="/core/adddetails" method="post">
			<table border="1" width="800px">
				<tbody>
					<tr>
						<td colspan="2">洽谈信息编辑</td>
						<td><a href="/core/getYuyueLookId?id=${yuyueid.id }">返回</a>
						</td>
					</tr>
					<tr>
						<td>编号</td>
						<td>信息记录</td>
						<td>记录日期</td>
					</tr>

					<c:if test="${!empty detailsList }">
						<c:forEach items="${detailsList }" var="d" varStatus="status">
							<tr>
								<td colspan="3"><input type="text" name="id"
									value="${yuyueid.id }">
								</td>
							</tr>
							<tr>
								<td align="center">${status.index +1}</td>
								<td><input name="projectDetails" type="text"
									value="${d.projectDetails }" />
								</td>
								<td><input name="projectDate" type="text" id="txtDate2"
									class="date" value="${d.projectDate }" />
								</td>
							</tr>
						</c:forEach>
					</c:if>
					<tr align="center">
						<td colspan="1"><button style="width: 100px" type="submit">提交</button>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</center>
</body>
</html>
