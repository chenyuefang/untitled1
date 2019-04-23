<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link href="/kdxfjysbbxpt/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="padding:10px">
	<ol class="breadcrumb">
	  <li><a href="#">设备管理</a></li>
	  <li><a href="#">设备列表</a></li>
	</ol>
	<div>

	  <!-- Nav tabs -->
	  <ul class="nav nav-tabs" role="tablist">
	    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">设备列表</a></li>
	    <li role="presentation"><a href="javascript:void(0)" aria-controls="profile" role="tab" data-toggle="modal" data-target="#myModal">新增设备</a></li>
	  </ul>
	
	  <!-- Tab panes 
	  <div class="tab-content">
	    <div role="tabpanel" class="tab-pane active" id="home">...</div>
	    <div role="tabpanel" class="tab-pane" id="profile">...</div>
	    <div role="tabpanel" class="tab-pane" id="messages">...</div>
	    <div role="tabpanel" class="tab-pane" id="settings">...</div>
	  </div>
	-->
	</div>
	<table class="table table-hover">
		<tr>
			<th>用户名</th>
			<th>年龄</th>
			<th>性别</th>
			<th>出生日期</th>
			<th>身份证</th>
		</tr> 
		
		<c:forEach items="${page.values}" var="user">
			<tr>
				<td>${user.username }</td>
				<td>${user.age }</td>
				<td>
					<c:choose>
						<c:when test="${user.sex == 0 }">女</c:when>
						<c:otherwise>男</c:otherwise>
					</c:choose>
				</td>
				<td>
					<fmt:formatDate pattern="yyyy-MM-dd"  value="${user.birthday}" />
            	</td>
				<td>${user.cardNo}</td>
			</tr>
		</c:forEach>
			
		<!-- <tr>
			<td>张三</td>
			<td>18</td>
			<td>男</td>
			<td>2001-12-22</td>
			<td>110110200103299887</td>
		</tr>
		<tr>
			<td>张三</td>
			<td>18</td>
			<td>男</td>
			<td>2001-12-22</td>
			<td>110110200103299887</td>
		</tr>
		<tr>
			<td>张三</td>
			<td>18</td>
			<td>男</td>
			<td>2001-12-22</td>
			<td>110110200103299887</td>
		</tr>
		<tr>
			<td>张三</td>
			<td>18</td>
			<td>男</td>
			<td>2001-12-22</td>
			<td>110110200103299887</td>
		</tr>
		<tr>
			<td>张三</td>
			<td>18</td>
			<td>男</td>
			<td>2001-12-22</td>
			<td>110110200103299887</td>
		</tr> -->
	</table>
	<nav aria-label="Page navigation" style="float:right">
	  <ul class="pagination">
	    <li>
	      <a href="/kdxfjysbbxpt/UserServlet?currentPage=${page.currentPage-1 < 1 ? 1 : page.currentPage - 1 }" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	    <c:forEach var="num" begin="1" end="${page.totalPage}">
	    	<li><a href="/kdxfjysbbxpt/UserServlet?currentPage=${num }">${num }</a></li>
	    </c:forEach>
	    
	   <!--  <li><a href="/kdxfjysbbxpt/UserServlet?currentPage=2">2</a></li>
	    <li><a href="/kdxfjysbbxpt/UserServlet?currentPage=3">3</a></li>
	    <li><a href="/kdxfjysbbxpt/UserServlet?currentPage=4">4</a></li>
	    <li><a href="/kdxfjysbbxpt/UserServlet?currentPage=5">5</a></li> -->
	    <li>
	      <a href="/kdxfjysbbxpt/UserServlet?currentPage=${page.currentPage+1 > page.totalPage ? page.totalPage :  page.currentPage+1}" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
	  </ul>
	</nav>
	
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" role="document">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	                <h4 class="modal-title" id="myModalLabel">添加用户</h4>
	            </div>
	            <div class="modal-body">
	                <form action="#">
	                    <div class="form-group">
	                        <label for="addname">用户名</label>
	                        <input type="text" id="addname" class="form-control" placeholder="用户名">
	                    </div>
	                    <div class="form-group">
	                        <label for="addpassword">用户密码</label>
	                        <input type="text" id="addpassword" class="form-control" placeholder="请输入用户密码">
	                    </div>
	                    <div class="form-group">
	                        <label for="addpassword1">确认用户密码</label>
	                        <input type="text" id="addpassword1" class="form-control" placeholder="请确认输入用户密码">
	                    </div>
	                    <div class="form-group">
	                        <label for="addemail">请输入用户邮箱</label>
	                        <input type="email" id="addemail" class="form-control" placeholder="请输入用户邮箱">
	                    </div>
	                    
	                </form>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button type="button" class="btn btn-primary">提交</button>
	            </div>
	        </div>
	    </div>
	</div>
</body>
</html>
