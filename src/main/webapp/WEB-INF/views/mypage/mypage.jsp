<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
        crossorigin="anonymous">
    <style>

        .mypageicon{ 
   float:left; 
   border-top-left-radius: 10%;
   border-top-right-radius: 10%;
   border-bottom-left-radius: 10%;
   border-bottom-right-radius: 10%;
  
   
   box-shadow: 5px 5px 5px;
   width:150px;
   height:150px;
   margin-left:10%;
   margin-top:16%;
   float:left;
 }

body {
  margin: 0px;
}

.mypageicon >img:hover{
  cursor: pointer;
}
.mypagecontent{
   height:750px;
   margin-left:25%;
   margin-top:50px;
   width:700px;
  display:none;
    border:1px solid black;
  border-top-left-radius: 3%;
   border-top-right-radius: 3%;
   border-bottom-left-radius: 3%;
   border-bottom-right-radius: 3%;
   
}
#myintroduce{
    width:100%;
    height:90%;
    margin-left:5%;
    resize: none;
}
.myicon{
  width:100%; 
  height:150px;
 
   border-top-left-radius: 10%;
   border-top-right-radius: 10%;
   border-bottom-left-radius: 10%;
   border-bottom-right-radius: 10%;
}
#profilecontent{
    
    background:rgb(27,188,155);
}
#profilephoto{
  width:40%; 
  height:300px;
  background:white; 
  margin:2.5%;
  border-top-left-radius: 3%;
  border-top-right-radius: 3%;
  border-bottom-left-radius: 3%;
  border-bottom-right-radius: 3%;
  text-align: center;
  float:left;
}
.profilespan{
  width:15%; 
  margin:5%;
  margin-left:20%;
}
#profilechangebtn{
  width:30%;
  height:40px;
  margin-left:35%;
  margin-bottom: 20px;
}
#photoinput{
  height: 100%; width:100%;
  display:none;
}
#myphoto{
 height:100%;
 width: auto;
 max-width: 100%;
}
#myphoto:hover{
  cursor: pointer;
}

.col-form-label{
 width:20%;
  margin-left:10%;
  float: left;
  margin-right: 15%;
}
*, *:before, *:after {
-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;
}


#calendar {
  -webkit-transform: translate3d(0, 0, 0);
  -moz-transform: translate3d(0, 0, 0);
  transform: translate3d(0, 0, 0);
  width: 90%;
  margin: 3% auto;
 height:100%;
  
}

.header {
  height: 50px;
  width: 100%;
  background: rgb(95, 236, 59);
  text-align: center;
  position:relative;
  z-index: 100;
}

.header h1 {
  margin: 0;
  padding: 0;
  font-size: 20px;
  line-height: 50px;
  font-weight: 100;
  letter-spacing: 1px;
}

.left, .right {
  position: absolute;
  width: 0px;
  height: 0px;
  border-style: solid;
  top: 50%;
  margin-top: -7.5px;
  cursor: pointer;
}

.left {
  border-width: 7.5px 10px 7.5px 0;
  border-color: transparent rgba(160, 159, 160, 1) transparent transparent;
  left: 20px;
}

.right {
  border-width: 7.5px 0 7.5px 10px;
  border-color: transparent transparent transparent rgba(160, 159, 160, 1);
  right: 20px;
}

.month {
  /*overflow: hidden;*/
  opacity: 0;
}

.month.new {
  -webkit-animation: fadeIn 1s ease-out;
  opacity: 1;
}

.month.in.next {
  -webkit-animation: moveFromTopFadeMonth .4s ease-out;
  -moz-animation: moveFromTopFadeMonth .4s ease-out;
  animation: moveFromTopFadeMonth .4s ease-out;
  opacity: 1;
}

.month.out.next {
  -webkit-animation: moveToTopFadeMonth .4s ease-in;
  -moz-animation: moveToTopFadeMonth .4s ease-in;
  animation: moveToTopFadeMonth .4s ease-in;
  opacity: 1;
}

.month.in.prev {
  -webkit-animation: moveFromBottomFadeMonth .4s ease-out;
  -moz-animation: moveFromBottomFadeMonth .4s ease-out;
  animation: moveFromBottomFadeMonth .4s ease-out;
  opacity: 1;
}

.month.out.prev {
  -webkit-animation: moveToBottomFadeMonth .4s ease-in;
  -moz-animation: moveToBottomFadeMonth .4s ease-in;
  animation: moveToBottomFadeMonth .4s ease-in;
  opacity: 1;
}

.week {
 background: rgb(171, 245, 148);
 width:100%;
 height:15%;
}

.day {
  display: inline-block;
  width: 14.28%;
  padding: 10px;
  text-align: center;
  vertical-align: top;
  cursor: pointer;
  background: rgb(126, 224, 87);
  position: relative;
  z-index: 100;
}

.day.other {
 color: rgba(255, 255, 255, .3);

}

.day.today {
  color: rgba(156, 202, 235, 1);
}

