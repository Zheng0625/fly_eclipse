<%@page import="java.util.ArrayList"%>
<%@page import="sun.net.www.content.text.plain"%>
<%@page import="javax.xml.ws.ResponseWrapper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="com.fight.edu.entity.Planes"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#book {
    width:400px;
	height:400px;
	position: fixed;
	left: 65%;
	top: 20%;
}
#showSet #a320{
border-radius:15px;
opacity:0.9;
}
#showSet #a32e{
border-radius:15px;
opacity:0.9;
}
#showSet #a32g{
border-radius:15px;
opacity:0.9;
}
#showSet #a32n{
border-radius:15px;
opacity:0.9;
}
#showSet #a320 #tab1{
	background: white;
	opacity:0.8;
	border-radius:15px;
}
#showSet #a32e #tab1{
	background: white;
	opacity:0.8;
	border-radius:15px;
}
#showSet #a32g #tab1{
	background: white;
	opacity:0.8;
	border-radius:15px;
}
#showSet #a32n #tab1{
	background: white;
	opacity:0.8;
	border-radius:15px;
}
#feijitu1{
	position: absolute;
	width:100%;
	height:1200px;
	z-index:-1;
	opacity:0.5;
}

#book #from{
	border:1.5px solid red;
	filter:Alpha(opacity=50);
	border-radius:5%;
}

#book #from #fromtou1{
	width: 86%;
	border-bottom: 1px solid #ee7700;
	margin-bottom: 20px;
	margin-top: 0px;
	margin-right: auto;
	margin-left: auto;
}

#book #from #fromtou1 #p1{
	display: inline-block;
	font-size: 20px;
	margin-top: 20px;
	width: 86%;
}

#book #from #xm1{
	width: 86%;
	margin-bottom: 20px;
	margin-top: 0px;
	margin-right: auto;
	margin-left: auto;
}
#book #from #xm1 #inp1{
	background-color: transparent;border-width:1.5px;border-color:green;border-radius:7px;outline:none;text-indent:5px;
}
}
#book #from #x1{
	width: 86%;
	margin-bottom: 20px;
	margin-top: 0px;
	margin-right: auto;
	margin-left: auto;
}

#book #from #fromtou2{
	width: 86%;
	margin-bottom: 20px;
	margin-top: 0px;
	margin-right: auto;
	margin-left: auto;
}

#book #from #duox1{
	width: 86%;
	margin-bottom: 20px;
	margin-top: 0px;
	margin-right: auto;
	margin-left: auto;
}

#book #from #fromtou3{
	width: 86%;
	margin-bottom: 20px;
	margin-top: 0px;
	margin-right: auto;
	margin-left: auto;
}

#book #from #danx1{
	width: 86%;
	margin-bottom: 20px;
	margin-top: 0px;
	margin-right: auto;
	margin-left: auto;
}

#book #from #tijiao{
	width: 86%;
	margin-bottom: 20px;
	margin-top: 0px;
	margin-left:35%;
}

#book #from #tijiao input{
	 width:100px;
	 height:50px;
     text-align:center;
     line-height:100%;
     padding:0.3em;
     font:16px Arial,sans-serif bold;
     font-style:normal;
     text-decoration:none;
     margin:2px;
     vertical-align:text-bottom;
     zoom:1;
     outline:none;
     font-size-adjust:none;
     font-stretch:normal;
     border-radius:50px;
     box-shadow:0px 1px 2px rgba(0,0,0,0.2);
     text-shadow:0px 1px 1px rgba(0,0,0,0.3);
     color:#fefee9;
     border:0.2px solid #2299ff;
     background-repeat:repeat;
     background-size:auto;
     background-origin:padding-box;
     background-clip:padding-box;
     background-color:#3399ff;
     background: linear-gradient(to bottom, #eeeff9 0%,#3399ff 100%);

}

