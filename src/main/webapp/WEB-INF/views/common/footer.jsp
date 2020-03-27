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
	font: inherit;
	padding: 60px;
	background-color: #222;
	color: white;
	text-align: center;
	margin: 0;
}

footer p {
	margin: 0;
}

</style>
</head>
<body>
	<div class="wrapper">
		
		<footer>
			<p>
				<a href="#" style="	font-size: 15px;">built with SEW in KH Academy </a>
			</p>
			<p>
				<a href="#" style="	font-size: 15px;" onclick="sendMail();">Email: sterme9@naver.com</a>
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