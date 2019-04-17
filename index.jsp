<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp页面</title>
<!-- 
内置对象： jsp中直接存在了
request、response、session、application
request:请求的一些数据，请求头，消息体；request对象的作用域为一次请求
response:服务器端的一些响应数据

session:表示一次会话；作用域比request大
application:
 -->
 
 <%--
    String str = "aaa";
 	request.setAttribute("aaa", str);
 	session.setAttribute("bbb", "bbb");
 	application.setAttribute("ccc", "ccc");
 	//System.out.println(request);
 	//System.out.println("index.jsp中的str的值为"+request.getAttribute("aaa"));
 	//System.out.println("index.jsp中的bbb的值为"+session.getAttribute("bbb"));
 	//System.out.println("index.jsp中的ccc的值为"+application.getAttribute("ccc"));
 	// response.sendRedirect("a.jsp");
 	// request.getRequestDispatcher("a.jsp").forward(request, response);
 	
 	out.print("<div style='width:100px;height:100px;border:solid 1px #ff0000'></div>");
 --%>
 
 <style type="text/css">
 	.error{
 		color:red;
 	}
 </style>
 
</head>
<body>
	<form action="HelloServlet" method="post">
		<span class="error">${error}</span>
		<input type="text" name="username" /><input type="text" id="password" name="password" />
		验证码:<input type="text" name="image">
    	<img src="VerifyCodeServlet" onclick="flushVerityCode()" id="VerifyCodeServlet"> 
		<input type="submit" value="提交"/>
	</form>
</body>

<script type="text/javascript">
function flushVerityCode(){
	
	document.getElementById("VerifyCodeServlet").src = '/javaweb01/VerifyCodeServlet?'+Math.random();
}
</script>
</html>