#tab1 {
	position: absolute;
	left: 10%;
}
</style>
</head>
<body>
	<img id="feijitu1" src="images/feiji.png">
	<div id="showSet" style="width: 300px; height: 950px;">
		<c:if test="${tabname eq 'tab_a320'}">
			<div id="a320">
				<img src="Image/A320.PNG" width="600px" height="250px" id="a320">
				<table style="width:400px">
				    <tr>
				    <td><img src="Image/set1.png" width="20px" height="20px" /></td><td>未占座</td>
				    <td><img src="Image/set2.png" width="20px" height="20px" /></td><td>已占座</td>
				    <td><img src="Image/set3.png" width="20px" height="20px" /></td><td>不可选</td>
				    <td>（1-5排为前排）</td>
				    </tr>
				</table>
				
				<table id="tab1">
					<tr>
						<td></td>
						<td><img src="Image/wc.png" /></td>
					</tr>
					<tr>
						<td><img src="Image/gate.png" /></td>
						<td colspan="7"></td>
						<td><img src="Image/gate.png" /></td>
					</tr>
					<tr>
						<td></td>
						<td>A</td>
						<td></td>
						<td>B</td>
						<td></td>
						<td>C</td>
						<td></td>
						<td>D</td>
						<td></td>
					</tr>
					<tr>
						<td><img src="Image/window.png" /></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td><img src="Image/window.png" /></td>
					</tr>
					<tr>
						<td><img src="Image/window.png" /></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td><img src="Image/window.png" /></td>
					</tr>
					<tr>
						<td></td>
						<td>A</td>
						<td>B</td>
						<td>C</td>
						<td></td>
						<td>D</td>
						<td>E</td>
						<td>F</td>
						<td></td>
					</tr>
					<c:forEach begin="0" end="${fn:length(set) }" items="${set}"
						var="setrow">
						<tr>
							<c:forEach begin="0" end="${fn:length(setrow) }"
								items="${setrow}" var="setone">
								<td><c:if test="${setone.ischoose eq 0}">
										<img src="Image/set1.png" width="20px" height="20px" />
									</c:if> <c:if test="${setone.ischoose eq 1}">
										<img src="Image/set2.png" width="20px" height="20px" />
									</c:if> <c:if test="${setone.column eq 3&&setone.row<24}">
                                        ${setone.row+1}
                                        </c:if> <c:if
										test="${(setone.column eq 1 || setone.column eq 7 )&& (setone.row eq 24)}">
										<img src="Image/wc.png" />
									</c:if> <c:if
										test="${(setone.column eq 0 || setone.column eq 8 )&& (setone.row eq 25)}">
										<img src="Image/gate.png" />
									</c:if> <c:if
										test="${(setone.column eq 0 || setone.column eq 8)&&(setone.row<24) }">
										<img src="Image/window.png" />
									</c:if></td>
							</c:forEach>
						</tr>
					</c:forEach>
				</table>
			</div>
		</c:if>
		<c:if test="${tabname eq 'tab_a32e'}">
			<div id="a32e">
				<img src="Image/A32E.PNG" width="500px" height="200px" id="a320">
				<table style="width:400px">
				    <tr>
				    <td><img src="Image/set1.png" width="20px" height="20px" /></td><td>未占座</td>
				    <td><img src="Image/set2.png" width="20px" height="20px" /></td><td>已占座</td>
				    <td><img src="Image/set3.png" width="20px" height="20px" /></td><td>不可选</td>
				    <td>（1-5排为前排）</td>
				    </tr>
				</table>
				<table id="tab1">
						<td></td>
						<td><img src="Image/wc.png" /></td>
					</tr>
					<tr>
						<td><img src="Image/gate.png" /></td>
						<td colspan="7"></td>
						<td><img src="Image/gate.png" /></td>
					</tr>
					<tr>
						<td><img src="Image/window.png" /></td>
						<td>A</td>
						<td></td>
						<td>B</td>
						<td></td>
						<td>C</td>
						<td></td>
						<td>D</td>
						<td><img src="Image/window.png" /></td>
					</tr>
					<tr>
						<td><img src="Image/window.png" /></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td><img src="Image/window.png" /></td>
					</tr>
					<tr>
						<td></td>
						<td>A</td>
						<td>B</td>
						<td>C</td>
						<td></td>
						<td>D</td>
						<td>E</td>
						<td>F</td>
						<td></td>
					</tr>
					<c:forEach begin="0" end="${fn:length(set) }" items="${set}"
						var="setrow">
						<tr>
							<c:forEach begin="0" end="${fn:length(setrow) }"
								items="${setrow}" var="setone">
								<td><c:if test="${setone.ischoose eq 0}">
										<img src="Image/set1.png" width="20px" height="20px" />
									</c:if> <c:if test="${setone.ischoose eq 1}">
										<img src="Image/set2.png" width="20px" height="20px" />
									</c:if> <c:if test="${setone.column eq 3&&setone.row<27}">