.day-name {
  font-size: 9px;
  text-transform: uppercase;
  margin-bottom: 5px;
  color: rgba(0, 0, 0, 0.5);
  letter-spacing: .7px;
}

.day-number {
  font-size: 24px;
  letter-spacing: 1.5px;
}


.day .day-events {
  list-style: none;
  margin-top: 3px;
  text-align: center;
  height: 10px;
  line-height: 6px;
  overflow: hidden;
}

.day .day-events span {
  vertical-align: top;
  display: inline-block;
  padding: 0;
  margin: 0;
  width: 5px;
  height: 5px;
  line-height: 5px;
  margin: 0 1px;
}

.red { background: red; }
.orange { background: orange; }
.yellow { background: yellow; }
.green { background: green; }
.blue { background: blue; }
.purple{background:purple;}
.white{background:white;}
.black{background:black;}

.details {
  position: relative;
  width: 100%;
  height: 80px;
  background: rgb(182, 245, 146);
  
}

.details.in {
  -webkit-animation: moveFromTopFade .5s ease both;
  -moz-animation: moveFromTopFade .5s ease both;
  animation: moveFromTopFade .5s ease both;
}

.details.out {
  -webkit-animation: moveToTopFade .5s ease both;
  -moz-animation: moveToTopFade .5s ease both;
  animation: moveToTopFade .5s ease both;
}

.arrow {
  position: absolute;
  top: -5px;
  left: 50%;
  margin-left: -2px;
  width: 0px;
  height: 0px;
  border-style: solid;
  border-width: 0 5px 5px 5px;
  border-color: transparent transparent rgb(60, 255, 0) transparent;
  transition: all 0.7s ease;
}

.events {
  height: 75px;
  padding: 7px 0;
  overflow-y: auto;
  overflow-x: hidden;
}
.events.in {
  -webkit-animation: fadeIn .3s ease both;
  -moz-animation: fadeIn .3s ease both;
  animation: fadeIn .3s ease both;
}

.events.in {
  -webkit-animation-delay: .3s;
  -moz-animation-delay: .3s;
  animation-delay: .3s;
}

.details.out .events {
  -webkit-animation: fadeOutShrink .4s ease both;
  -moz-animation: fadeOutShink .4s ease both;
  animation: fadeOutShink .4s ease both;
}

.events.out {
  -webkit-animation: fadeOut .3s ease both;
  -moz-animation: fadeOut .3s ease both;
  animation: fadeOut .3s ease both;
}

.event {
  font-size: 16px;
  line-height: 22px;
  letter-spacing: .5px;
  padding: 2px 16px;
  vertical-align: top;
}

.event.empty {
  color: rgb(0, 0, 0);
}

.event-category {
  height: 10px;
  width: 10px;
  display: inline-block;
  margin: 6px 0 0;
  vertical-align: top;
}

.event span {
  display: inline-block;
  padding: 0 0 0 7px;
}

.legend {
  position: absolute;
  width: 100%;
  
  background: rgb(196, 219, 196);
  line-height: 30px;
  bottom:10%
}

.entry {
  position: relative;
  padding: 0 0 0 25px;
  font-size: 13px;
  display: inline-block;
  line-height: 30px;
  background: transparent;
}

.entry:after {
  position: absolute;
  content: '';
  height: 5px;
  width: 5px;
  top: 12px;
  left: 14px;
}
.entry.red:after { background: red; }
.entry.orange:after { background: orange; }
.entry.yellow:after { background: yellow; }
.entry.green:after { background: green; }
.entry.blue:after { background: blue; }
.entry.purple:after{background:purple;}
.entry.white:after {background:white;}
.entry.black:after{background:black;}
/* Animations are cool!  */
@-webkit-keyframes moveFromTopFade {
  from { opacity: .3; height:0px; margin-top:0px; -webkit-transform: translateY(-100%); }
}
@-moz-keyframes moveFromTopFade {
  from { height:0px; margin-top:0px; -moz-transform: translateY(-100%); }
}
@keyframes moveFromTopFade {
  from { height:0px; margin-top:0px; transform: translateY(-100%); }
}

@-webkit-keyframes moveToTopFade {
  to { opacity: .3; height:0px; margin-top:0px; opacity: 0.3; -webkit-transform: translateY(-100%); }
}
@-moz-keyframes moveToTopFade {
  to { height:0px; -moz-transform: translateY(-100%); }
}
@keyframes moveToTopFade {
  to { height:0px; transform: translateY(-100%); }
}

@-webkit-keyframes moveToTopFadeMonth {
  to { opacity: 0; -webkit-transform: translateY(-30%) scale(.95); }
}
@-moz-keyframes moveToTopFadeMonth {
  to { opacity: 0; -moz-transform: translateY(-30%); }
}
@keyframes moveToTopFadeMonth {
  to { opacity: 0; -moz-transform: translateY(-30%); }
}

