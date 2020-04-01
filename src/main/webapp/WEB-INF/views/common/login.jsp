<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>SEW LOGIN</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/shotcuticon.png"
	type="image/x-icon">

<link
	href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css"
	rel="stylesheet">
<script
	src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
@import
	url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300);

* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	font-weight: 300;
}

body {
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
	font-weight: 300;
}

body ::-webkit-input-placeholder {
	/* WebKit browsers */
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
	font-weight: 300;
}

body :-moz-placeholder {
	/* Mozilla Firefox 4 to 18 */
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
	opacity: 1;
	font-weight: 300;
}

body ::-moz-placeholder {
	/* Mozilla Firefox 19+ */
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
	opacity: 1;
	font-weight: 300;
}

body :-ms-input-placeholder {
	/* Internet Explorer 10+ */
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
	font-weight: 300;
}

.wrapper {
	/* background: #3ac569;
	background: -webkit-linear-gradient(top left, #3ac569 0%, #cff0da 100%);
	background: -moz-linear-gradient(top left, #3ac569 0%, #cff0da 100%);
	background: -o-linear-gradient(top left, #3ac569 0%, #cff0da 100%);
	*/
	background:rgba(154, 234, 247, 0.9);
	position: absolute;
	left: 0;
	width: 100%;
	height: 55%;
	margin-top:8%;
	overflow: hidden;
	
}

.wrapper.form-success .container h1 {
	transform: translateY(85px);
}

.container {
	max-width: 600px;
	margin: 0 auto;
	padding: 80px 0;
	height: 600px;
	margin-top: -40px;
	text-align: center;
  
	
}

.container h1 {
	font-size: 40px;
	transition-duration: 1s;
	transition-timing-function: ease-in-put;
	font-weight: 200;
}

#loginform {
	padding: 20px 0;
	position: relative;
	z-index: 2;
	
}

#loginform input {
	appearance: none;
	outline: 0;
	border: 2px solid rgba(255, 255, 255, 0.4);
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
	font-weight: 400;
}

#loginform input:hover {
	background-color: rgba(255, 255, 255, 0.4);
	    font-weight: 400;
}

#loginform input:focus {
	background-color: white;
	width: 300px;
	color: rgba(154, 234, 247, 0.9);
	    font-weight: 500;
}

#loginform button {
	appearance: none;
	outline: 0;
	background-color: white;
	border: 0;
	padding: 10px 15px;
	color: rgba(154, 234, 247, 0.9);
	border-radius: 3px;
	width: 250px;
	cursor: pointer;
	font-size: 20px;
	transition-duration: 0.25s;
	    font-weight: 400;
}

#loginform button:hover {
	background-color: #f5f7f9;
}

.bg-bubbles {
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

.modalbtn {
	text-align: center;
    float: right;
	appearance: none;
	outline: 0;
	background-color: white;
	border: 0;
	padding: 5px 10px;
	color: #0a7bcc;
	border-radius: 3px;
	cursor: pointer;
	width: 120px;
	transition-duration: 0.25s;
}
#dd>button{
	appearance: none;
	outline: 0;
	background-color: white;
	border: 0;
	padding: 5px 10px;
	color: rgba(154, 234, 247, 0.9);
	border-radius: 3px;
	cursor: pointer;
	width: 120px;
	transition-duration: 0.25s;
	    font-weight: 400;
}

.textdivarea {
	width: 100%;
	margin: auto;
	text-align: left;
	font-size: 0.8em;
	color: #525252;
}

.inputdivarea {
	width: 100%;
	margin: auto;
	height: 40px;
	border: 0px;
}

.commentarea {
	width: 100%;
	margin: auto;
	height: 15px;
	font-size: 0.8em;
	color: red;
}

