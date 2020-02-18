<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
	  <c:set var="contextPath" value="${ pageContext.request.contextPath }" scope="application"/>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
  integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
  integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
  integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


<link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
<script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>

<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
  @import url(https://fonts.googleapis.com/css?family=Raleway);
body {
  margin: 0px;
  background:whitesmoke;
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


.link-1 {
  transition: 0.3s ease;
  background: #cff0da;
  color: #88dba3;
  font-size: 20px;
  text-decoration: none;
  border-top: 4px solid #cff0da;
  border-bottom: 4px solid #cff0da;
  padding: 20px 0;
  margin: 0 20px;
}
.link-1:hover {
  border-top: 4px solid #88dba3;
  border-bottom: 4px solid #88dba3;
  padding: 6px 0; 
}
.gonav{
  font-size: 15px;
  text-decoration: none;
  
  margin:9px;
  float:right;
}
#sewlogo{
  width:70px; height: 70px;margin-top: -20px;
  position:absolute;
  left:100px;
}
</style>

</head>

<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}"
	scope="application"/>
<c:set var="loginpage" value="login.me"/>
  <div style="width:100%; height:40px; text-align: right">
    <a class="gonav" href="${ loginpage }">아이디 비밀번호찾기</a>
    <a class="gonav" href="${ loginpage }">회원가입</a> 
    <a class="gonav" href="${ loginpage }">로그인</a> 
</div>
<nav id="nav-1">
  <a class="link-2" href="#"><img id="sewlogo"src="${contextPath}/resources/images/로고.jpg"></a>
  <a class="link-1" href="#">Home</a>
  <a class="link-1" href="#">단어장</a>
  <a class="link-1" href="ClassList.do">클래스</a>
  <a class="link-1" href="#">고객센터</a>
</nav>
</body>
</html>