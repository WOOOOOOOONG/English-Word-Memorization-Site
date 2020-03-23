<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
  integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
  integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
  integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
<script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>

<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
	
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.js"></script>
<style>
body {
	background: whitesmoke;
}
@media screen and (min-width: 400px, min-height:400px)
body {
	height: 110vh;
	margin: 0;
	background: whitesmoke;
}

main .helper span {
	color: rgba(0, 0, 0, 0.2);
	font-size: 0.4em;
	display: block;
}

.menu {
   /* background: #5bc995; */
   background: #88dba3;
   height: 100%;
   /* width: 240px; */
   width: 280px;
   z-index: 5;
   outline: none;
   font-family: "Open Sans", Helvetica Neue, Helvetica, Arial, sans-serif;
   color: #fff;
   float: left;
   
}

.menu .avatar {
	width: 240px;
	background: rgba(0, 0, 0, 0.3);
	padding: 2em 0.5em;
	text-align: center;
	margin-left: -9px;
	margin-top: -9px;
}

.menu .avatar img {
	width: 110px;
	border-radius: 50%;
	overflow: hidden;
	border: 4px solid #ffea92;
	box-shadow: 0 0 0 4px rgba(255, 255, 255, 0.2);
}

nav {
  margin-top: 0px;
  padding: 24px;
  text-align: center;
  font-family: Raleway;
  box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
}

#nav-1 {
  background: #cff0da;
}

.menu .avatar h2 {
	font-weight: normal;
	margin-bottom: 0;
}

.menu ul {
	list-style: none;
	padding: 0.5em 0;
	text-align:left;
	margin: 0;
}

.menu ul li {
	padding: 0.5em 1em 0.5em 3em;
	font-size: 0.95em;
	font-weight: regular;
	background-repeat: no-repeat;
	background-position: left 15px center;
	background-size: auto 20px;
	transition: all 0.15s linear;
	cursor: pointer;
}

.icon {
	/* background-color: whitesmoke; */
	display:block;
}

.menu ul li.icon-dashboard {
	background-image: url("http://www.entypo.com/images//gauge.svg");
}

.menu ul li.icon-customers {
	background-image: url("http://www.entypo.com/images//briefcase.svg");
}

.menu ul li.icon-users {
	background-image: url("http://www.entypo.com/images//users.svg");
}

.menu ul li.icon-settings {
	background-image: url("http://www.entypo.com/images//tools.svg");
}

.menu ul li:hover {
	/* background-color: rgba(0, 0, 0, 0.1); */
	font-weight: bold;
}

.menu ul li:focus {
	outline: none;
}
}
@media screen and (max-width: 900px) and (min-width: 400px) {
	.menu {
		width: 90px;
	}
	.menu .avatar {
		position: relative;
		width: 90px;
		background: rgba(0, 0, 0, 0.3);
	}
	.menu .avatar img {
		margin-left: -16px;
		width: 60px;
	}
	.menu .avatar h2 {
		opacity: 0;
		position: absolute;
		top: 50%;
		left: 100px;
		margin: 0;
		min-width: 200px;
		border-radius: 4px;
		background: rgba(0, 0, 0, 0.4);
		transform: translate3d(-20px, -50%, 0);
		transition: all 0.15s ease-in-out;
	}
	.menu .avatar:hover h2 {
		opacity: 1;
		transform: translate3d(0px, -50%, 0);
	}
	.menu ul li {
		height: 60px;
		background-position: center center;
		background-size: 30px auto;
		position: relative;
	}
	.menu ul li span {
		opacity: 0;
		position: absolute;
		background: rgba(0, 0, 0, 0.5);
		padding: 0.2em 0.5em;
		border-radius: 4px;
		top: 50%;
		left: 80px;
		transform: translate3d(-15px, -50%, 0);
		transition: all 0.15s ease-in-out;
	}
	.menu ul li span:before {
		content: '';
		width: 0;
		height: 0;
		position: absolute;
		top: 50%;
		left: -5px;
		border-top: 5px solid transparent;
		border-bottom: 5px solid transparent;
		border-right: 5px solid rgba(0, 0, 0, 0.5);
		transform: translateY(-50%);
	}
	.menu ul li:hover span {
		opacity: 1;
		transform: translate3d(0px, -50%, 0);
	}
}

@media screen and (max-width: 400px) {
	body {
		padding-left: 0;
	}
	.menu {
		width: 230px;
		box-shadow: 0 0 0 100em rgba(0, 0, 0, 0);
		transform: translate3d(-230px, 0, 0);
		transition: all 0.15s ease-in-out;
	}
	.menu .smartphone-menu-trigger {
		width: 40px;
		height: 40px;
		position: absolute;
		left: 100%;
		background: #5bc995;
	}
	.menu .smartphone-menu-trigger:before, .menu .smartphone-menu-trigger:after
		{
		content: '';
		width: 50%;
		height: 2px;
		background: #fff;
		border-radius: 10px;
		position: absolute;
		top: 45%;
		left: 50%;
		transform: translate3d(-50%, -50%, 0);
	}
	.menu .smartphone-menu-trigger:after {
		top: 55%;
		transform: translate3d(-50%, -50%, 0);
	}
	.menu ul li {
		padding: 1em 1em 1em 3em;
		font-size: 1.2em;
	}
	.menu:focus {
		transform: translate3d(0, 0, 0);
		box-shadow: 0 0 0 100em rgba(0, 0, 0, 0.6);
	}
	.menu:focus .smartphone-menu-trigger {
		pointer-events: none;
	}
}

@media screen and (min-width: 320px) {
	.table {
		position: absolute;
		margin-top: 4vh;
		margin-left: 140px;
		width: 1200px;
		float: left;
		clear: right;
		display: inline-block;
	}
}