.inputdivarea>input {
	width: 100%;
	height: 100%;
	border-bottom-color: rgb(206, 212, 218);
	border-bottom-left-radius: 4px;
	border-bottom-right-radius: 4px;
	border-bottom-style: solid;
	border-bottom-width: 1px;
	border-image-outset: 0px;
	border-image-repeat: stretch;
	border-image-slice: 100%;
	border-image-source: none;
	border-image-width: 1;
	border-left-color: rgb(206, 212, 218);
	border-left-style: solid;
	border-left-width: 1px;
	border-right-color: rgb(206, 212, 218);
	border-right-style: solid;
	border-right-width: 1px;
	border-top-color: rgb(206, 212, 218);
	border-top-left-radius: 4px;
	border-top-right-radius: 4px;
	border-top-style: solid;
	border-top-width: 1px;
}

.inputdivarea>input::placeholder {
	color: rgb(206, 212, 218);
}

.modalsubmitbtn {
	position: absolute;
	width: 93%;
	height: 40px;
	background: rgb(154, 234, 247);
	border: 0.5px double whitesmoke;
	text-align: center;
	border-radius: 5px;
	bottom: 10px;
}

.modal-header {
	width: 100%;
    margin-left: 0.12%;
	background: rgb(154, 234, 247);
}

.close {
	width: 60px;
}

.modal-body {
	width: 90%;
	margin-left: 5%;
}
#dd >span {
  font-size:16px;
  color:white;
      font-weight: 400;
  }
  

</style>
</head>

