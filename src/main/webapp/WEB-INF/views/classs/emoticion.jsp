<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

:root {
	--dur: 1s;
	--color1: #171717;
	--color2: #f1f1f1;
}



span {
	display: inline-block;
}

/* Emoticon parts */

.b-arm {
	animation: b-armMove var(--dur) linear infinite;
	transform-origin: 25% 25%;
}
.b-belt, .b-belt:before {
	background: repeating-linear-gradient(90deg,transparent,transparent 0.25em,currentColor 0.25em,currentColor 3.3em) 0 0 / 100% 0.1em repeat-x;
}
.b-belt {
	animation: b-beltL var(--dur) linear infinite;
	position: relative;
	width: 13.2em;
	height: 0.8em;
	vertical-align: middle;
}
.b-realbelt {
	color: transparent;
}
.b-belt:before {
	animation: b-beltR var(--dur) linear infinite;
	background-position: 0 100%;
	content: "";
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
.b-table:nth-of-type(3) {
	animation: b-tableFlip var(--dur) linear infinite;
}
.b-table:nth-of-type(n + 4) {
	animation: b-tableMove var(--dur) linear infinite;
}
.b-wheel {
	animation: b-rotate var(--dur) linear infinite;
	transform-origin: 50% 60%;
}



@keyframes b-armMove {
	from, to {transform: rotate(90deg)}
	10%, 80% {transform: rotate(0deg)}
}
@keyframes b-beltL {
	from {background-position: 0 0}
	to {background-position: -3.3em 0}
}
@keyframes b-beltR {
	from {background-position: 0 100%}
	to {background-position: 3.3em 100%}
}
@keyframes b-rotate {
	from {transform: rotate(0)}
	to {transform: rotate(-1turn)}
}
@keyframes b-tableFlip {
	from {transform: translate(0) rotate(0)}
	12.5% {transform: translate(0.5em,-2em) rotate(45deg)}
	25% {transform: translate(2em,-3.5em) rotate(90deg)}
	37.5% {transform: translate(3.25em,-4em) rotate(135deg)}
	50% {transform: translate(4.5em,-4em) rotate(180deg)}
	62.5% {transform: translate(5.75em,-4em) rotate(225deg)}
	87.5% {transform: translate(8.75em,-2em) rotate(315deg)}
	to {transform: translate(9.85em,0) rotate(360deg)}
}
@keyframes b-tableMove {
	from {transform: translateX(0)}
	to {transform: translateX(-3.3em)}
}

</style>
</head>
<body>

</body>
</html>