.fixed_headers {
	margin-left: 390px;
	font-size: 12px;
	min-width: 500px;
}

.classify {
	margin-left: 330px;
}

.manage a {
	display: block;
}

.hide {
	display: block;
}

.bold-weight {
	font-weight: bold;
}
        
textarea::placeholder {
	color: black;
	border-radius: 5px;
}

.hilight {
	font-weight: bold;
}

.middle {
	font-weight:600;
}

.light {
	font-weight:300;
}
</style>
</head>
<body>
	<nav class="menu" id="menu" tabindex="0">
		<div class="smartphone-menu-trigger"></div>
		<header class="avatar">
			<img
				src="https://s3.amazonaws.com/uifaces/faces/twitter/kolage/128.jpg" />
			<h2>John D.</h2>
		</header>
		<br>
		<ul class="manage">
			<c:url var="admin1" value="memberList.me"/>
			<c:url var="admin2" value="selectInquireList.ad"/>
			<c:url var="class1" value="classify.cl"/>
			<c:url var="class2" value="total.cl"/>
			<c:url var="inquire" value="inquireStat.ad"/>
			<c:url var="visit1" value="visitTime.ad"/>
			<c:url var="visit2" value="visitDay.ad"/>
			<c:url var="visit3" value="visitMonth.ad"/>
			<c:url var="voca1" value="classify.voca"/>
			<c:url var="voca2" value="total.voca"/>
			
			<li tabindex="0" class="icon hilight" style=""><a><span><i class="fas fa-user" style=""></i> 멤버
						관리</span></a>
				<ul class="hide">
					<li class="homepage page1 light" onclick="goHomepage(this, 1);">멤버 전체</li>
				</ul></li>
			<hr>
			<li tabindex="0" class="icon hilight"><a><span><i class="fas fa-wrench"></i> 문의사항</span></a>
				<ul class="hide">
					<li class="homepage page2 light" onclick="goHomepage(this, 2);">전체 문의</li>
				</ul></li>
			<hr>
			<li tabindex="0" class="icon hilight"><a><span><i class="fa fa-line-chart"></i> 통계</span></a>
				<ul class="hide middle">
					<li><a><span>클래스</span></a>
						<ul class="hide">
							<li class="homepage page3 light" onclick="goHomepage(this, 3);">분류별</li>
							<li class="homepage page4 light" onclick="goHomepage(this, 4);">조회수별</li>
						</ul>
					</li>
				</ul>
				<ul class="hide middle">
					<li><a><span>문의</span></a>
						<ul class="hide">
							<li class="homepage page5 light" onclick="goHomepage(this, 5);">분류별</li>
						</ul>
					</li>
				</ul>
				<ul class="hide middle">
					<li><a><span>방문기록</span></a>
						<ul class="hide">
							<!-- <li class="homepage page6" onclick="goHomepage(this, 6);">시간별</li> -->
							<li class="homepage page7 light" onclick="goHomepage(this, 7);">일자별</li>
							<li class="homepage page8 light" onclick="goHomepage(this, 8);">월별</li>							
						</ul>
					</li>
				</ul>			
				<ul class="hide middle">
					<li><a><span>단어장</span></a>
						<ul class="hide">
							<li class="homepage page9 light" onclick="goHomepage(this, 9);">분류별</li>
							<li class="homepage page10 light" onclick="goHomepage(this, 10);">조회수별</li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
		<script>
            $(document).ready(function () {
            	switch(window.location.pathname) {
            	case "/spring/response.ad": 
            		$(".page2").css("font-weight", "bold");
            		break;
            	case "/spring/memberManage.ad": 
            		$(".page1").css("font-weight", "bold");
            		break;
            	case "/spring/classify.cl": 
            		$(".page3").css("font-weight", "bold");
            		break;
            	case "/spring/total.cl": 
            		$(".page4").css("font-weight", "bold");
            		break;
            	case "/spring/inquire.in": 
            		$(".page5").css("font-weight", "bold");
            		break;
            	case "/spring/time.vi": 
            		$(".page6").css("font-weight", "bold");
            		break;
            	case "/spring/day.vi": 
            		$(".page7").css("font-weight", "bold");
            		break;
            	case "/spring/month.vi": 
            		$(".page8").css("font-weight", "bold");
            		break;
            	case "/spring/classify.voca": 
            		$(".page9").css("font-weight", "bold");
            		break;
            	case "/spring/total.voca": 
            		$(".page10").css("font-weight", "bold");
            		break;
            	
            	}
            	
                $(".icon>a").click(function () {
                    var submenu = $(this).nextAll("ul");
                    if (submenu.is(":visible")) {
                        submenu.slideUp();
                    } else {
                        submenu.slideDown();
                    }
                });
                
                $(".icon li>a").click(function() {
                	var submenu = $(this).nextAll("ul");
                	if(submenu.is(":visible")) {
                		submenu.slideUp();
                	}else {
                		submenu.slideDown();
                	}
                });
            });
            
            function goHomepage(id, value) {
            	var url = "";
            	
            	switch(value) {
            	case 1:
            		url = "${ admin1 }";
            		break;
            	case 2:
            		url = "${ admin2 }";
            		break;
            	case 3:
            		url = "${ class1 }";
            		break;
            	case 4:
            		url = "${ class2 }";
            		break;
            	case 5:
            		url = "${ inquire }";
            		break;
            	case 6:
            		url = "${ visit1 }";
            		break;
            	case 7:
            		url = "${ visit2 }";
            		break;
            	case 8:
            		url = "${ visit3 }";
            		break;
            	case 9:
            		url = "${ voca1 }";
            		break;
            	case 10:
            		url = "${ voca2 }";
            		break;
            	}
            	
            	location.href = url;
            }
        </script>
	</nav>
</body>
</html>