<body>
	<jsp:include page="../common/menubar.jsp" />

	<div class="wrapper">
		<div class="container">
			<h1 style="color: white;    font-weight: 600;">Welcome</h1>

			<form id="loginform" class="form" method="post" 
			action='${contextPath}/Memberlogin.me'>
				<input type="text" name="loginmId" placeholder="Username"> 
				<input type="password" name="loginpwd" placeholder="Password">
				<button type="submit" id="login-button">Login</button>
			</form>
			<div id="dd"
				style="position: relative; z-index: 2; width: 33%; margin-left: 30.5%; text-align: right;">
				<span>처음 방문하시는 건가요?</span>
				<button type="button" id="newuserbtn" data-toggle="modal"
					data-target="#newMembermodal">회원가입</button>
				<br> <br><span> 아이디를 찾고계시는군요</span>
				<button type="button" id="idcheckbtn" data-toggle="modal"
					data-target="#findmyiddiv">아이디찾기</button>
				<br> <br><span> 비밀번호를 찾으시나봐요</span>
				<button type="button" id="pwddcheckbtn" data-toggle="modal"
					data-target="#findmypwddiv">비밀번호찾기</button>
			</div>

		</div>
		 <c:if test="${ !empty newuser }">
		   	<script>
		   		$(function(){
		   			$("#newuserbtn").click();
		   		});
		   	</script>
   		</c:if>
		<script>
			$(function(){
				$("#dd > button").hover(function(){
					$(this).prev().css("font-size","20px");
			    }, function() {
			    	$(this).prev().css("font-size","16px");
			    });
			});
		</script>
	<!-- 버블이 방울방울 ㅎ -->
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
	<!-- 회원가입 하는 모달 -->
	<div class="modal fade" id="newMembermodal" 
		tabindex="-1" role="dialog" aria-labelledby="scModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" 
						style="margin-left: 42%;">회원가입</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="height: 700px;">
					<form id="insertMemberForm" method="post"
						onsubmit="return insertcheck();" action='${contextPath}/insert.me'>
						<div id="signArea">
							<div class="textdivarea">*아이디</div>
							<div class="inputdivarea">
								<input type="text" name="mId"  required >
							</div>
							<div class="commentarea"></div>
							<div class="textdivarea">*비밀번호</div>
							<div class="inputdivarea">
								<input type="password" name="pwd" required minlength="8" maxlength="25">
							</div>
							<div class="commentarea"></div>
							<div class="textdivarea">*비밀번호 확인</div>
							<div class="inputdivarea">
								<input type="password" name="userPwdCk" required minlength="8" maxlength="25">
							</div>
							<div class="commentarea"></div>
							<div class="textdivarea">*이름</div>
							<div class="inputdivarea">
								<input type="text" name="name" required  maxlength="6">
							</div>
							<div class="commentarea"></div>
							<div class="textdivarea">*이메일</div>
							<div class="inputdivarea">
								<input type="email" id="userEmail" name="email" required
									style="width: 68.9%;"> <input type="button"
									id="checkemailbtn" class="btn btn-primary btn-sm"
									style="width: 29.5%;margin-bottom: 4px; background-color: #74d1f5;" value="인증">
								<button id="hiddenemailbtn" type="button" data-toggle="modal"
									data-target="#checkemailen" style="display: none;"></button>
							</div>
							<div class="commentarea"></div>
							<div class="textdivarea">*생년월일</div>
							<div class="inputdivarea">
								<input type="text" name="birthDate" placeholder="ex:19750524"
									required maxlength="8">
							</div>
							<div class="commentarea"></div>
							<div class="textdivarea">주소</div>
							<div class="inputdivarea">
								<input type="text" id="postcode" name="add1"
									style="width: 68.9%;" placeholder="우편번호"> <input
									type="button" class="btn btn-primary btn-sm"
									style="width: 29.5%; margin-bottom: 3px; background-color: #74d1f5;"
									onclick="execDaumPostcode()" value="우편번호 찾기"><br>
								<input type="text" id="address" name="add2"
									style="margin-bottom: 3px;" placeholder="주소"><br>
								<input type="text" name="add3" id="detailAddress"
									placeholder="상세주소">

							</div>

							<script
								src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
							<script>
                            $("#checkemailbtn").click(function(){
                                
                                
                                var code = "";
                                for(var i=0; i<6; i++ ){
                                    var scode = (Number)(Math.floor((Math.random()*15+1)));
                                    
                                    switch(scode){
                                        case 10: scode="A"; break;
                                        case 11: scode="B"; break;
                                        case 12: scode="C"; break;
                                        case 13: scode="D"; break; 
                                        case 14: scode="E"; break;
                                        case 15: scode="F"; break;
                                    }
                                    code += scode;
                                }
                                
                                if($("#userEmail").val().length >= 6 ){
                                	var email = $("#userEmail").val();
	                                $.ajax({
	                    				url:"email.ck",
	                    				data:{email:email,code:code},
	                    				type:"post",
	                    				success:function(data){
	                    					if(data == "success"){
	                    						
		                    					$("#answercode").val(code);
		                    					$('#checkemailen').modal('show'); 
		                    					$("#checkemailcode").attr('disabled',false);
		                    					StartClock();
		                    					$("#newMembermodal").css("opacity",0.8);
	                    					}else{
	                    						alert("중복된 이메일입니다.");
	                    					}
	                    				},error:function(e){
	                    					alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
	                    				}
	                    				
	                    			});	
                                }else{
                                	alert("이메일을 제대로 입력해주세요.");
                                }
					     		// 에이작스 연결하기 나중에 구현하기
                            });
                            function execDaumPostcode() {
                                new daum.Postcode({
                                    oncomplete: function(data) {
                                       
                                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                        
                                        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                        var addr = ''; // 주소 변수
                                        var extraAddr = ''; // 참고항목 변수
                        
                                        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                                        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                            addr = data.roadAddress;
                                        } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                            addr = data.jibunAddress;
                                        }
                        
                                        // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                                        if(data.userSelectedType === 'R'){
                                            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                                extraAddr += data.bname;
                                            }
                                            // 건물명이 있고, 공동주택일 경우 추가한다.
                                            if(data.buildingName !== '' && data.apartment === 'Y'){
                                                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                            }
                                            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                            if(extraAddr !== ''){
                                                extraAddr = ' (' + extraAddr + ')';
                                            }
                                            // 조합된 참고항목을 해당 필드에 넣는다.
                                        //document.getElementById("extraAddress").value = extraAddr;
                                        
                                        } else {
                                            //document.getElementById("extraAddress").value = '';
                                            
                                        }
                        
                                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                        document.getElementById('postcode').value = data.zonecode;
                                        document.getElementById("address").value = addr+extraAddr;
                                        // 커서를 상세주소 필드로 이동한다.
                                        document.getElementById("detailAddress").focus();
                                    }
                                }).open();
                            }
                            var oldmin = 4;
                            var oldsec = 60;
                            var timerId = null;
                            function setTime(){
                            	clearInterval(timerId);
                            	oldmin=4;
                            	oldsec=60;
                            }
                            function PrintTime() {
								
                            	if(oldsec !=0){
                                	oldsec -= 1 ;
                            	}else if(oldmin !=0){
                            		oldmin-=1;
                            		oldsec=59;
                            	}else{
                            		clearInterval(timerId);
                            		$("#checkemailcode").attr('disabled', true);
                            	}
                            	
								$(".trymin").html(oldmin);
								$(".trysec").html(oldsec); 
                            }

                            function StartClock() {
                                PrintTime();
                                timerId = setInterval(PrintTime, 1000);
                            }
                            
                           
                            
                        </script>

							<button type="submit" id="joinMemberbtn" class="modalsubmitbtn">가입하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
	$(function(){
		var useable = false;
		// 비밀번호 일치여부
		$("#insertMemberForm input[name=userPwdCk]").focusin(function(){
			$(this).focusout(function(){
				if($("#insertMemberForm input[name=pwd]").val() != $("#insertMemberForm input[name=userPwdCk]").val()){
					$("#insertMemberForm input[name=userPwdCk]").parent().next().html("비밀번호가 일치하지 않습니다.");
				}else{
					$("#insertMemberForm input[name=userPwdCk]").parent().next().html("");
				}
				/* var leng = $("#insertMemberForm input[name=pwd]").val().length();
				if(leng < 8 || leng > 12){
					$("#insertMemberForm input[name=userPwdCk]").parent().next().html("비밀번호의 길이가 맞지 않습니다.");
				}else{
					$("#insertMemberForm input[name=userPwdCk]").parent().next().html("");
				} */
			});
		});
		// 생년월일 일치여부
		$("#insertMemberForm input[name=birthDate]").focusin(function(){
			$(this).focusout(function(){
				var email = $(this);
				var idReg = /^[0-9]{8}$/g;
		        if( !idReg.test( email.val() ) ) {
		        	$("#insertMemberForm input[name=birthDate]").parent().next().html("생년월일의 형식이 맞지 않습니다.").css("color","red");
		        	email.val("");
		            return;
		        }else{
		        	$("#insertMemberForm input[name=birthDate]").parent().next().html("");
		        }	
			
			});
		});
		
		// 아이디 중복검사
		$("#insertMemberForm input[name=mId]").focusin(function(){
			$(this).focusout(function(){
				var mId = $(this);
				 var idReg = /^[a-z0-9]{5,12}$/g;
			        if( !idReg.test( mId.val() ) ) {
			        	$("#insertMemberForm input[name=mId]").parent().next().html("아이디는 6~12자 영문자,숫자조합이어야 합니다.").css("color","red");
			        	mId.val("");
			            return;
			        }
				if(mId.val().length > 3){
					$(this).parent().next().html("");
					if(!useable){
						useable=true;
					$.ajax({
						url : "idCheck.ck",
						data : {mId:mId.val()},
						type : "post",
						success : function(data){
							
							if(data=="fail"){
								$("#insertMemberForm input[name=mId]").parent().next().html("중복된 아이디입니다").css("color","red");
								//mId.focus();
								useable=false;
							}else{
								if(confirm("사용 가능한 아이디입니다 사용하시겠습니까?")){
									$(this).parent().next().html("");
									useable=true;
									mId.prop("readonly",true);
									mId.css("background","lightgray");
								}else{
									mId.val("");
									useable=false;
								}
								
							}
						}, error : function(){
							console.log("서버 통신 안됨");
						}
						
					});}
				}else{
					$(this).parent().next().html("아이디는 4글자 이상이여야 합니다.");
				}
			});
		});
	});
	// 회원가입 사전검사
	function insertcheck(){
		var check = $("#insertMemberForm > #signArea > .commentarea");
		//var check = $("#insertMemberForm .commentarea");
		 for(var i =0; i<8; i++){
			if(check[i].innerHTML.length >0){
				console.log(check[i].innerHTML);
				check[i].focus();
				return false;
			}
		} 

		 if($("#userEmail").attr("readonly")!='readonly'){
			 alert("이메일 인증을 해주세요");
			 return false;
		 }else{ 
			return true;
		 }
	}
	</script>

	<!-- 이메일 인증 모달 -->
	<div class="modal fade" id="checkemailen" 
		tabindex="-2" role="dialog" aria-labelledby="scModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" 
						style="margin-left: 40%;">이메일 인증</h5>
					<button id="emailclosebtn" type="button" class="close"
						data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<input type="text" class="form-control" id="emailcode"
						style="width: 49%; float: left;" placeholder="인증코드를 입력해주세요"
						maxlength="6">

					<button id="checkemailcode" class="btn btn-outline-primary"
						style="width: 20%; margin-right: 0.5%; margin-left: 1.5%;">인증</button>
					<button id="retryemailcode" class="btn btn-outline-danger"
						style="width: 20%;">재전송</button>
					<br> <span style="color: red;float:left; margin-left: 3%;"
						class="trymin">03</span>: <span style="color: red; width: 10%;"
						class="trysec">00</span> 
						<input id="answercode" type="text" style="display:none;">
				</div>
			</div>
		</div>
	</div>
	<script>
		$("#checkemailcode").click(function(){
			if($("#emailcode").val()==$("#answercode").val()){
				alert("인증이 완료되었습니다.");
				clearInterval(timerId);
				$("#userEmail").attr("readonly",true);
				$("#checkemailbtn").attr('disabled', true);
				$("#emailclosebtn").click();
			}else{
				alert("인증번호가 일치하지않습니다.");
			}
		});
		 $("#retryemailcode").click(function(){
         	setTime();
         	$("#checkemailbtn").click();
         });
		$("#emailclosebtn").click(function(){
			$("#newMembermodal").css("opacity",1);
		});
	</script>

	<!-- 아이디 찾는 모달 -->
	<div class="modal fade" id="findmyiddiv" 
		tabindex="-1" role="dialog" aria-labelledby="scModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" 
						style="margin-left: 40%;">아이디 찾기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="findmyidform" method="post"
						action="${contextPath }/findid.ck">
						<div id="signArea2">
							<div class="textdivarea">이메일</div>
							<div class="inputdivarea">
								<input type="email" id="findEmail" name="findEmail" required>
							</div>
							<div class="commentarea"></div>

							<button type="submit" id="findmyidformbtn" class="modalbtn">아이디 찾기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 비밀번호 찾는 모달 -->
	<div class="modal fade" id="findmypwddiv" 
		tabindex="-1" role="dialog" aria-labelledby="scModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content" id="findpwdmodalcontent">
				<div class="modal-header">
					<h5 class="modal-title" 
						style="margin-left: 37%;">비밀번호 찾기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" id="closefindpwdbtn">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<div id="signArea3">
						<div class="textdivarea">아이디</div>
						<div class="inputdivarea">
							<input type="text" id="findId" name="findId" required>
						</div>
						<div class="commentarea"></div>
						<input type="button" id="checkemailbtn2"
							class="modalbtn" style="width: 30%;" value="인증">
						
						<div id="findpwdtoemail" style="display: none;">
							<input type="text" class="form-control" id="emailcode2"
								style="width: 49%; float: left;" placeholder="인증코드를 입력해주세요"
								maxlength="6">

							<button id="checkemailcode2" class="btn btn-outline-primary"
								style="width: 24%; margin-right: 0.5%; margin-left: 0.5%;">인증</button>
							<button id="retryemailcode2" class="btn btn-outline-danger"
								style="width: 24%;">재전송</button>
							<br>
							<span style="color: red; width: 10%; margin-left: 3%;"class="trymin">5</span>: 
							<span style="color: red; width: 10%;"class="trysec">00</span> 
							<input id="answercode2" type="text" style="display:none;">
						</div>
						<button id="findmypwdformbtn" class="modalsubmitbtn"
						 style="display:none;">비밀번호 찾기</button>

					</div>

				</div>
			</div>
		</div>
	</div>
	<button id="changemypwdbtn" type="button" data-toggle="modal"
		data-target="#changemypwd" style="display: none"></button>
	<script>
	var email = "";
