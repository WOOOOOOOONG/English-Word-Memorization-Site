<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Display page</title>
<!-- Basic page styling -->
<link rel="stylesheet" type="text/css" href="base.css">
<!-- User styling -->
<link rel="stylesheet" type="text/css" href="style.css">
<style>
.hero-image {
	top: -20rem;
	bottom: -20rem;
	width: 100%;
	background-image:
		url(http://www.howlatthemoon.com/wp-content/uploads/2015/09/nyc-skyline.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center center;
	position: absolute;
	z-index: 1;
}

.hero h1 {
	position: relative;
	text-align: center;
	color: white;
	padding-top: 10rem;
	z-index: 2;
}

.navbar-wrapper {
	height: 3rem;
}

nav.pinned {
	position: fixed;
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

.content {
	max-width: 60rem;
	margin: 0 auto;
	width: 100%;
}

.hero {
	position: relative;
	overflow: hidden;
	height: 20rem;
}

section {
	padding: 6rem 0 3rem;
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

/* Navbar Styles */
/* nav {
	height: 3rem;
	position: relative;
	width: 100%;
}

nav ul {
	height: 3rem;
	margin: 0;
	padding: 0;
	display: inline-block;
	font-size: 0;
	list-style: none;
}

nav ul li {
	font-size: 1rem;
	padding: 0;
	display: inline-block;
}

nav ul li p {
	height: 1.5rem;
	line-height: 1.5rem;
	margin: 0;
	padding: 0.75rem 1.5rem;
}

nav ul li:hover {
	cursor: pointer;
	background-color: #eee;
}

nav ul li.action-item {
	color: white;
	background-color: #4155E8;
}

nav ul li.action-item:hover {
	color: white;
	background-color: #3B4CD1;
}

nav ul.right {
	float: right;
} */
</style>
<script>
	$(function() {

		$(window).scroll(
				function() {
					/************************
					 * Paralax image effect *
					 ************************/
					var FACTOR = 0.5;
					var $heroImage = $('.hero-image');

					/* Calculate percentComplete, which goes from 0 to 1 */
					var distanceScrolled = Math.max(0, $(window).scrollTop());
					var totalDistanceToScroll = $heroImage.height();
					var percentComplete = Math.min(distanceScrolled
							/ totalDistanceToScroll, 1);

					/* Use percentComplete to determine how much we translate */
					var translateY = (percentComplete * 100 * FACTOR);

					/* Apply the transform */
					$heroImage.css({
						'transform' : 'translateY(' + translateY + '%)'
					});

					/**********************
					 * Pinning the navbar *
					 **********************/

					var $navbar = $('nav');
					var $navbarWrapper = $('.navbar-wrapper')

					/* navbarWrapper never moves, so it's a good pinPoint */
					var pinPoint = $navbarWrapper.offset().top;

					/* add or remove the 'pinned' class depending on what side of the pin
					 * point we are.
					 */
					if (distanceScrolled >= pinPoint) {
						$navbar.addClass('pinned');
					} else {
						$navbar.removeClass('pinned')
					}
				});

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
	<jsp:include page="../common/menubar.jsp"/>
	<div class="hero" id="top">
		<div class="hero-image"></div>
		<h1>Study with 'SEW'</h1>
	</div>
	<%-- <div class="navbar-wrapper">
		<nav>
			<div class="content">
				<ul>
					<li class="action-item"><a href="#top"><p>Home</p></a></li>
					<li><a href="#vision"><p>단어장</p></a></li>
					<li><a href="#product"><p>클래스</p></a></li>
					<!-- <li><a href="#team"><p>Team</p></a></li> -->
				</ul>
				<ul class="right">
					<c:if test="${loginMember ne null}">
						<li class="action-item"><a href="mypage.me"><p>마이페이지</p></a></li>
					</c:if>
					<c:if test="${loginMember eq null}">
						<li><a href="login.me"><p>Log in</p></a></li>
						<li class="action-item"><a href="login.me"><p>Sign up</p></a></li>
					</c:if>
				</ul>
			</div>
		</nav>
	</div> --%>
	<section id="vision">
		<div class="content">
			<h1>We Have a Vision</h1>
			<h2>지루하게 공부하는 단어는 의미가 없습니다.</h2>
			<p>옥스퍼드 영어사전에 기재된 영단어는 75만개가 넘습니다. 또한, 수능 기출 어휘는 약 2,400개, 공무원 기출
			영단어 중 직무 공통 영단어만 축소해 3600개입니다. 이렇게 많은 영단어를 외우기 위해서는 꿈에 대한 의지뿐만 아니라 가장 
			중요한 요소가 하나 있습니다. 바로 재미입니다. 재미있게 공부를 하면 시간가는 줄 모르고 꾸준하게 공부할 수 있습니다. 저희
			'SEW'에서는 사용자분들이 '재미있게'공부할 수 있도록 초점을 맞추어 서비스를 제공합니다.</p>
			<p>저희 SEW에서 영단어를 즐길 수 있는 방법은 크게 3가지입니다. 스스로 단어장을 만들고, 다른 사용자와 공유하고,
			같은 목적을 가진 다른 사람과 함께 공부하는 방법입니다. 각각의 방법을 보좌하기 위해 단어장을 낱말카드로 학습할 수 있고,
			다른 사용자가 만든 좋은 단어장을 공유받아 나의 단어장처럼 사용할 수 있고, 클래스에서 클래스장 하에 실행하는 시험으로
			틈틈히 자신이 얼마나 외웠는지 테스트하고 나만의 단어 공부 진행표를 마이페이지에서 꼼꼼하게 진행하세요!</p>
		</div>
	</section>
	<section id="product">
		<div class="content">
			<h1>인기 단어장 소개</h1>
			<h2>가장 인기가 많은 단어장입니다</h2>
			<img src="resources/images/단어장캡처.PNG"> 
			<img src="resources/images/단어장캡처.PNG" style="margin-left: 60px;"> 
			<img src="resources/images/단어장캡처.PNG" style="margin-left: 60px;">
		</div>
	</section>
	<section id="team">
		<div class="content">
			<h1>인기 클래스 소개</h1>
			<h2>가장 인기가 많은 클래스입니다</h2>
			<img src="resources/images/단어장캡처.PNG"> 
			<img src="resources/images/단어장캡처.PNG" style="margin-left: 60px;">
			<img src="resources/images/단어장캡처.PNG" style="margin-left: 60px;">
		</div>
	</section>
	<footer>
		<p>
			<a href="#">built with ❤ in NYC </a>
		</p>
	</footer>
	<!-- jQuery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<!-- User scripts -->
	<script type="text/javascript" src="script.js"></script>
</body>
</html>