@-webkit-keyframes moveFromTopFadeMonth {
  from { opacity: 0; -webkit-transform: translateY(30%) scale(.95); }
}
@-moz-keyframes moveFromTopFadeMonth {
  from { opacity: 0; -moz-transform: translateY(30%); }
}
@keyframes moveFromTopFadeMonth {
  from { opacity: 0; -moz-transform: translateY(30%); }
}

@-webkit-keyframes moveToBottomFadeMonth {
  to { opacity: 0; -webkit-transform: translateY(30%) scale(.95); }
}
@-moz-keyframes moveToBottomFadeMonth {
  to { opacity: 0; -webkit-transform: translateY(30%); }
}
@keyframes moveToBottomFadeMonth {
  to { opacity: 0; -webkit-transform: translateY(30%); }
}

@-webkit-keyframes moveFromBottomFadeMonth {
  from { opacity: 0; -webkit-transform: translateY(-30%) scale(.95); }
}
@-moz-keyframes moveFromBottomFadeMonth {
  from { opacity: 0; -webkit-transform: translateY(-30%); }
}
@keyframes moveFromBottomFadeMonth {
  from { opacity: 0; -webkit-transform: translateY(-30%); }
}

@-webkit-keyframes fadeIn  {
  from { opacity: 0; }
}
@-moz-keyframes fadeIn  {
  from { opacity: 0; }
}
@keyframes fadeIn  {
  from { opacity: 0; }
}

@-webkit-keyframes fadeOut  {
  to { opacity: 0; }
}
@-moz-keyframes fadeOut  {
  to { opacity: 0; }
}
@keyframes fadeOut  {
  to { opacity: 0; }
}

@-webkit-keyframes fadeOutShink  {
  to { opacity: 0; padding: 0px; height: 0px; }
}
@-moz-keyframes fadeOutShink  {
  to { opacity: 0; padding: 0px; height: 0px; }
}
@keyframes fadeOutShink  {
  to { opacity: 0; padding: 0px; height: 0px; }
}
.scbtn{
    text-align: center;
    width:38px;
    position:absolute;
    right:5%;
    top:30%;
    border: 1px solid transparent;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: .25rem;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}
.modal-backdrop {
    /* bug fix - no overlay */    
    display: none;    
}
.modal-body > .form-control{
	width:48%;
	float:left;
	text-align:center;
}
.modal-body > label{
	width:20%;
	float:left;
	line-height: 35px;
    font-size: 1.1em;
    margin-right:10px;
    margin-left:16%;
}
.modal-content{
	background:whitesmoke;
}
.changescbtn{
	background-image: url( "resources/images/변경.png" );
	background-repeat: no-repeat;
	background-size: cover;
	width:22px;
	height:22px; 
	float:right;
	margin-right:20px;
	display:none;
}
.deletescbtn{
	background-image: url( "resources/images/삭제.png" );
	background-repeat: no-repeat;
	background-size: cover;
	width:22px;
	height:22px; 
	float:right;
	margin-right:100px;
	display:none;
}
</style>
</head>

