<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.iflytek.DBUtil,com.iflytek.User,java.util.List" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>第一个jsp页面</title>
</head>
<body>
	<% 
		String username = request.getParameter("username");
		DBUtil util = new DBUtil();
		// 参数校验
		String queryResult = util.query(username);
		List<User> users = util.queryAllUser();
		int size = users.size();
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		
	%>
	Hello,<%= queryResult %>
	
	<table cellpadding="5" cellspacing="2">
		<tr>
			<th>用户名</th>
			<th>用户密码</th>
			<th>年龄</th>
			<th>身份证</th>
			<th>出生年月</th>
		</tr>
		
		<% for (int i = 0; i < size; i++) { %>
		<tr>
			<td>
				<%=users.get(i).getUsername() %>
			</td>
			<td>
				<%=users.get(i).getPassword() %>
			</td>
			<td>
				<%=users.get(i).getAge() %>
			</td>
			<td>
				<%=users.get(i).getCardNo() %>
			</td>
			<td>
				<%=format.format(users.get(i).getBirthday())   %>
			</td>
		</tr>
		<% } %>
	</table>
</body>
</html>