${setone.row+1}
</c:if> <c:if
										test="${(setone.column eq 1 || setone.column eq 7 )&& (setone.row eq 27)}">
										<img src="Image/wc.png" />
									</c:if> <c:if
										test="${(setone.column eq 0 || setone.column eq 8 )&& (setone.row eq 28)}">
										<img src="Image/gate.png" />
									</c:if> <c:if
										test="${(setone.column eq 0 || setone.column eq 8)&&(setone.row<27) }">
										<img src="Image/window.png" />
									</c:if></td>
							</c:forEach>
						</tr>
					</c:forEach>
				</table>
			</div>
		</c:if>
		<c:if test="${tabname eq 'tab_a32g'}">
			<div id="a32g">
				<img src="Image/A32G.PNG" width="500px" height="200px" id="a320">
				<table style="width:400px">
				    <tr>
				    <td><img src="Image/set1.png" width="20px" height="20px" /></td><td>未占座</td>
				    <td><img src="Image/set2.png" width="20px" height="20px" /></td><td>已占座</td>
				    <td><img src="Image/set3.png" width="20px" height="20px" /></td><td>不可选</td>
				    <td>（1-5排为前排）</td>
				    </tr>
				</table>
				<table id="tab1">
					<tr>
						<td></td>
						<td><img src="Image/wc.png" /></td>
					</tr>
					<tr>
						<td><img src="Image/gate.png" /></td>
						<td colspan="7"></td>
						<td><img src="Image/gate.png" /></td>
					</tr>
					<tr>
						<td></td>
						<td>A</td>
						<td></td>
						<td>B</td>
						<td></td>
						<td>C</td>
						<td></td>
						<td>D</td>
						<td></td>
					</tr>
					<tr>
						<td><img src="Image/window.png" /></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td><img src="Image/window.png" /></td>
					</tr>
					<tr>
						<td></td>
						<td>A</td>
						<td>B</td>
						<td>C</td>
						<td></td>
						<td>D</td>
						<td>E</td>
						<td>F</td>
						<td></td>
					</tr>
					<c:forEach begin="0" end="${fn:length(set) }" items="${set}"
						var="setrow">
						<tr>
							<c:forEach begin="0" end="${fn:length(setrow) }"
								items="${setrow}" var="setone">
								<td><c:if test="${setone.ischoose eq 0}">
										<img src="Image/set1.png" width="20px" height="20px" />
									</c:if> <c:if test="${setone.ischoose eq 1}">
										<img src="Image/set2.png" width="20px" height="20px" />
									</c:if> <c:if test="${setone.column eq 3&&setone.row<26}">
${setone.row+1}
</c:if> <c:if
										test="${(setone.column eq 1 || setone.column eq 7 )&& (setone.row eq 26)}">
										<img src="Image/wc.png" />
									</c:if> <c:if
										test="${(setone.column eq 0 || setone.column eq 8 )&& (setone.row eq 27)}">
										<img src="Image/gate.png" />
									</c:if> <c:if
										test="${(setone.column eq 0 || setone.column eq 8)&&(setone.row<26) }">
										<img src="Image/window.png" />
									</c:if></td>
							</c:forEach>
						</tr>
					</c:forEach>
				</table>
			</div>
		</c:if>
		<c:if test="${tabname eq 'tab_a32n'}">
			<div id="a32n">
				<img src="Image/A32N.PNG" width="500px" height="200px" id="a320">
				<table style="width:400px">
				    <tr>
				    <td><img src="Image/set1.png" width="20px" height="20px" /></td><td>未占座</td>
				    <td><img src="Image/set2.png" width="20px" height="20px" /></td><td>已占座</td>
				    <td><img src="Image/set3.png" width="20px" height="20px" /></td><td>不可选</td>
				    <td>（1-5排为前排）</td>
				    </tr>
				</table>
				<table id="tab1">
					<tr>
						<td></td>
						<td><img src="Image/wc.png" /></td>
					</tr>
					<tr>
						<td><img src="Image/gate.png" /></td>
						<td colspan="7"></td>
						<td><img src="Image/gate.png" /></td>
					</tr>
					<tr>
						<td></td>
						<td>A</td>
						<td></td>
						<td>B</td>
						<td></td>
						<td>C</td>
						<td></td>
						<td>D</td>
						<td></td>
					</tr>
					<tr>
						<td><img src="Image/window.png" /></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td></td>
						<td><img src="Image/set3.png" width="20px" height="20px" /></td>
						<td><img src="Image/window.png" /></td>
					</tr>
					<tr>
						<td></td>
						<td>A</td>
						<td>B</td>
						<td>C</td>
						<td></td>
						<td>A</td>
						<td>B</td>
						<td>C</td>
						<td></td>
					</tr>
					<c:forEach begin="0" end="${fn:length(set) }" items="${set}"
						var="setrow">
						<tr>
							<c:forEach begin="0" end="${fn:length(setrow) }"
								items="${setrow}" var="setone">
								<td><c:if test="${setone.ischoose eq 0}">
										<img src="Image/set1.png" width="20px" height="20px" />
									</c:if> <c:if test="${setone.ischoose eq 1}">
										<img src="Image/set2.png" width="20px" height="20px" />
									</c:if> <c:if test="${setone.column eq 3&&setone.row<24}">
