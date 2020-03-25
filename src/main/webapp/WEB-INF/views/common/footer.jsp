<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
footer {
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
	margin: 0;
	padding: 0;
	display: block;
	margin-top: 3rem;
	padding: 5rem;
	background-color: #222;
	color: white;
	text-align: center;
}

footer p {
	margin: 0;
}
</style>
</head>
<body>
	<footer
		style="display: block; float: left; width: 100%; margin-top: 120px;">
		<p>
			<a href="#">built with SEW in KH Academy </a>
		</p>
		<p><a href="#" onclick="sendMail();">Email: sterme9@naver.com</a></p>
		<script>
			function sendMail() {
				window.open("mailto:sterme9@naver.com", "_blank");
			}
		</script>
	</footer>
	
</body>
</html>