<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<h3>请添加工程项目的洽谈信息记录</h3>
		<form action="/core/okdetail" method="post">
			<input type="hidden" name="yuyueId" value="${yuyueid.id }">
			<table>
				<tr>
					<td>记录：</td>
					<td><input name="projectDetails" type="text" />
					</td>
				</tr>
				<tr>
					<td>记录日期：</td>
					<td><input type="text" id="txtDate2" class="date"
						value="2016-1-1" name="projectDate" />
					</td>
					<!-- <td><input type="hidden"
						value="<fmt:formatDate  value="<%=new Date()%>" pattern="yyyy-MM-dd"/>"
						name="projectDate" /></td> -->
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="提交" />
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
