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

<title>My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	<h5>
		<a href="/core/adminindex">进入用户管理页</a>
	</h5>
	<form action="/login" , method="post">
		<table align="center">
			<tr>
				<td height="23"><span>输入用户名：</span></td>
				<td height="23"><input name="username" type="text"></td>
			</tr>
			<tr>
				<td height="23"><span>输入密码：</span></td>
				<td height="23"><input name="password" type="password">
				</td>
			</tr>
			<tr>
				<td height="23" colspan="2" align="center"><input type="submit"
					value="登录"> <input type="reset" value="重置">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
