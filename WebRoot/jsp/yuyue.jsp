<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>My JSP 'yuyue.jsp' starting page</title>

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
		<h3>请提交您的工程预约信息</h3>
		<form action="/core/add" method="post">
			<table>
				<tr>
					<td>选择您或项目所在地</td>
					<td><input name="projectAddredd" type="text" /></td>
				</tr>
				<tr>
					<td>您在该项目里的角色</td>
					<td><input name="projectRole" type="text" /></td>
				</tr>
				<tr>
					<td>您项目的具体名称</td>
					<td><input name="projectName" type="text" /></td>
				</tr>
				<tr>
					<td>建筑面积(平方)</td>
					<td><input name="projectArea" type="text" /></td>
				</tr>
				<tr>
					<td>您希望的完成日期</td>
					<td>
						<input type="text" id="txtDate2" class="date" value="2016-1-1" name="projectCompleteDate" />
					</td>
				</tr>
				<tr>
					<td>其他相关说明</td>
					<td><input name="projectExplain" type="text" />
					</td>
				</tr>
				<tr>
					<td>您的名字</td>
					<td><input name="name" type="text" />
					</td>
				</tr>
				<tr>
					<td>您的电话</td>
					<td><input name="phoneNumber" type="text" />
					</td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="提交" /></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