<body>
    <script>
        window.onload = function () {
        	scdraw();
            var img = document.getElementById("myphoto");
            if (img.getAttribute("src") == null) {
                img.style.width = '100%';
            }

        };
    </script>
    <c:if test="${ loginMember.profileimg =='defaultimg.png' }">
    	<script>
    		$(function(){
    			alert("처음 오셨습니다. 프로필을 작성해주세요 ^^");
    			$("#profile").click();
    		});
    	</script>
    </c:if>	
    <c:set var="contextPath" value="${pageContext.request.contextPath}"
	scope="application"/>
    <jsp:include page="../common/menubar.jsp"/>
    <div id="profile" class="mypageicon">
		<figure>
		    <img src="${ contextPath }/resources/images/user.png" class="myicon">
		    <figcaption style="text-align:center; font-size:18px; margin-top:10px;">프로필 관리</figcaption>
	   </figure>
    </div>
	<div id="class" class="mypageicon">
		<figure>
		    <img src="${ contextPath }/resources/images/로고.jpg" class="myicon">
		    <figcaption style="text-align:center; font-size:18px; margin-top:10px;">내 클래스</figcaption>
	   </figure>
	</div>
    <div id="dan" class="mypageicon">
    	<figure>
		    <img src="${ contextPath }/resources/images/word.png" class="myicon">
		    <figcaption style="text-align:center; font-size:18px; margin-top:10px;">내 단어장</figcaption>
	   </figure>
	 </div>
    <div id="tmzp" class="mypageicon">
    	<figure>
			<img src="${ contextPath }/resources/images/스케쥴.png" class="myicon">	
		    <figcaption style="text-align:center; font-size:18px; margin-top:10px;">일정 관리</figcaption>
	   </figure>
    </div>
    <div id="fix" class="mypageicon">
    	<figure>
		    <img src="${ contextPath }/resources/images/수정.png" class="myicon">
		    <figcaption style="text-align:center; font-size:18px; margin-top:10px;">개인정보 관리</figcaption>
	   </figure>
    </div>
    <!-- 프로필 수정 페이지 -->
    <div id="profilecontent" class="mypagecontent">
        <!-- 프로필 사진 -->
        <form method="post" action="profile.me" enctype="multipart/form-data">
        <input type="text"name="mId" style="display:none;" value="${loginMember.mId }">
        <figure id="profilephoto">
            <input type="file" id="photoinput" name="photoinput" accept=".jpg,.jpeg,.png,.gif">
            <img id="myphoto" src="${contextPath }/resources/profileimg/${loginMember.profileimg}" onclick="$('#photoinput').click();" />
            <!-- <figcaption>학생</figcaption> 회원  등급 -->
        </figure>
        <div style="background: white; width:50%; margin:2.5%; height:300px; float:left;">
            <!-- 이름 -->
            <div class="form-group row" style="margin-top:10%;">
                <label for="username" class="col-form-label">이름</label>
                <input type="text" readonly class="form-control" id="username" value="${loginMember.name }"
                 style="width:40%;  float: left;">
            </div>
            <!-- 닉네임 -->
            <div class="form-group row">
                <label for="mynickname" class="col-form-label">닉네임</label>
                <input type="text" class="form-control" id="mynickname" name="nickname"
                 value="${loginMember.nickname }" style="width:40%;  float: left;">
            </div>
            <!-- 관심분야 -->
            <div class="input-group mb-3" style="width:120px; margin-left:8%; float: left; ">
                <div class="input-group-prepend">
                    <div class="input-group-text">
                        <input type="checkbox" id="inter1">
                    </div>
                </div>
                <label for="inter1" type="text" class="form-control">토익</label>
            </div>

            <div class="input-group mb-3" style="width:120px; margin-left:8%; float: left; ">
                <div class="input-group-prepend">
                    <div class="input-group-text">
                        <input type="checkbox" id="inter2" >
                    </div>
                </div>
                <label for="inter2" type="text" class="form-control">수능</label>
            </div>

            <div class="input-group mb-3" style="width:120px; margin-left:8%; float: left; ">
                <div class="input-group-prepend">
                    <div class="input-group-text">
                        <input type="checkbox" id="inter3" >
                    </div>
                </div>
                <label for="inter3" type="text" class="form-control">스피킹</label>
            </div>

            <div class="input-group mb-3" style="width:120px; margin-left:8%; float: left; ">
                    <div class="input-group-prepend">
                        <div class="input-group-text">
                            <input type="checkbox" id="inter4" >
                        </div>
                    </div>
                    <label for="inter4" type="text" class="form-control">공부</label>
                </div>
        </div>

        <div style="background: white; width:95%; height:40%; margin:2.5%; float:left;">
            
                <br>
                <div class="form-group row" style="float:left; width:100%; height:250px;">
                    <textarea class="form-control" id="myintroduce"name="introduce"
                     placeholder="자기소개" rows="3">${loginMember.introduce}</textarea>
                </div>
            
            <!-- 자기 소개 -->

            <button class="btn btn-success" id="profilechangebtn">프로필 수정</button>
           
        </div>
		 </form>
    </div>
    <script>
        // 사진 미리보기 함수 
        $("#photoinput").change(function () {
            readURL(this);
            $("#myphoto").css("width", "auto");
            //var d = $("#photoinput").val();
            //var file = d.substring(d.lastIndexOf("\\")+1, );
            //$("#myphoto").attr("src",file);
        });

    </script>
	<!-- 클래스 리스트 페이지 -->
    <div id="classcontent" class="mypagecontent" style="background:rgba(243, 156, 17)">

		클래스리스트
    </div>


    <!-- 단어장 리스트 페이지 -->
    <div id="dancontent" class="mypagecontent" style="background:rgba(243, 156, 17)">
	<button class="btn btn-info">햐</button>

    </div>

    <!-- 스케쥴 페이지 -->
    <div id="tmzpcontent" class="mypagecontent" style="background:rgb(184, 138, 203)">
        <div id="calendar"></div>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.5.1/moment.min.js"></script>
    </div>

    <!-- 스케쥴 일정추가 모달 -->
	<!-- Modal -->
	<div class="modal fade" id="scModal" tabindex="-1" role="dialog" aria-labelledby="scModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">일정추가</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body" style="text-align:center;">
	      	<input id="selectedyear" class="form-control" type="text" style="display:none;" > 
	        <input id="selectedday"class="form-control" type="date"> <span style="float:left; font-size:1.5em;"> ~ </span>
	        <input class="form-control" id="selectedday2" type="date" >
	        <br><br>
	        <label for="refselect">참조 항목 :</label>
	        <select id="refselect" class="form-control">    	
	        </select><br><br>
	        <label for="scTitle">일정 내용 :</label>
	        <input class="form-control" type="text" id="scTitle">
	       	<br><br>
	        <label>일정 색깔 :</label> 
	        <select id="sccolor" class="form-control" style="background:red;">
				<option value="red" style="background:red;" selected></option>        	
				<option value="orange" style="background:orange;"></option>
				<option value="yellow" style="background:yellow;"></option>
				<option value="green" style="background:green;"></option>
				<option value="blue" style="background:blue;"></option>
				<option value="purple" style="background:purple;"></option>
				<option value="white" style="background:white;"></option>
				<option value="black" style="background:black;"></option>
	        </select>
	        <script>
	        	$(function(){
	        		$("#sccolor").change(function(){
	        			$(this).css("background",$(this).val());
	        		});
	        	});
	        	
	        </script>
	      </div>
	      <div class="modal-footer">
	        <button type="button" id="closesc" class="btn btn-secondary" data-dismiss="modal">취소</button>
	        <button type="button" id="insertsc" class="btn btn-primary">추가</button>
	        <button type="button" id="updatesc" class="btn btn-primary" style="display:none;">변경</button>
	      </div>
	    </div>
	  </div>
	</div>
    
    
    
    <!-- 정보 수정 페이지 -->
    <div id="fixcontent" class="mypagecontent" style="background:rgb(241, 196, 15)">
        <div class="modal-body" style="width: 90%; margin-left:5%; height:750px; ">
            <form id="insertMemberForm" method="post" onsubmit="return insertcheck();" action='<%=request.getContextPath()%>/insert.me'>
                <div id="signArea">
                    <div class="textdivarea">아이디</div>
                    <div class="inputdivarea">
                        <input type="text" name="userId" required>
                    </div>
                    <div class="commentarea"></div>

                    <div class="textdivarea">비밀번호</div>
                    <div class="inputdivarea">
                        <input type="password" name="userPwd" required>
                    </div>
                    <div class="commentarea"></div>

                    <div class="textdivarea">이름</div>
                    <div class="inputdivarea">
                        <input type="text" name="userName" required>
                    </div>
                    <div class="commentarea"></div>

                    <div class="textdivarea">이메일</div>
                    <div class="inputdivarea">
                        <input type="email" name="userEmail" required style="width:69%;">
                        <input type="button" id="checkemailbtn" class="btn btn-success btn-sm" style="width:30%;" value="인증">
                    </div>
                    <div class="commentarea"></div>
                    <div class="textdivarea">전화번호</div>
                    <div class="inputdivarea">
                        <input type="text" name="userPhone" placeholder="-를 빼고 입력해주세요" required>
                    </div>
                    <div class="commentarea"></div>
                    <div class="textdivarea">생년월일</div>
                    <div class="inputdivarea">
                        <input type="text" name="userBirth" placeholder="ex:19750524" required>
                    </div>
                    <div class="commentarea"></div>
                    <div class="textdivarea">주소</div>
                    <div class="inputdivarea">
                        <input type="text" id="postcode" style="width:69%;" placeholder="우편번호">
                        <input type="button" class="btn btn-success btn-sm" style="width:30%; margin-bottom: 3px;"
                            onclick="execDaumPostcode()" value="우편번호 찾기"><br>
                        <input type="text" id="address" style="margin-bottom: 3px;" placeholder="주소"><br>
                        <input type="text" id="detailAddress" placeholder="상세주소">
                    </div>

                    <button type="submit" id="joinMemberbtn">변경하기</button>
                </div>
            </form>
        </div>

    </div>

    <script>
        $('.mypageicon').click(function () {
            if ($(this).siblings('.mypageicon').css("display") != 'none') {
                $(this).siblings('.mypageicon').css("display", "none");
                var id = $(this).attr('id') + "content";
                $("#"+id).fadeIn(500);
            } else {
                $('.mypagecontent').fadeOut(500);
                setTimeout(function () {
                    $('.mypageicon').css("display", "block");
                }, 500);
            }

        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#myphoto').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

        !function () {

            var today = moment();

            function Calendar(selector, events) {
                this.el = document.querySelector(selector);
                this.events = events;
                this.current = moment().date(1);

                this.draw();
                var current = document.querySelector('.today');
                if (current) {
                    var self = this;
                    window.setTimeout(function () {
                        self.openDay(current);
                    }, 500);
                }
            }
			// 캘린더 그리기 시작
            Calendar.prototype.draw = function () {
				
                this.drawHeader();

                this.drawMonth();

                this.drawLegend();
            }

            Calendar.prototype.drawHeader = function () {
                var self = this;
                if (!this.header) {
                    //Create the header elements
                    this.header = createElement('div', 'header');
                    this.header.className = 'header';

                    this.title = createElement('h1');

                    var right = createElement('div', 'right');
                    right.addEventListener('click', function () { self.nextMonth(); });

                    var left = createElement('div', 'left');
                    left.addEventListener('click', function () { self.prevMonth(); });

                    //Append the Elements
                    this.header.appendChild(this.title);
                    this.header.appendChild(right);
                    this.header.appendChild(left);
                    this.el.appendChild(this.header);
                }

                this.title.innerHTML = this.current.format('MMMM YYYY');
                
                $("#selectedyear").val(this.current.format('YYYY-MM'));
            
            }
            // 월그리기
            Calendar.prototype.drawMonth = function () {
                var self = this;

                this.events.forEach(function (ev) {
                    ev.date = self.current.clone().date(Math.random() * (29 - 1) + 1);
                });


                if (this.month) {
                    this.oldMonth = this.month;
                    this.oldMonth.className = 'month out ' + (self.next ? 'next' : 'prev');
                    this.oldMonth.addEventListener('webkitAnimationEnd', function () {
                        self.oldMonth.parentNode.removeChild(self.oldMonth);
                        self.month = createElement('div', 'month');
                        self.backFill();
                        self.currentMonth();
                        self.fowardFill();
                        self.el.appendChild(self.month);
                        window.setTimeout(function () {
                            self.month.className = 'month in ' + (self.next ? 'next' : 'prev');
                        }, 16);
                    });
                } else {
                    this.month = createElement('div', 'month');
                    this.el.appendChild(this.month);
                    this.backFill();
                    this.currentMonth();
                    this.fowardFill();
                    this.month.className = 'month new';
                }
            }

            Calendar.prototype.backFill = function () {
                var clone = this.current.clone();
                var dayOfWeek = clone.day();

                if (!dayOfWeek) { return; }

                clone.subtract('days', dayOfWeek + 1);

                for (var i = dayOfWeek; i > 0; i--) {
                    this.drawDay(clone.add('days', 1));
                }
            }

            Calendar.prototype.fowardFill = function () {
                var clone = this.current.clone().add('months', 1).subtract('days', 1);
                var dayOfWeek = clone.day();

                if (dayOfWeek === 6) { return; }

                for (var i = dayOfWeek; i < 6; i++) {
                    this.drawDay(clone.add('days', 1));
                }
            }

            Calendar.prototype.currentMonth = function () {
                var clone = this.current.clone();

                while (clone.month() === this.current.month()) {
                    this.drawDay(clone);
                    clone.add('days', 1);
                }
            }

            Calendar.prototype.getWeek = function (day) {
                if (!this.week || day.day() === 0) {
                    this.week = createElement('div', 'week');
                    this.month.appendChild(this.week);
                }
            }

            Calendar.prototype.drawDay = function (day) {
                var self = this;
                this.getWeek(day);

                //Outer Day
                var outer = createElement('div', this.getDayClass(day));
                outer.addEventListener('click', function () {
                    self.openDay(this);
                });

                //Day Name
                var name = createElement('div', 'day-name', day.format('ddd'));

                //Day Number
                var number = createElement('div', 'day-number', day.format('DD'));


                //Events
                var events = createElement('div', 'day-events');
                this.drawEvents(day, events);

                outer.appendChild(name);
                outer.appendChild(number);
                outer.appendChild(events);
                this.week.appendChild(outer);
            }
            // 이벤트 그리기 
            Calendar.prototype.drawEvents = function (day, element) {
                if (day.month() === this.current.month()) {
                    var todaysEvents = this.events.reduce(function (memo, ev) {
                        //console.log(day.format('DD'));
                        //console.log(ev.cday);

                        //if (ev.date.isSame(day, 'day')) {
                        if (ev.cday == day.format('DD') && ev.cmonth == day.format('MM')) {

                            memo.push(ev);
                        }

                        return memo;
                    }, []);

                    todaysEvents.forEach(function (ev) {

                        var evSpan = createElement('span');
                        evSpan.style.background=ev.color;
                        element.appendChild(evSpan);
                    });
                }
            }

            Calendar.prototype.getDayClass = function (day) {
                classes = ['day'];
                if (day.month() !== this.current.month()) {
                    classes.push('other');
                } else if (today.isSame(day, 'day')) {
                    classes.push('today');
                }
                return classes.join(' ');
            }

            Calendar.prototype.openDay = function (el) {
                var details, arrow;
                var dayNumber = +el.querySelectorAll('.day-number')[0].innerText || +el.querySelectorAll('.day-number')[0].textContent;
                var day = this.current.clone().date(dayNumber);
                var str = $("#selectedyear").val();
				$("#selectedday").val(str+"-"+dayNumber);
				$("#selectedday2").val(str+"-"+dayNumber);
				
                var currentOpened = document.querySelector('.details');

                //Check to see if there is an open detais box on the current row
                if (currentOpened && currentOpened.parentNode === el.parentNode) {
                    details = currentOpened;
                    arrow = document.querySelector('.arrow');
                } else {
                    //Close the open events on differnt week row
                    //currentOpened && currentOpened.parentNode.removeChild(currentOpened);
                    if (currentOpened) {
                        currentOpened.addEventListener('webkitAnimationEnd', function () {
                            currentOpened.parentNode.removeChild(currentOpened);
                        });
                        currentOpened.addEventListener('oanimationend', function () {
                            currentOpened.parentNode.removeChild(currentOpened);
                        });
                        currentOpened.addEventListener('msAnimationEnd', function () {
                            currentOpened.parentNode.removeChild(currentOpened);
                        });
                        currentOpened.addEventListener('animationend', function () {
                            currentOpened.parentNode.removeChild(currentOpened);
                        });
                        currentOpened.className = 'details out';
                    }

                    //Create the Details Container
                    details = createElement('div', 'details in');

                    //Create the arrow
                    var arrow = createElement('div', 'arrow');

                    //Create the event wrapper

                    details.appendChild(arrow);
                    el.parentNode.appendChild(details);
                }

                var todaysEvents = this.events.reduce(function (memo, ev) {
                    if (ev.cday == day.format('DD') && ev.cmonth == day.format('MM')) {
                        memo.push(ev);
                    }
                    return memo;
                }, []);

                this.renderEvents(todaysEvents, details);

                arrow.style.left = el.offsetLeft - el.parentNode.offsetLeft + 27 + 'px';
            }

            Calendar.prototype.renderEvents = function (events, ele) {
                //Remove any events in the current details element
                var currentWrapper = ele.querySelector('.events');
                var wrapper = createElement('div', 'events in' + (currentWrapper ? ' new' : ''));
				
                events.forEach(function (ev) {
                    var div = createElement('div', 'event');
                    //div.setAttribute("id",ev.refId);
                    //div.setAttribute("onclick",'myeventclick(\''+ev.refId+'\')');
                    //div.setAttribute("onclick",'myeventclick('+div+')');
                    var square = createElement('div', 'event-category ' + ev.color);
                    var span = createElement('span', '', ev.eventName);
					var input = createElement('input');
					input.value = ev.sId;
					input.style.display = "none";
					var btn1 = createElement("button",'changescbtn');
	                btn1.setAttribute('data-toggle', 'modal');
	                btn1.setAttribute('data-target', '#scModal');
					var btn2 = createElement("button",'deletescbtn');
                    div.appendChild(square);
                    div.appendChild(span);
                    div.appendChild(input);
                    div.appendChild(btn2);
                    div.appendChild(btn1);
                    wrapper.appendChild(div);
                });

                if (!events.length) {
                    var div = createElement('div', 'event empty');
                    var span = createElement('span', '', '일정이 없습니다.');

                    div.appendChild(span);
                    wrapper.appendChild(div);
                }
                // 일정 추가 버튼
                var btn = createElement("button", "scbtn", '+');
                btn.setAttribute('data-toggle', 'modal');
                btn.setAttribute('data-target', '#scModal');
                btn.setAttribute("onclick","scbtnclick();");
                wrapper.appendChild(btn);
                if (currentWrapper) {
                    currentWrapper.className = 'events out';
                    currentWrapper.addEventListener('webkitAnimationEnd', function () {
                        currentWrapper.parentNode.removeChild(currentWrapper);
                        ele.appendChild(wrapper);
                    });
                    currentWrapper.addEventListener('oanimationend', function () {
                        currentWrapper.parentNode.removeChild(currentWrapper);
                        ele.appendChild(wrapper);
                    });
                    currentWrapper.addEventListener('msAnimationEnd', function () {
                        currentWrapper.parentNode.removeChild(currentWrapper);
                        ele.appendChild(wrapper);
                    });
                    currentWrapper.addEventListener('animationend', function () {
                        currentWrapper.parentNode.removeChild(currentWrapper);
                        ele.appendChild(wrapper);
                    });
                } else {
                    ele.appendChild(wrapper);
                }
            }

            Calendar.prototype.drawLegend = function () {
                var clone = this.current.clone();

                $(".legend").parent().children(".legend").remove();
                var legend = createElement('div', 'legend');

                var calendars = this.events.map(function (e) {

                    return e.calendar + '|' + e.color + '|' + e.cmonth;


                }).reduce(function (memo, e) {
                    if (memo.indexOf(e) === -1) {
                        memo.push(e);
                    }

                    return memo;
                }, []).forEach(function (e) {
                    var parts = e.split('|');

                    if (parts[2] - clone.format("MM") == 0) {
                        var entry = createElement('span', 'entry '+ parts[1], parts[0]);
                        
                        legend.appendChild(entry);
                    }

                });
                this.el.appendChild(legend);
            }

            Calendar.prototype.nextMonth = function () {
                this.current.add('months', 1);
                this.next = true;
                this.draw();
            }

            Calendar.prototype.prevMonth = function () {
                this.current.subtract('months', 1);
                this.next = false;
                this.draw();
            }

            window.Calendar = Calendar;

            function createElement(tagName, className, innerText) {
                var ele = document.createElement(tagName);
                if (className) {
                    ele.className = className;
                }
                if (innerText) {
                    ele.innderText = ele.textContent = innerText;
                }
                return ele;
            }
        }();

        function scdraw() {
        	var mId= '${loginMember.mId}';
        	$.ajax({
		        url:"mySchedule.ck",
		        data:{mId:mId},
		        dataType:"json",
		        type:"post",
		   		success:function(data){	
		   			var calendar = new Calendar('#calendar', data);
				},error:function(e){
					alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
				}
				
			});	
  				/* 
            function addDate(ev) {

            } */

        };


    </script>
   <!-- 일정추가 스크립트 -->
    <script>
    	function scbtnclick(){
    		$("#exampleModalLabel").html("일정 추가");
    		$("#updatesc").css("display","none");
			$("#insertsc").css("display","block");
    		var mId = '${loginMember.mId}';
    		$("#refselect").html("");
    		$("#scTitle").val("");
    		$("#selectedday2").val($("#selectedday").val());
    		$.ajax({
		        url:"getClassnVoca.ck",
		        data:{mId:mId},
		        type:"post",
		   		success:function(data){
		   			for(var i in data){
		   				var $op = $(" <option value='"+data[i].class_no+"'>");
			   			$op.html(data[i].class_title);
			   			$("#refselect").append($op);
		   			}
				},error:function(e){
					alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
				}
				
			});	
    	}
    	// 일정 변경 / 삭제 버튼
		var sId = 0;
    	function changescbtnclick(e){
    		 sId = $(e.target).parent().children()[2].value;
    		 if($(e.target).attr("class")=="deletescbtn"){
    			// 일정 삭제
    			if(confirm("일정을 삭제하시겠습니까?")){
	    			$.ajax({
	    		        url:"deleteSchedule.do",
	    		        data:{sId:sId},
	    		        type:"post",
	    		   		success:function(data){
	    		   			$("#calendar").html("");	
	    		   		   	scdraw();
	    				},error:function(e){
	    					alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
	    				}
	    				
	    			});
    			}
    		}else{
				$("#updatesc").css("display","block");
				$("#insertsc").css("display","none");
    			$("#exampleModalLabel").html("일정 변경");
    			
    			$("#refselect").html("");
    			$.ajax({
    		        url:"getSchedule.do",
    		        data:{sId:sId},
    		        dataType: "json",
    		        type:"post",
    		   		success:function(data){
    		   			$("#selectedday").val(data.startDate);
    		   			$("#selectedday2").val(data.endDate);
    		   			$("#scTitle").val(data.sTitle);
    		   			var $op = $(" <option value='"+data.refId+"'>");
			   			$op.html(data.refName);
			   			$("#refselect").append($op);
			   			
			   			for(var i=0; i<$("#sccolor").children().length; i++){
			   				
			   				 if($("#sccolor").children()[i].value == data.color){
			   					$("#sccolor").children()[i].setAttribute("selected", "selected");
			   					$("#sccolor").css("background",data.color);
			   				} 
			   			}
    		   			
    		   			//$("#calendar").html("");	
    		   		    //scdraw();
    				},error:function(e){
    					alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
    				}
    				
    			});
    			
    		} 
    	}
    	
    	$(function(){
    		$(document).on('click', '#updatesc', function(){
    			var refId = $("#refselect").val();
    			var mId = '${loginMember.mId}';
    			var sTitle = $("#scTitle").val();
    			var startDate = $("#selectedday").val();
    			var endDate = $("#selectedday2").val();
    			var color = $("#sccolor").val(); 
    			$.ajax({
    		        url:"updateSchedule.do",
    		        data:{sId:sId,mId:mId,refId:refId,sTitle:sTitle,
    		        	startDate:startDate,endDate:endDate,color:color},
    		        type:"post",
    		   		success:function(data){
    		   			$("#closesc").click();
    		   			$("#calendar").html("");	
    		   			scdraw();
    				},error:function(e){
    					alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
    				}
    				
    			});	
    			
    		});

    		
    	
    		// 일정 기능 보이고 안보이고
    		$(document).on('click', '.event', function(e){
    			if($(e.target).attr("class") == "deletescbtn" ||$(e.target).attr("class") == "changescbtn"){
    				changescbtnclick(e);
    				return 0;
    			}
    			var $et = null;
    			if($(e.target).attr("class") != 'event'){
    				$et = $(e.target).parent();
    			}else{
    				$et = $(e.target);
    			}	
    			if(	$et.children(".deletescbtn").css("display") =="none"){
    				$et.children(".changescbtn").css("display","block");
    				$et.children(".deletescbtn").css("display","block");
    			}else{
    				$et.children(".changescbtn").css("display","none");
    				$et.children(".deletescbtn").css("display","none");
    			}
    		});
    		
    		
    		$("#insertsc").click(function(){
    			var refId = $("#refselect").val();
    			var mId = '${loginMember.mId}';
    			var sTitle = $("#scTitle").val();
    			var startDate = $("#selectedday").val();
    			var endDate = $("#selectedday2").val();
    			var color = $("#sccolor").val(); 
    			$.ajax({
    		        url:"insertSchedule.do",
    		        data:{mId:mId,refId:refId,sTitle:sTitle,
    		        	startDate:startDate,endDate:endDate,color:color},
    		        type:"post",
    		   		success:function(data){
    		   			$("#closesc").click();
    		   			$("#calendar").html("");	
    		   			scdraw();
    				},error:function(e){
    					alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
    				}
    				
    			});	
    		});
    	});
    </script>
</body>

</html>