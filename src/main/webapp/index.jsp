<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
   integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
   crossorigin="anonymous">
   
   <link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/shotcuticon.png"
	type="image/x-icon">
   
   <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
  integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
  integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <title>SEW</title>
    <!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
  integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
  integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/css?family=Jua|Roboto&display=swap" rel="stylesheet">
    <style>
/* 전체 틀 */
html, body {
	height: 100%;
	margin: 0;
	font-family: 'Jua', sans-serif;
}

.tab, #tab0, #tab1, #tab2, #tab3, #tab4 {
	height: 100%;
	position: absolute;
	box-shadow: 6px 0px 6px rgba(0, 0, 0, 0.3);
	transition: all 0.5s ease;
	text-align: center;
}

.tab:hover ~ div, #tab0:hover ~ div, #tab1:hover ~ div, #tab2:hover ~
	div, #tab3:hover ~ div, #tab4:hover ~ div {
	transform: translateX(-80vw);
}

#tab3:hover .wra3 {
	opacity: 1;
}

#tab2:hover .wra2 {
	opacity: 1;
}

#tab1:hover .wra1 {
	opacity: 1;
}

#tab0:hover .wra0 {
	opacity: 1;
}

#tab0 {
	width: 100vw;
	background: black;
}

#tab1 {
	width: 95vw;
	background: #31152b;
}
/* #tab1::after {
            content: '';
            position: absolute;
            width: 5vw;
            height: 25vh;
            background: #31152b;
            border-radius: 0 20px 20px 0;
            top: 75%;
            right: -5vw;
        }   */
        #tab2 {
            width: 90vw;
            background: #723147;
        }
        #tab2::after {
            content: '';
            position: absolute;
            width: 5vw;
            height: 25vh;
            background: #723147;
            border-radius: 0 20px 20px 0;
            top: 50%;
            right: -5vw;
        }
        #tab3 {
            width: 85vw;
            background: #cc4452;
        }
        #tab3::after {
            content: '';
            position: absolute;
            width: 5vw;
            height: 25vh;
            background: #cc4452;
            border-radius: 0 20px 20px 0;
            top: 25%;
            right: -5vw;
        }
        #tab4 {
            width: 80vw;
            /* background: #e6b098; */
            background: #8A4B08;
        }
        #tab4::after {
            content: '';
            position: absolute;
            width: 5vw;
            height: 25vh;
            background-image: url(resources/images/메인책갈피.jpg);
            border-radius: 0 20px 20px 0;
            top: 0;
            right: -5vw;
        }

#tab3::after {
	content: '';
	position: absolute;
	width: 5vw;
	height: 25vh;
	background: #cc4452;
	border-radius: 0 20px 20px 0;
	top: 25%;
	right: -5vw;
}

#tab4 {
	width: 80vw;
	/* background: #e6b098; */
	background: #8A4B08;
}

#tab4::after {
	content: '';
	position: absolute;
	width: 5vw;
	height: 25vh;
	background-image: url(resources/images/메인책갈피.jpg);
	border-radius: 0 20px 20px 0;
	top: 0;
	right: -5vw;
}

