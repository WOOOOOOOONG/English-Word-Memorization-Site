<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>SEW</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<!-- Basic page styling -->
<link rel="stylesheet" type="text/css" href="base.css">
<!-- User styling -->
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="apple-touch-icon"
	href="//okky.kr/assets/icon_57x57-5611bd33d9f2b2d84c22219e248455b6.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="//okky.kr/assets/icon_114x114-b2b627dfde8a040fe54fd257244ba191.png">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="//okky.kr/assets/application-02720a4edf0f6edff35025d326624ba0.css" />

<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/shotcuticon.png"
	type="image/x-icon">
<style>
#top {
	width: 99vw;
	height: 400px;
}

.hero-image {
	/* top: -20rem;
	bottom: -20rem;
	width: 100%;
	opacity: 0.9;
	-webkit-filter: grayscale(30%);
	background-image:
		url(https://ugc.futurelearn.com/uploads/images/f6/de/f6de1c1d-7ee4-4713-ba07-93502a7eb1a4.jpg);
	background-repeat: no-repeat;
	background-size: contain;
	background-position: center center;
	position: absolute;  */
	opacity: 0.9;
	z-index: 1;
	padding-bottom: 50px;
	text-align: center;
	/* background:
		url('https://ugc.futurelearn.com/uploads/images/f6/de/f6de1c1d-7ee4-4713-ba07-93502a7eb1a4.jpg')
		no-repeat center center fixed; */
	background:
	url('resources/images/logo2.png')
		no-repeat center center;/*  fixed */
	/* background-size: cover; */
	position: absolute;
	width: 100%;
	height: 100%;
	-webkit-filter: grayscale(30%);
	/*
    	images
    	http://www.howlatthemoon.com/wp-content/uploads/2015/09/nyc-skyline.jpg
    	https://40.media.tumblr.com/1b916597d3e174399cb7adadddb66ede/tumblr_nt5uk4psl31ud7rr3o1_1280.jpg
    	https://www.insidehighered.com/sites/default/server_files/media/iStock-520374378.jpg
    	data:image/jpeg;base64,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
    	https://ugc.futurelearn.com/uploads/images/f6/de/f6de1c1d-7ee4-4713-ba07-93502a7eb1a4.jpg
    	https://s26600.pcdn.co/wp-content/uploads/2017/09/iStock-133528762-170920.jpg
    	
    */
}

#vision {
	width: 490px;
	margin-left: 300px;
}

.hero p {
	color: white;
	padding-top: 9rem;
	z-index: 2;
}

.navbar-wrapper {
	height: 3rem;
}

nav.pinned {
	/* position: fixed; */
	top: 0;
	background-color: #f5f5f5;
	transition: 0.2s ease background-color;
	-webkit-transition: 0.2s ease background-color;
}

/* Eric Meyer's Reset CSS v2.0 - http://cssreset.com */
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
	margin: 0;
	padding: 0
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block
}

body {
	line-height: 1
}

ol, ul {
	list-style: none
}

blockquote, q {
	quotes: none
}

blockquote:before, blockquote:after, q:before, q:after {
	content: none
}

table {
	border-collapse: collapse;
	border-spacing: 0
}

/* Default header styles */
h1, h2, h3, h4, h5, h6 {
	font-family: "Helvetica Neue", Helvetica, Roboto, Arial, sans-serif;
	font-weight: 300;
	color: #222222;
	line-height: 1.4;
}

h1 {
	font-size: 2.75rem;
}

h2 {
	font-size: 1.6875rem;
}

h3 {
	font-size: 1.375rem;
}

h4 {
	font-size: 1.125rem;
}

h5 {
	font-size: 1.125rem;
}

h6 {
	font-size: 1rem;
}

/* Base element styles */
body, html {
	width: 100%;
	height: 100%;
	font-family: "Helvetica Neue", Helvetica, Roboto, Arial, sans-serif;
	font-size: 16px;
	color: #222222;
}