$(function(){
	$("#findmypwdformbtn").attr('disabled', true);
	
	$("#retryemailcode2").click(function(){
    	setTime();
    	$("#checkemailbtn2").click();
    });
	
	$("#checkemailcode2").click(function(){
		if($("#emailcode2").val()==$("#answercode2").val()){
			alert("인증이 완료되었습니다.");
			clearInterval(timerId);
			$("#findmypwdformbtn").attr('disabled', false);
			$("#closefindpwdbtn").click();
			$("#changemypwdbtn").click();
			$("#changePwdid").val($("#findId").val());
		}else{
			alert("인증번호가 일치하지않습니다.");
		}
	});
	
	
    $("#checkemailbtn2").click(function(){
    	var id = $("#findId").attr("readonly",true).val();
    	var code = "";
    	$.ajax({
			url:"findemail.ck",
			data:{id:id},
			type:"post",
			success:function(data){
				if(data =="fail"){
					alert("아이디가 없거나 이메일이 없습니다.");
				}else{
					email = data;
					$("#findmypwdformbtn").css("display","block");
					$("#checkemailbtn2").css("display","none");
					$("#findpwdtoemail").css("display","block");
					$("#findpwdmodalcontent").css("height","280px");
					for(var i=0; i<6; i++ ){
		                var scode = (Number)(Math.floor((Math.random()*15+1)));
		                
		                switch(scode){
		                    case 10: scode="A"; break;
		                    case 11: scode="B"; break;
		                    case 12: scode="C"; break;
		                    case 13: scode="D"; break; 
		                    case 14: scode="E"; break;
		                    case 15: scode="F"; break;
		                }
		                code += scode;
		            }
		            $.ajax({
						url:"email2.ck",
						data:{email:email,code:code},
						type:"post",
						success:function(data){
							if(data == "success"){
								$("#answercode2").val(code);
								StartClock();
							}else{
								alert(data);
							}
						},error:function(e){
							alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
						}
						
					});	 
					
				}
			},error:function(e){
				alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
			}
		});	
    	
    		
             
    	});
});
</script>
	<!-- 비밀번호 변경하는 모달 -->
	<div class="modal fade" id="changemypwd" 
		tabindex="-1" role="dialog" aria-labelledby="scModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" 
						style="margin-left: 38%;">비밀번호 변경</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="changePwdForm" method="post"
						action="${contextPath }/change.pwd"
						onsubmit="return checkChangePwd();">
						<div id="signArea4">
							<input type="text" id="changePwdid" name="changePwdid"
								style="display: none;">
							<div class="textdivarea">비밀번호</div>
							<div class="inputdivarea">
								<input type="password" id="changePwd" name="changePwd" required>
							</div>
							<input type="text" id="changeId" name="changeId"
								style="display: none;">
							<div class="commentarea"></div>
							<div class="textdivarea">비밀번호 확인</div>
							<div class="inputdivarea">
								<input type="password" id="changePwdCk" name="changePwdCk"
									required>
							</div>
							<div class="commentarea"></div>
							<button type="submit" id="changepwdformbtn" class="modalsubmitbtn">비밀번호 변경</button>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
	<script>
        
        $(function() {

			$("#changePwdCk").focusin(
					function() {
						$(this).focusout(
								function() {
									if ($("#changePwd").val() != $(
											"#changePwdCk").val()) {
										$("#changePwdCk").parent().next().html(
												"비밀번호가 일치하지 않습니다.");
									} else {
										$("#changePwdCk").parent().next().html(
												"");
									}
								});
					});
		});
		function checkChangePwd() {
			var test = $("#changePwdCk").parent().next().html();
			if (test.length > 0) {
				return false;
			}
			return true;
		};
    </script>
   
    
</body>


</html>