${setone.row+1}
</c:if> 
<c:if
										test="${(setone.column eq 1 || setone.column eq 7 )&& (setone.row eq 24)}">
										<img src="Image/wc.png" />
									</c:if> <c:if
										test="${(setone.column eq 0 || setone.column eq 8 )&& (setone.row eq 25)}">
										<img src="Image/gate.png" />
									</c:if> <c:if
										test="${(setone.column eq 0 || setone.column eq 8)&&(setone.row<24) }">
										<img src="Image/window.png" />
									</c:if></td>
							</c:forEach>
						</tr>
					</c:forEach>
				</table>
			</div>
		</c:if>
	</div>
	<div id="book" >
		<form id="from" action="/Fighting/UtilsServlet" method="post">
			<div id="fromtou1">
					<p id="p1">飞机选票</p>
			</div>
			<input type="hidden" name="value" value="1" id="value2" /> 
			<input type="hidden" name="user3" value="" id="user3" /> 
			<input type="hidden" name="plane_id" value="" id="plane_id" /> 
			<input type="hidden" name="fight_id" value="" id="fight_id" /> 
			<input type="hidden" name="tabname" value="" id="tab" /> 
			<div id="xm1">
				姓名：<input type="text" name="name" value="" id="inp1"/></br>
			</div>
			
			<div id="x1">
				<p>&emsp;&ensp;性别：<input type="radio" name="sex" value="1" />男
				<input type="radio" name="sex" value="0" />女</p>
			</div>
			<div id="fromtou2">
				选择座位类型：
			</div>
			<div id="duox1">
			<input type="checkbox" name="setype" value="0" />前排
			<!-- 前五排为前排 -->
			<input type="checkbox" name="setype" value="1" />靠窗 
			<input type="checkbox" name="setype" value="2" />过道 
			<input type="checkbox" name="setype" value="3" />靠登机口</br> 
			</div>
			<div id="fromtou3">
			乘客类型：</br> 
			</div>
			<div id="danx1">
			<input type="radio" name="type" value="0" />婴儿（0-2岁） 
			<input type="radio" name="type" value="1" />儿童
			<input type="radio" name="type" value="2" />残疾 
			<input type="radio" name="type" value="3" />成人</br> 
			</div>
			<div id="tijiao">
			<input type="submit" name="提交" onclick="changeValue();" />
			</div>
		</form>
	</div>

</body>
<script src="js/jquery.min.js"></script>
<script src="js/home.js"></script>
</html>
<script>

function changeValue(){
	<!--document.cookie=document.cookie="startValue=1";-->
	var u=document.getElementById("user3");
	u.value='<%=request.getAttribute("username2")%>';
	var t=document.getElementById("tab");
	t.value='<%=request.getAttribute("tabname")%>';
	var p=document.getElementById("plane_id");
	p.value='<%=request.getAttribute("plane_id")%>';
	var f=document.getElementById("fight_id");
	f.value='<%=request.getAttribute("fight_id")%>';
	}
</script>