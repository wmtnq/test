<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cks = request.getCookies();
		if (cks != null) {
			for (Cookie ck : cks) {
				if (ck.getName().equals("name")) {
					session.setAttribute("name", ck.getValue());
				}
				if (ck.getName().equals("pwd")) {
					session.setAttribute("pwd", ck.getValue());
					response.sendRedirect("admin/index.html");
				}
			}
		}
	%>
	<form action="index" method="post">
		<table>
			<tr>
				<td>用户名</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td>自动登录</td>
				<td><input type="checkbox" name="auto" value="1" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交" /></td>
				<td><input type="reset" value="重置" /></td>
			</tr>
		</table>

	</form>
	<%-- ${retu } --%>
	<input type="hidden" value="${retu }" id="cc" />
	<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
	<script type="text/javascript">
		$(function() {
			var A = $("#cc").val();
			if (A) {
				alert(A);
			}
			;
		})
	</script>
</body>
</html>