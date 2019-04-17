<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.iflytek.User,java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>第一个jsp页面</title>
</head>
<body>
	<table cellpadding="5" cellspacing="2">
		<tr>
			<th>用户名</th>
			<th>用户密码</th>
			<th>年龄</th>
			<th>身份证</th>
			<th>出生年月</th>
		</tr>
		<!--
			el表达式： 取request session application 属性中的值
			顺序： request key aaa session key aaa application key aaa
			    先从request范围取，没有？  session范围中取， 没有 ？ application中取
		 -->

		 <%--<c:choose>--%>
		 	<%--<c:when test=""></c:when>--%>
		 	<%--<c:when test=""></c:when>--%>
		 	<%--<c:otherwise>--%>
		 	<%--</c:otherwise>--%>
		 <%--</c:choose>--%>

		 <c:forEach items="${users}" var="user" varStatus="status">
			<tr <c:if test='${status.index % 2 == 1}'> style="background-color:#eee;" </c:if>>
				<td>
					${user.username }
				</td>
				<td>
					${user.password }
					<br/>
				</td>
				<td>
					${user.age }
					<br/>
				</td>
				<td>
					${user.cardNo }
					<br/>
				</td>
				<td>
					${user.birthday }
					<br/>
				</td>
			</tr>
			
		</c:forEach>
		</table>
		 <div style="width:100%;height:1px;border:1px solid #000"></div>
		 <table cellpadding="5" cellspacing="2">
		<tr>
			<th>用户名</th>
			<th>用户密码</th>
			<th>年龄</th>
			<th>身份证</th>
			<th>出生年月</th>
		</tr>
		<c:forEach items="${requestScope.users}" var="user">
			<tr>
				<td>
					${user.username }
					<br/>
				</td>
				<td>
					${user.password }
					<br/>
				</td>
				<td>
					${user.age }
					<br/>
				</td>
				<td>
					${user.cardNo }
					<br/>
				</td>
				<td>
					${user.birthday }
					<br/>
				</td>
			</tr>
		</c:forEach>
		</table>
		 <div style="width:100%;height:1px;border:1px solid #000"></div>
		 <table cellpadding="5" cellspacing="2">
		<tr>
			<th>用户名</th>
			<th>用户密码</th>
			<th>年龄</th>
			<th>身份证</th>
			<th>出生年月</th>
		</tr>
		<c:forEach items="${sessionScope.users}" var="user">
			<tr>
				<td>
					${user.username }
					<br/>
				</td>
				<td>
					${user.password }
					<br/>
				</td>
				<td>
					${user.age }
					<br/>
				</td>
				<td>
					${user.cardNo }
					<br/>
				</td>
				<td>
					${user.birthday }
					<br/>
				</td>
			</tr>
		</c:forEach>
		</table>
		 <div style="width:100%;height:1px;border:1px solid #000"></div>
		 <table cellpadding="5" cellspacing="2">
		<tr>
			<th>用户名</th>
			<th>用户密码</th>
			<th>年龄</th>
			<th>身份证</th>
			<th>出生年月</th>
		</tr>
		<c:forEach items="${applicationScope.users}" var="user">
			<tr>
				<td>
					${user.username }
					<br/>
				</td>
				<td>
					${user.password }
					<br/>
				</td>
				<td>
					${user.age }
					<br/>
				</td>
				<td>
					${user.cardNo }
					<br/>
				</td>
				<td>
					${user.birthday }
					<br/>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>