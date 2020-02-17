<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SEW</title>
    <style>
        /* 전체 틀 */
        html, body {
            height: 100%;
            margin: 0;
        }
        .tab, #tab0, #tab1, #tab2, #tab3, #tab4 {
            height: 100%;
            position: absolute;
            box-shadow: 6px 0px 6px rgba(0, 0, 0, 0.3);
            transition: all 0.5s ease;
            text-align: center;
        }
        .tab:hover ~ div, #tab0:hover ~ div, #tab1:hover ~ div, #tab2:hover ~ div, #tab3:hover ~ div, #tab4:hover ~ div {
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
        #tab1::after {
            content: '';
            position: absolute;
            width: 5vw;
            height: 25vh;
            background: #31152b;
            /* background: rgba(0,0,0,0.6); */
            border-radius: 0 20px 20px 0;
            top: 75%;
            right: -5vw;
        }
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
            background: #e6b098;
        }
        #tab4::after {
            content: '';
            position: absolute;
            width: 5vw;
            height: 25vh;
            /* background: #e6b098; */
            background: lightgray;
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
        font-family: 'Source Sans Pro', sans-serif;
        color: white;
        font-weight: 300;
        }
        #tab0 ::-webkit-input-placeholder {
        /* WebKit browsers */

        font-family: 'Source Sans Pro', sans-serif;
        color: white;
        font-weight: 300;
        }
        #tab0 :-moz-placeholder {
        /* Mozilla Firefox 4 to 18 */

        font-family: 'Source Sans Pro', sans-serif;
        color: white;
        opacity: 1;
        font-weight: 300;
        }
        #tab0 ::-moz-placeholder {
        /* Mozilla Firefox 19+ */

        font-family: 'Source Sans Pro', sans-serif;
        color: white;
        opacity: 1;
        font-weight: 300;
        }
        #tab0 :-ms-input-placeholder {
        /* Internet Explorer 10+ */

        font-family: 'Source Sans Pro', sans-serif;
        color: white;
        font-weight: 300;
        }
        #tab0 .wrapper {
        background: #50a3a2;
        background: -webkit-linear-gradient(top left, #50a3a2 0%, #53e3a6 100%);
        background: -moz-linear-gradient(top left, #50a3a2 0%, #53e3a6 100%);
        background: -o-linear-gradient(top left, #50a3a2 0%, #53e3a6 100%);
        background: linear-gradient(to bottom right, #50a3a2 0%, #53e3a6 100%);
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
        padding: 80px 0;
        height: 400px;
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
        color: #53e3a6;
        }
        #tab0 form button {
        appearance: none;
        outline: 0;
        background-color: white;
        border: 0;
        padding: 10px 15px;
        color: #53e3a6;
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
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
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
            width: 35vw;
            height: 60vh;
            margin-top: 7vh;
        }

        /* tab3 */
        .tab1-img1 {
            width: 35vw;
            height: 60vh;
            margin-top: 7vh;
        }

        /* tab2 */
        .tab2-img {
            width: 35vw;
            height: 60vh;
            margin-top: 7vh;
        }

        /* tab3 */
        .tab3-img1 {
            width: 35vw;
            height: 60vh;
            margin-top: 7vh;
        }

        .tab3-img2 {
            width: 35vw;
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
            font-family: exo, sans-serif;
        }
    </style>
</head>
<body>
    <div id="tab0">
        <div class="wrapper wra0">
            <div class="container">
                <h1>Welcome</h1>
    
                <form class="form">
                    <input type="text" placeholder="Username">
                    <input type="password" placeholder="Password">
                    <button type="submit" id="login-button">Login</button>
                    <p><a href="" onclick="">다음에 할게요</a></p>
                </form>
            </div>
        </div>
        <script>
            $("#login-button").click(function (event) {
                event.preventDefault();

                $('form').fadeOut(500);
                $('.wrapper').addClass('form-success');
            });
        </script>
    </div>

    <div id="tab1">
        <img src="img/3.PNG" class="img-base tab1-img">
        <div class="wrapper wra1">
            <div class="message msg1">
                <h1>온라인으로 나만의 단어장과 함께 공부할 친구를 찾으세요!</h1>    
                <p>저희 '외웟' 홈페이지에서는 자신의 단어장을 만들고, 그로 인해 재밌는 게임으로 공부를 할 수 있으며, 클래스를 꾸려 함께 공부할 수 있게 해놓았습니다.</p>
            </div>
        </div>
    </div>

    <div id="tab2">
        <img src="img/2-2.PNG" class="img-base tab2-img">
        <div class="wrapper wra2">
            <div class="message">
                <h1>온라인으로 나만의 단어장과 함께 공부할 친구를 찾으세요!</h1>    
                <p>저희 '외웟' 홈페이지에서는 자신의 단어장을 만들고, 그로 인해 재밌는 게임으로 공부를 할 수 있으며, 클래스를 꾸려 함께 공부할 수 있게 해놓았습니다.</p>
            </div>
        </div>
    </div>

    <div id="tab3">
        <img src="img/1.PNG" alt="" class="img-base tab3-img1">
        <img src="img/2-1.PNG" class="img-base tab3-img2">
        <div class="wrapper wra3">
            <div class="message">
                <h1>온라인으로 나만의 단어장과 함께 공부할 친구를 찾으세요!</h1>    
                <p>저희 '외웟' 홈페이지에서는 자신의 단어장을 만들고, 그로 인해 재밌는 게임으로 공부를 할 수 있으며, 클래스를 꾸려 함께 공부할 수 있게 해놓았습니다.</p>
            </div>
        </div>
    </div>

    <div id="tab4">
        <!-- <img src="img/1대1.jpg" class="img-base">
        <div class="font">
        <h1 class="h1-base">온라인으로 단어를 함께 공부해 나가는 선생님을 만나보세요!</h1>
        </div>
        <p></p> -->

        <div class="wrapper wra4">
	        <c:url var="admin1" value="inquire.ad"/>
			<button onclick="location.href='${ admin1 }'">inquire.ad</button>
			<c:url var="admin2" value="memberManage.ad"/>
			<button onclick="location.href='${ admin2 }'">memberManage.ad</button>
			<c:url var="class1" value="classify.cl"/>
			<button onclick="location.href='${ class1 }'">classify.cl</button>
			<c:url var="class2" value="total.cl"/>
			<button onclick="location.href='${ class2 }'">total.cl</button>
			<c:url var="inquire" value="inquire.in"/>
			<button onclick="location.href='${ inquire }'">inquire.in</button>
			<c:url var="visit1" value="day.vi"/>
			<button onclick="location.href='${ visit1 }'">day.vi</button>
			<c:url var="visit2" value="month.vi"/>
			<button onclick="location.href='${ visit2 }'">month.vi</button>
			<c:url var="visit3" value="time.vi"/>
			<button onclick="location.href='${ visit3 }'">time.vi</button>
			<c:url var="voca1" value="classify.voca"/>
			<button onclick="location.href='${ voca1 }'">classify.voca</button>
			<c:url var="voca2" value="total.voca"/>
			<button onclick="location.href='${ voca2 }'">total.voca</button>
            <div class="message">
                <h1>온라인으로 나만의 단어장과 함께 공부할 친구를 찾으세요!</h1>    
                <p>저희 '외웟' 홈페이지에서는 자신의 단어장을 만들고, 그로 인해 재밌는 게임으로 공부를 할 수 있으며, 클래스를 꾸려 함께 공부할 수 있게 해놓았습니다.</p>
            </div>
        </div>
    </div>
</body>
</html>