.wrapper {
	/* height: 100%; 
            width: 100%;  */
        }

        .message {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            width: 100%; 
            height:25%;
            bottom: 0; 
            display: block;
            position: absolute;
            background-color: rgba(0,0,0,0.6);
            color: #fff;
            padding: 0.5em;
        }

        .wra3, .wra2, .wra1, .wra0 {
            opacity: 0;
        }

        /* tab0 */
        @import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300);
        #tab0 {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
        font-weight: 300;
        }
        #tab0 {
        /* font-family: 'Source Sans Pro', sans-serif; */
        color: white;
        font-weight: 300;
        }
        #tab0 ::-webkit-input-placeholder {
        /* WebKit browsers */

        /* font-family: 'Source Sans Pro', sans-serif; */
        color: white;
        font-weight: 300;
        }
        #tab0 :-moz-placeholder {
        /* Mozilla Firefox 4 to 18 */

        /* font-family: 'Source Sans Pro', sans-serif; */
        color: white;
        opacity: 1;
        font-weight: 300;
        }
        #tab0 ::-moz-placeholder {
        /* Mozilla Firefox 19+ */

        /* font-family: 'Source Sans Pro', sans-serif; */
        color: white;
        opacity: 1;
        font-weight: 300;
        }
        #tab0 > * {
        	font-family: 'Nanum Gothic', sans-serif;
  			font-weight: 700;
        }
        #tab0 :-ms-input-placeholder {
        /* Internet Explorer 10+ */
		
        /* font-family: 'Source Sans Pro', sans-serif; */
        color: white;
        font-weight: 300;
        }
        #tab0 .wrapper {
        background:rgba(154, 234, 247, 0.9);
        position: absolute;
        top: 50%;
        left: 0;
        width: 100%;
        height: 400px;
        margin-top: -200px;
        overflow: hidden;
        }
        #tab0 .wrapper.form-success .container h1 {
        transform: translateY(85px);
        }
        #tab0 .container {
        max-width: 600px;
        margin: 0 auto;
        margin-top: -40px;
        padding: 80px 0;
        height: 500px;
        text-align: center;
        }
        #tab0 .container h1 {
        font-size: 40px;
        transition-duration: 1s;
        transition-timing-function: ease-in-put;
        font-weight: 200;
        }
        #tab0 form {
        padding: 20px 0;
        position: relative;
        z-index: 2;
        }
        #tab0 form input {
        appearance: none;
        outline: 0;
        border: 1px solid rgba(255, 255, 255, 0.4);
        background-color: rgba(255, 255, 255, 0.2);
        width: 250px;
        border-radius: 3px;
        padding: 10px 15px;
        margin: 0 auto 10px auto;
        display: block;
        text-align: center;
        font-size: 18px;
        color: white;
        transition-duration: 0.25s;
        font-weight: 300;
        }
        #tab0 form input:hover {
        background-color: rgba(255, 255, 255, 0.4);
        }
        #tab0 form input:focus {
        background-color: white;
        width: 300px;
        color: rgba(154, 234, 247, 0.9);
        }
        #tab0 form button {
        appearance: none;
        outline: 0;
        background-color: white;
        border: 0;
        padding: 10px 15px;
        color: rgba(154, 234, 247, 0.9);
        border-radius: 3px;
        width: 250px;
        cursor: pointer;
        font-size: 18px;
        transition-duration: 0.25s;
        }
        #tab0 form button:hover {
        background-color: #f5f7f9;
        }
        #tab0 .bg-bubbles {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 1;
        }
        .bg-bubbles li {
        position: absolute;
        list-style: none;
        display: block;
        width: 40px;
        height: 40px;
        background-color: rgba(255, 255, 255, 0.15);
        bottom: -160px;
        -webkit-animation: square 25s infinite;
        animation: square 25s infinite;
        -webkit-transition-timing-function: linear;
        transition-timing-function: linear;
        }
        .bg-bubbles li:nth-child(1) {
        left: 10%;
        }
        .bg-bubbles li:nth-child(2) {
        left: 20%;
        width: 80px;
        height: 80px;
        animation-delay: 2s;
        animation-duration: 17s;
        }
        .bg-bubbles li:nth-child(3) {
        left: 25%;
        animation-delay: 4s;
        }
        .bg-bubbles li:nth-child(4) {
        left: 40%;
        width: 60px;
        height: 60px;
        animation-duration: 22s;
        background-color: rgba(255, 255, 255, 0.25);
        }
        .bg-bubbles li:nth-child(5) {
        left: 70%;
        }
        .bg-bubbles li:nth-child(6) {
        left: 80%;
        width: 120px;
        height: 120px;
        animation-delay: 3s;
        background-color: rgba(255, 255, 255, 0.2);
        }
        .bg-bubbles li:nth-child(7) {
        left: 32%;
        width: 160px;
        height: 160px;
        animation-delay: 7s;
        }
        .bg-bubbles li:nth-child(8) {
        left: 55%;
        width: 20px;
        height: 20px;
        animation-delay: 15s;
        animation-duration: 40s;
        }
        .bg-bubbles li:nth-child(9) {
        left: 25%;
        width: 10px;
        height: 10px;
        animation-delay: 2s;
        animation-duration: 40s;
        background-color: rgba(255, 255, 255, 0.3);
        }
        .bg-bubbles li:nth-child(10) {
        left: 90%;
        width: 160px;
        height: 160px;
        animation-delay: 11s;
        }
        @-webkit-keyframes square {
        0% {
            transform: translateY(0);
        }
        100% {
            transform: translateY(-700px) rotate(600deg);
        }
        }
        @keyframes square {
        0% {
            transform: translateY(0);
        }
        100% {
            transform: translateY(-700px) rotate(600deg);
        }
        }
        
        /* tab image, h1 */
        .img-base {
            background-position: center center;
            background-repeat:  no-repeat;
            background-attachment: fixed;
            background-size:  cover;
            background-color: #999;
        }

        .h1-base {
            /* margin-left: 11vw; */
            /* font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; */
            font-weight: bold;
            font-size: 40px;
        }

        .font {
            position: absolute;
            top: 70vh;
            left: 50%;
            transform: translate(-50%, -50%);
            background: white;
        }

        /* tab1 */
        .tab1-img {
            width: 50vw;
            height: 60vh;
            margin-top: 7vh;
        }

        /* tab3 */
        .tab1-img1 {
            width: 50vw;
            height: 60vh;
            margin-top: 7vh;
        }

        /* tab2 */
        .tab2-img {
            width: 50vw;
            height: 60vh;
            margin-top: 7vh;
        }

        /* tab3 */
        .tab3-img1 {
            width: 50vw;
            height: 60vh;
            margin-top: 7vh;
        }

        .tab3-img2 {
            width: 50vw;
            height: 60vh;
            margin-top: 7vh;
        }

        /* tab4 */
        #tab4 { 
            background-image: url(resources/images/메인.jpg) ;
            background-position: center center;
            background-repeat:  no-repeat;
            background-attachment: fixed;
            background-size:  cover;
            background-color: #999;
        }

        #tab4{
            padding: 0;
            /* font-family: exo, sans-serif; */
        }
        
        .logintest {
		   opacity: 1;
		}
		a:hover{
			text-decoration:none;
		}
    </style>
