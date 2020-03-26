<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
footer {
	width: 100%;
	height: 170px;
	border: 0;
	font-size: 100%;
	font: inherit;
	padding: 4rem;
	background-color: #222;
	color: white;
	text-align: center;
	margin: 0;
}

footer p {
	margin: 0;
}

.push {
	min-height: calc(100vh - 360px);
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="push"></div>
		<footer>
			<p>
				<a href="#">built with SEW in KH Academy </a>
			</p>
			<p>
				<a href="#" onclick="sendMail();">Email: sterme9@naver.com</a>
			</p>
			<script>
				function sendMail() {
					window.open("mailto:sterme9@naver.com", "_blank");
				}
			</script>
		</footer>
	</div>

</body>
</html>