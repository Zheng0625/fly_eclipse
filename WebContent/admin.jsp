<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" 
           uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理员界面</title>
<link rel="stylesheet" type="text/css" href="css/home.css" />
<style type="text/css">
#sub {
	width: 45px;
	height: 32px;
	color: black;
	background: orange;
	border-width: 1.5px;
	border-radius: 7px;
	opacity: 0.75;
}

.sel {
	height: 32px;
	background-color: white;
	opacity: 0.4;
	border-width: 2.5px;
	border-color: red;
	border-radius: 7px;
	outline: none;
}
#tb{
border:1.5px solid red;
}
</style>
</head>
<body>
	<!--head-->
	<div class="header">
		<div class="inner">
			<div class="logo">
				<a href="index.html" title="飞机票"><img src="images/logo.png"
					width="350" height="60" /></a>
			</div>
			<div class="headlink">
				<a href="login.html">登录</a> &nbsp;|&nbsp; <a href="zhuce.html">注册</a>
				&nbsp;|&nbsp; <a href="login.html">▶注销</a>
			</div>
		</div>
	</div>
	<!--head end-->
	<!--middle-->
	<div class="middle">
		<div class="cont">
			<!--菜单-->
			<div class="class">
				<ul>
					<h3 style="color: #FFF;">栏目分类</h3>
					<a href="#" class="_all2">
						<li>整组换机</li>
					</a>
					<a href="#" class="_all3">
						<li>信息查询</li>
					</a>
				</ul>
			</div>
			<!--菜单 end-->

			<div class="class_a">
				<!-- 整组换机 -->
				<div class="all2">
					<h4 style="color: #fff">整组换机</h4>
					<div id="change" align="center">
						<form action="/Fighting/RemakeServlet" method="post">

							<select class="sel" name="tab1">
								<option value=""></option>
								<option value="1">tab_A320</option>
								<option value="2">tab_A32E</option>
								<option value="3">tab_A32G</option>
								<option value="4">tab_A32N</option>
							</select> <img src="Image/gate.png" /> <select class="sel" name="tab2">
								<option value=""></option>
								<option value="tab_a320">tab_A320</option>
								<option value="tab_a32e">tab_A32E</option>
								<option value="tab_a32g">tab_A32G</option>
								<option value="tab_a32n">tab_A32N</option>
							</select> <input type="submit" value="换机" id="sub"/>
						</form></br>
						<form id="tb">
						<h4>A320有144座</h4>
						<h4>A32E有162座</h4>
						<h4>A32G有156座</h4>
						<h4>A32N有144座</h4>
						</form>
					</div>
				</div>

				<!-- 信息查询 -->
				<div class="all3">
					<h4 style="color: #fff">未满足需求旅客</h4>
					<div id="showunContent">
						<table>
						    <tr><td>姓名</td><td>用户名</td><td>所需需求</td></tr>
							<c:forEach begin="0" end="${fn:length(unNotes)}" items="${unNotes}" var="note">
							<tr>
							<td>${note.name}</td>
							<td>${note.username}</td>
							<td>
							<c:if test="${note.isbefore eq 1 }">前排</c:if>
							<c:if test="${note.iswindow eq 1 }">靠窗</c:if>
							<c:if test="${note.isasile eq 1 }">过道</c:if>
							<c:if test="${note.isgate eq 1 }">靠登机口</c:if>
							</td>
							</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<!--指南 end-->
			</div>
		</div>
	</div>
	<div type="hidden"></div>

	<!--middle end-->

</body>
<script src="js/jquery.min.js"></script>
<script src="js/home.js"></script>
</html>