a, a:hover {
	color: inherit;
	text-decoration: none;
}

ul {
	margin: 2rem 0;
	list-style: disc;
	padding-left: 2rem;
}

ul li {
	padding: 0.5rem 0;
}

p {
	margin: 1rem 0;
	line-height: 1.8;
}

.hero {
	position: relative;
	overflow: hidden;
	height: 20rem;
}

section {
	margin: 0 auto;
	margin-top: 100px;
}

footer {
	margin-top: 4rem;
	padding: 5rem;
	background-color: #222;
	color: white;
	text-align: center;
}

footer p {
	margin: 0;
}

#content {
	width: 900px;
	float: left;
}

#product {
	width: 1000px;
	margin-left: 900px;
}

#index1 {
	
}

#index2 {
	
}

.fa-user-circle {
	font-size: 12px;
	margin-left: -1px;
	margin-top: -2px;
}
</style>
<script>
	$(function() {
		/*************
		 * Scroll to *
		 *************/

		$('a[href*="#"]').click(function(e) {
			e.preventDefault();
			var $target = $($(this).attr('href'));
			var scrollTop = $target.offset().top;
			$('html, body').animate({
				'scrollTop' : scrollTop
			}, 500);
		});

	});
</script>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<div class="hero" id="top">
		<div class="hero-image"></div>
		<p style="font-size: 50px;">Study with 'SEW'</p>
	</div>
	<div id="content">
		<section id="vision">
			<!-- <div class="content"> -->
			<!-- <p style="font-size: 40px; font-family: 'Roboto', sans-serif;">We Have a Vision</p> -->
			<p style="font-size: 33px;">더 이상 지루하게 공부하지 마세요!</p>
			<p>
				<b style="font-size: 1.5em">옥</b>스퍼드 영어사전에 기재된 영단어는 75만개가 넘습니다. 또한,
				수능 기출 어휘는 약 2,400개, 공무원 기출 영단어 중 직무 공통 영단어만 축소해 3600개입니다. 이렇게 많은
				영단어를 외우기 위해서는 꿈에 대한 의지뿐만 아니라 가장 중요한 요소가 하나 있습니다. 바로 <b style="font-size: 1.2em">재미</b>입니다. 재미있게 공부를
				하면 시간가는 줄 모르고 꾸준하게 공부할 수 있습니다. 저희 <b style="font-size: 1.2em">'SEW'</b>에서는 사용자분들이 '재미있게'공부할 수 있도록
				초점을 맞추어 서비스를 제공합니다.
			</p>
			<p>
				<b style="font-size: 1.5em">저</b>희 SEW에서 영단어를 즐길 수 있는 방법은 크게 3가지입니다.
				스스로 <b style="font-size: 1.2em">단어장</b>을 만들어 다른 사용자와 <b style="font-size: 1.2em">공유</b>하고, 같은 목적을 가진 다른 사람과 <b style="font-size: 1.2em">클래스</b>를 만들어 함께 공부하는 방법입니다. 각각의 방법을
				보좌하기 위해 단어장을 낱말카드로 학습할 수 있고, 다른 사용자가 만든 좋은 단어장을 공유받아 나의 단어장처럼 사용할 수
				있고, 클래스에서 클래스장 하에 실행하는 시험으로 틈틈히 자신이 얼마나 외웠는지 <b style="font-size: 1.2em">테스트</b>하고 나만의 단어 공부 진행표를
				마이페이지에서 꼼꼼하게 진행하세요!
			</p>
			<!-- </div> -->
		</section>

		<!-- jQuery -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<!-- User scripts -->
	</div>
	<section id="product">
		<div>
			<!-- <h1>인기 단어장 소개</h1>
			<h2>가장 인기가 많은 단어장입니다</h2> -->
			<div id="index1">
				<!--  id="index" class="content scaffold-list clearfix" role="main"  style="position: absolute;" -->
				<div
					style="width: 420px; position: inline; float: left;">
					<!--  class="col-sm-6 main-block-left" -->
					<div class="main-block">
						<h4 class="main-header">
						<a href="boardList.bo">
          					<span class="glyphicon glyphicon-exclamation-sign"></span>
          				</a>공지사항
						</h4>
						<div class="panel panel-default" style="width: 380px;">
							<!-- Table -->
							<ul class="list-group">
								<c:set var="i" value="1" />
								<c:forEach var="item" items="${nList}">
									<c:if test="${item.type eq 1 && i <= 5}">
										<c:set var="i" value="${i + 1}" />
										<li
											class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
											<div class="list-title-wrapper">
												<h5 class="list-group-item-heading list-group-item-evaluate">
													<a href="detailBoard.bo?bId=${item.bId}">${item.title}</a>
													<div class="list-group-item-author pull-right clearfix">
														<div class='avatar avatar-x-small clearfix '>
															<a href='#' class='avatar-photo'><i class='fas fa-user-circle'></i></a>
															<div class="avatar-info">
																<a class="nickname" href="/user/info/45597" title="${item.referNickname}">${item.referNickname}</a>
																<div class="activity">
																	<i class="fa fa-eye"></i> ${item.views}
																</div>
																<div class="date-created">
																	<span class="timeago" title="${item.createDate}">${item.createDate}</span>
																</div>
															</div>
														</div>
													</div>
												</h5>
											</div>
										</li>
									</c:if>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div
					style="width: 420px; position: inline; float: left;">
					<div class="main-block">
						<h4 class="main-header">
							<a href="boardList.bo">
					          <span class="glyphicon glyphicon-comment"></span>
					        </a>인기 게시글
						</h4>
						<div class="panel panel-default" style="width: 380px;">
							<ul class="list-group">
								<c:set var="i" value="1" />
								<c:forEach var="item" items="${bList}">
									<c:if test="${item.type ne 1 && i <= 5}">
										<c:set var="i" value="${i+1}" />
										<li
											class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
											<div class="list-title-wrapper">
												<h5 class="list-group-item-heading list-group-item-evaluate">
													<a href="detailBoard.bo?bId=${item.bId}">${item.title}</a>
													<div class="list-group-item-author pull-right clearfix">
														<div class='avatar avatar-x-small clearfix '>
															<a href='#' class='avatar-photo'><i class='fas fa-user-circle'></i></a>
															<div class="avatar-info">
																<a class="nickname" href="/user/info/45597" title="${item.referNickname}">${item.referNickname}</a>
																<div class="activity">
																	<i class="fa fa-eye"></i> ${item.views}
																</div>
																<div class="date-created">
																	<span class="timeago" title="${item.createDate }">${item.createDate }</span>
																</div>
															</div>
														</div>
													</div>
												</h5>
											</div>
										</li>
									</c:if>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div>
			<!-- <h1>인기 단어장 소개</h1>
			<h2>가장 인기가 많은 단어장입니다</h2> -->
			<div id="index2">
				<!--  id="index2" class="content scaffold-list clearfix" role="main"
				style="margin-top: -460px;" -->
				<div
					style="width: 420px; position: inline; float: left;">
					<div class="main-block">
						<h4 class="main-header">
							<a href="#">
					          <span class="glyphicon glyphicon-book"></span>
					        </a> 인기 단어장
						</h4>
						<div class="panel panel-default" style="width: 380px;">
							<!-- Table -->
							<ul class="list-group" id="voca-list-group">
								<%-- <c:set var="i" value="1" />
								<c:forEach var="item" items="${bList}">
									<c:if test="${item.type eq 1 && i <= 5}">
										<c:set var="i" value="${i + 1}" />
										<li
											class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
											<div class="list-title-wrapper">
												<h5 class="list-group-item-heading list-group-item-evaluate">
													<a href="detailBoard.bo?bId=${item.bId}">${item.title}</a>
													<div class="list-group-item-author pull-right clearfix">
														<div class='avatar avatar-x-small clearfix '>
															<a href='#' class='avatar-photo'><i class='fas fa-user-circle'></i></a>
															<div class="avatar-info">
																<a class="nickname" href="/user/info/45597" title="${item.referNickname}">${item.referNickname}</a>
																<div class="activity">
																	<i class="fa fa-eye"></i> ${item.views}
																</div>
																<div class="date-created">
																	<span class="timeago" title="${item.createDate }">${item.createDate }</span>
																</div>
															</div>
														</div>
													</div>
												</h5>
											</div>
										</li>
									</c:if>
								</c:forEach> --%>
							</ul>
						</div>
						<script>
						var vocaList = Array();
						var vocaLength = 0;
						
						
						setTimeout(function() {
							startAjax();
						}, 1500);	
						
						function startAjax() {
							
						$.ajax(
					            {
					                type: "POST",
					                dataType: "json",
					                contentType: "application/json; charset=utf-8",
					                data: JSON.stringify({_id:"CSID_45"}),
					                url: 'http://192.168.10.13:1222/total',
					                success: function (data) {
					                        var vocaLengthText = $("#vocaLength");
					                        var $vocaListGroup = $('#voca-list-group');
					                        vocaLength = data.length;
					                        
											// 2차원 배열화
											for(var i = 0; i < 100; i++) {
												vocaList[i] = new Array();
											}
					                        console.log(data);
					                        
					                        var count = 0;
						                    for(var i = 0; i < vocaLength; i++) {
						                       	for(var j in data[i].category) {
						                       		vocaList[count][0] = j; // 단어장 제목
						                       		vocaList[count][1] = data[i].userName;
						                       		var str = "";
						                       		switch(data[i].category[j]) {
						                       		case "0":
						                       			str = "TOEIC";
						                       			break;
						                       		case "1":
						                       			str = "TOFEL";
						                       			break;
						                       		case "2":
						                       			str = "TEPS";
						                       			break;
						                       		case "3":
						                       			str = "G_TELP";
						                       			break;
						                       		case "4":
						                       			str = "FLEX";
						                       			break;
						                       		case "5":
						                       			str = "중등";
						                       			break;
						                       		case "6":
						                       			str = "고등";
						                       			break;
						                       		case "7":
						                       			str = "수능";
						                       			break;
						                       		case "8":
						                       			str = "9급 공무원";
						                       			break;
						                       		case "9":
						                       			str = "경찰 공무원";
						                       			break;
						                       		case "10":
						                       			str = "편입";
						                       			break;
						                       		case "11":
						                       			str = "프로그래머";
						                       			break;
						                       		default:
						                       			str = "기타";
					                       				break;
						                       		}
						                       		vocaList[count][2] = str; // 카테고리
						                       		vocaList[count][3] = 0;
						                        	for(var k in data[i].privilege) {
						                        		if(vocaList[count][0] == k) {
						                        			var priCount = 0;
						                        			for(var l in data[i].privilege[k]) {
						                        				priCount++;
						                        			}
						                        			vocaList[count][3] = priCount; // 사용자 수
						                        		}
						                        	}
						                        	count++;
						                        }
						                    }
						                    vocaLength = count;

					                        console.log(vocaList);
						                    vocaList.sort(function(a, b) {
						                   		return a[3] > b[3] ? -1 : a[3] < b[3] ? 1 : 0; 
						                   	});
						                    
					                        
					                        // 값 넣기
					                        if(vocaLength > 5) {
						                        for(var i = 0; i < 5; i++) {
						                        	var $content = $('<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">'
														+ '<div class="list-title-wrapper">'
														+ '<h5 class="list-group-item-heading list-group-item-evaluate">'
														+ '<a href="detailBoard.bo?bId=${item.bId}">' + vocaList[i][0] + '</a>'
														+ '<div class="list-group-item-author pull-right clearfix">'
														+ '<div class="avatar avatar-x-small clearfix ">'
														+ '<a href="#" class="avatar-photo"><i class="fas fa-user-circle"></i></a>'
														+ '<div class="avatar-info">'
														+ '<a class="nickname" href="/user/info/45597" title="' + vocaList[i][1] + '">&nbsp;' + vocaList[i][1] + '&nbsp;</a>'
														+ '<div class="activity">'
														+ '<i class="fa fa-eye"></i> ' + vocaList[i][3]
														+ '</div>'
														+ '<div class="date-created">'
														+ '<span class="timeago" title="' + vocaList[i][3] + '">' + vocaList[i][2] + '</span>'
														+ '</div>'
														+ '</div>'
														+ '</div>'
														+ '</div>'
														+ '</h5>'
														+ '</div>'
														+ '</li>');
						                        	
						                        	$vocaListGroup.append($content);
						                       	}
					                        }else {
					                        	for(var i = 0; i < vocaLength; i++) {
						                        	var $content = $('<li class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">'
														+ '<div class="list-title-wrapper">'
														+ '<h5 class="list-group-item-heading list-group-item-evaluate">'
														+ '<a href="detailBoard.bo?bId=${item.bId}">' + vocaList[i][0] + '</a>'
														+ '<div class="list-group-item-author pull-right clearfix">'
														+ '<div class="avatar avatar-x-small clearfix ">'
														+ '<a href="#" class="avatar-photo"><i class="fas fa-user-circle"></i></a>'
														+ '<div class="avatar-info">'
														+ '<a class="nickname" href="/user/info/45597" title="' + vocaList[i][1] + '">&nbsp;' + vocaList[i][1] + '&nbsp;</a>'
														+ '<div class="activity">'
														+ '<i class="fa fa-eye"></i> ' + vocaList[i][2]
														+ '</div>'
														+ '<div class="date-created">'
														+ '<span class="timeago" title="' + vocaList[i][3] + '">' + vocaList[i][3] + '</span>'
														+ '</div>'
														+ '</div>'
														+ '</div>'
														+ '</div>'
														+ '</h5>'
														+ '</div>'
														+ '</li>');
						                        	$vocaListGroup.append($content);
						                       	}
					                        }
					                },
					                error: function () {
					                    console.log("error has occured retriving data from MongoServer")
					                }
					            });
						}
						</script>
					</div>
				</div>
				<div
					style="width: 420px; position: inline; float: left;">
					<div class="main-block">
						<h4 class="main-header">
							<a href="ClassList.do">
					          <span class="glyphicon glyphicon-user"></span>
					        </a> 인기 스터디
						</h4>
						<div class="panel panel-default" style="width: 380px;">
							<ul class="list-group">
								<c:set var="i" value="1" />
								<c:forEach var="item" items="${cList}">
									<c:if test="${item.cateId ne 1 && i <= 5}">
										<c:set var="i" value="${i+1}" />
										<li
											class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">
											<div class="list-title-wrapper">
												<h5 class="list-group-item-heading list-group-item-evaluate">
													<a href="classdetail.do?cNo=${item.cNo}">${item.title}</a>
													<div class="list-group-item-author pull-right clearfix">
														<div class='avatar avatar-x-small clearfix '>
															<a href='#' class='avatar-photo'><i class='fas fa-user-circle'></i></a>
															<div class="avatar-info">
																<a class="nickname" href="/user/info/45597" title="${item.ornerId}">${item.ornerId}</a>
																<div class="activity">
																	<i class="fa fa-eye"></i> ${item.classCount}
																</div>
																<div class="date-created">
																	<span class="timeago" title="${item.classCreateDate}">${item.classCreateDate}</span>
																</div>
															</div>
														</div>
													</div>

												</h5>
											</div>
										</li>
									</c:if>
								</c:forEach>
							</ul>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<div style="min-height: calc(100vh - 240px);"></div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>