</head>
<body>
<c:if test="${ !empty sessionScope.loginMember }">
	<script>
		$(function() {
			location.href="viewMain.ad";
		});
	</script>
</c:if>
<c:set var="contextPath" value="${pageContext.request.contextPath}"
	scope="application"/>
    <div id="tab0">
        <div class="wrapper wra0">
            <div class="container">
                <h1>시작하세요!</h1>
    
                <form id="loginform" class="form" method="post" 
               action='${contextPath}/Memberlogin.me'>
               <input type="text" name="loginmId" placeholder="Username"> 
               <input type="password" name="loginpwd" placeholder="Password">
               <button type="submit" id="login-button" style="margin-bottom: -15px;">Login</button>
               <br><br><p><a href="login.me?n=n" style="margin-bottom: -15px;">회원가입</a>
               <br><a href="viewMain.ad">다음에 할게요</a>
               </p>
               
            </form>
            </div>
            <ul class="bg-bubbles">
               <li></li>
               <li></li>
               <li></li>
               <li></li>
               <li></li>
               <li></li>
               <li></li>
               <li></li>
               <li></li>
               <li></li>
              </ul>
        </div>
        <script>
      $(function(){
         $("#loginform > input").focus(function(){
            $(".tab ~ div").css("transform"," translateX(-80vw)");
            $("#tab0 ~ div").css("transform"," translateX(-80vw)");
            $("#tab1 ~ div").css("transform"," translateX(-80vw)");
            $("#tab2 ~ div").css("transform"," translateX(-80vw)");
            $("#tab3 ~ div").css("transform"," translateX(-80vw)");
            $("#tab4 ~ div").css("transform"," translateX(-80vw)");
            $(".sidemenu").css('pointer-events','none');
            $(".wrapper").addClass("logintest");
         });
          $("#loginform > input").focusout(function(){
             $(".tab ~ div").css("transform","");
             $("#tab0 ~ div").css("transform","");
             $("#tab1 ~ div").css("transform","");
             $("#tab2 ~ div").css("transform","");
             $("#tab3 ~ div").css("transform","");
             $("#tab4 ~ div").css("transform","");
            $(".sidemenu").css('pointer-events','');
            $(".wrapper").removeClass("logintest");
            
         }); 
      });
   </script>
    </div>

    <div id="tab1">
        <img src="resources/images/시험.jpg" class="img-base tab1-img"><!-- 클래스와 시험 사진 -->
        <div class="wrapper wra1">
            <div class="message msg1">
                <h1>틈틈히 자신이 외운 영단어를 시험해보세요!</h1>    
                <p>매일 암기만 하는 것은 효율적인 학습 방법이 아닙니다. 인풋(input)과 아웃풋(output)의 비율을 3:7로 유지하여 공부하는 것이 바람직하다고 합니다.<br>
                	영단어 암기의 꽃은 '외운 단어 테스트'입니다. 바로 자신의 실력을 확인하세요!</p>
            </div>
        </div>
    </div>

    <div id="tab2">
        <img src="resources/images/클래스.jpg" class="img-base tab2-img"><!-- 단어 활용 게임 사진 -->

        <div class="wrapper wra2">
            <div class="message">
                <h1>더이상 혼자 지루하게 공부하지 마세요!</h1>    
                <p>일반적으로 혼자 공부하는 것보다 같은 목표를 가진 사람들과 협동하여 재밌게 공부하는게 더 성공 확률이 높다는 것을 알고 계신가요?<br>
                	우리 홈페이지에서는 함께 공부하실 수 있도록 스터디를 만들어 클래스 멤버들과 함께 목표를 달성할 수 있는 기능이 있답니다!</p>
            </div>
        </div>
    </div>

    <div id="tab3" class="sidemenu">
        <!-- <img src="img/1.PNG" alt="" class="img-base tab3-img1"> -->
        <img src="resources/images/단어추가.png" class="img-base tab3-img2"><!-- 단어 추가 사진 -->
        <div class="wrapper wra3">
            <div class="message">
                <h1>자신만의 영어 단어장을 만들고, 공부하세요!</h1>    
                <p>
                	각자 외우고 싶거나, 외워야 할 영단어의 목록이 다르실 겁니다.<br>
                	자신에게 필요한 영단어만 추가해 공부를 더 효율적으로 하세요!
                </p>
            </div>
        </div>
    </div>

    <div id="tab4" class="sidemenu">
        <!-- <img src="img/1대1.jpg" class="img-base">
        <div class="font">
        <h1 class="h1-base">온라인으로 단어를 함께 공부해 나가는 선생님을 만나보세요!</h1>
        </div>
        <p></p> -->

        <div class="wrapper wra4">
       		<c:url var="admin2" value="selectInquireList.ad"/>
            <div class="message">
                <h1>온라인으로 다양한 단어들을 관리하고, 함께 공부할 친구를 찾으세요!</h1>    
                <p>저희 '외웟' 홈페이지에서는 자신의 단어장을 만들고, 단어를 쉽게 외우게 하기 위한 재밌는 게임으로 공부를 할 수 있으며, 클래스를 꾸려 함께 공부할 수 있는 홈페이지입니다.</p>
            </div>
        </div>
    </div>
</body>
</html>