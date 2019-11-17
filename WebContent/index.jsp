<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" 
           uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html
  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订票系统</title>
<link rel="stylesheet" type="text/css" href="css/home.css" />

<style type="text/css">

	.middle .cont .class_a .all5{
		text-align:center;
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
					<!-- <a href="#" class="net">
            <li>申请订票</li>
          </a> -->
					<a href="#" class="_all2">
						<li>飞机时刻表</li>
					</a>
					<a href="#" class="_all3">
						<li>我的飞机票</li>
					</a>
					<a href="#" class="_all4">
						<li>修改密码</li>
					</a>
					<a href="#" class="_all5">
						<li>联系我们</li>
					</a>
				</ul>
			</div>
			<!--菜单 end-->
			<!--指南-->
			<div class="class_a">

				<!--申请订票 end-->
				<!--飞机时刻表-->
				<div class="all2">
					<h4 style="color: #fff">飞机时刻表</h4>
					<table width="800" height="50"
						style="margin: auto; margin-top: 50px; border: 1px solid #FFF;"
						border="1" cellpadding="0" cellspacing="0">
						<tr align="center">
							<th>航班信息</th>
							<th>起飞时间</th>
							<th>到达时间</th>
							<th>&emsp;准点率</th>
							<th>&nbsp;购票&emsp;&ensp;</th>
						</tr>
					</table>
					<form id="from1" action="/Fighting/ShowServlet" method="post">
						<input type="hidden" name="plane_id" value="1" /> <input
							type="hidden" name="fight_id" value="1" /> <input type="hidden"
							name="username2" value="" id="user2" /> <input type="hidden"
							name="tab" value="tab_a320" id="tab" /> <input type="hidden"
							name="sub" value="sub1" id="sub" />
						<table id="tab1" width="800" height="50"
							style="margin: auto; margin-top: 50px; border: 1px solid #FFF;"
							border="1" cellpadding="0" cellspacing="0">
							<tr align="center">
								<td>南航 </br>A320
								</td>
								<td>07:45</br>首都T1
								</td>
								<td>10:00</br>虹桥T2
								</td>
								<td>准点率</br>84%
								</td>

								<td>
									<button type="submit" class="submitBtn"
										onclick="usernameValue();">单人选座</button>
									<button type="submit" class="submitBtn"
										onclick="usernameValue();changeSub()">团队预定</button>
								</td>
							</tr>
						</table>
					</form>
					<form id="from2" action="/Fighting/ShowServlet" method="post">
						<input type="hidden" name="plane_id" value="2" /> <input
							type="hidden" name="fight_id" value="2" /> <input type="hidden"
							name="username2" value="" id="user2" /> <input type="hidden"
							name="tab" value="tab_a32e" id="tab" /> <input type="hidden"
							name="sub" value="sub1" id="sub" />
						<table id="tab2" width="800" height="50"
							style="margin: auto; margin-top: 50px; border: 1px solid #FFF;"
							border="1" cellpadding="0" cellspacing="0">
							<tr align="center">
								<td>南航</br>A32E
								</td>
								<td>11:55</br>南苑
								</td>
								<td>14:05</br>浦东T1
								</td>
								<td>准点率</br>60%
								</td>
								<td>
									<button type="submit" class="submitBtn"
										onclick="usernameValue();">单人选座</button>
									<button type="submit" class="submitBtn"
										onclick="usernameValue();changeSub()">团队预定</button>
								</td>
							</ tr>
						</table>
					</form>
					<form id="from3" action="/Fighting/ShowServlet" method="post">
						<input type="hidden" name="plane_id" value="3" /> <input
							type="hidden" name="fight_id" value="3" /> <input type="hidden"
							name="username2" value="" id="user2" /> <input type="hidden"
							name="tab" value="tab_a32g" id="tab" /> <input type="hidden"
							name="sub" value="sub1" id="sub" />
						<table id="tab3" width="800" height="50"
							style="margin: auto; margin-top: 50px; border: 1px solid #FFF;"
							border="1" cellpadding="0" cellspacing="0">
							<tr align="center">
								<td>南航</br> A32G
								</td>
								<td>07:35</br> 首都T2
								</td>
								<td>09:50</br> 浦东T1
								</td>
								<td>准点率</br> 73%
								</td>
								<td>
									<button type="submit" class="submitBtn"
										onclick="usernameValue();">单人选座</button>
									<button type="submit" class="submitBtn"
										onclick="usernameValue();changeSub()">团队预定</button>
								</td>
							</tr>
						</table>
					</form>
					<form id="from4" action="/Fighting/ShowServlet" method="post">
						<input type="hidden" name="plane_id" value="4" /> <input
							type="hidden" name="fight_id" value="4" /> <input type="hidden"
							name="username2" value="" id="user2" /> <input type="hidden"
							name="tab" value="tab_a32n" id="tab" /> <input type="hidden"
							name="sub" value="sub1" id="sub" />
						<table id="tab4" width="800" height="50"
							style="margin: auto; margin-top: 50px; border: 1px solid #FFF;"
							border="1" cellpadding="0" cellspacing="0">
							<tr align="center">
								<td>南航</br> A32N
								</td>
								<td>21:30</br> 首都T2
								</td>
								<td>23:45</br> 虹桥T2
								</td>
								<td>准点率</br> 50%
								</td>
								<td>
									<button type="submit" class="submitBtn"
										onclick="usernameValue();">单人选座</button>
									<button type="submit" class="submitBtn"
										onclick="usernameValue();changeSub()">团队预定</button>
								</td>
							</tr>
						</table>
					</form>
				</div>
				<!--飞机时刻表-->
				<!--我的飞机票-->
				<div class="all3">
					<h4 style="color: #fff">我的飞机票</h4>
					<div id="showtickets">
						<table>
						    <tr><td>姓名</td><td>航班</td><td>座位</td></tr>
							<c:forEach begin="0" end="${fn:length(usertickets) }" items="${usertickets}"  var="user">
								<tr>
									<td>${user.name}</td>
									<td>
									<c:if test="${user.plane_id eq 1}">南航A320</c:if>
									<c:if test="${user.plane_id eq 2}">南航A32E</c:if>
									<c:if test="${user.plane_id eq 3}">南航A32G</c:if>
									<c:if test="${user.plane_id eq 4}">南航A32N</c:if>
									</td>
									<c:forEach begin="0" end="${fn:length(user.seties) }" items="${user.seties}"
								var="users">
									<td>
									${users.row+1}排
									<c:if test="${users.column eq 1}">A</c:if>
									<c:if test="${users.column eq 2}">B</c:if>
									<c:if test="${users.column eq 3}">C</c:if>
									<c:if test="${users.column eq 5}">D</c:if>
									<c:if test="${users.column eq 6}">E</c:if>
									<c:if test="${users.column eq 7}">F</c:if>
									座
									</td>
									</c:forEach>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
				<!--我的飞机票 end-->
				<!--修改密码-->
				<div class="all4" id="all4">
					<h4 style="color: #fff">修改密码</h4>
				</div>

				<!--修改密码 end-->
				<!--联系我们-->
				<div class="all5">
					<h4 style="color: #fff">☏&nbsp;&nbsp;联系我们</h4>
						<img src="images/logo.png"/>

				</div>
				<!--联系我们 end-->
			</div>
			<!--指南 end-->
		</div>
	</div>
	<div type="hidden"></div>

	<!--middle end-->

</body>
<script src="js/jquery.min.js"></script>
<script src="js/home.js"></script>
</html>
<script type="text/javascript">
function usernameValue(){
	var user=document.getElementById("user2");
	user.value='<%=session.getAttribute("username")%>';
	}
	function changeSub() {
		var sub = document.getElementById("sub");
		sub.value = 'sub2';
	}
</script>