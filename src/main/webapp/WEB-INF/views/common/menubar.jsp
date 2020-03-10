<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>SEW</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
  integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
  integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
  integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
<link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
<script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>

<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
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
.accordion {
	 margin: 1rem 0;
	 padding: 0;
	 list-style: none;
	 border-top: 1px solid #e5e5e5;
}
 .accordion-item {
	 border-bottom: 1px solid #e5e5e5;
}
/* Thumb */
 .accordion-thumb {
	 margin: 0;
	 padding: 0.8rem 0;
	 cursor: pointer;
	 font-weight: normal;
}
 .accordion-thumb::before {
	 content: '';
	 display: inline-block;
	 height: 7px;
	 width: 7px;
	 margin-right: 1rem;
	 margin-left: 0.5rem;
	 vertical-align: middle;
	 border-right: 1px solid;
	 border-bottom: 1px solid;
	 transform: rotate(-45deg);
	 transition: transform 0.2s ease-out;
}
 .accordion-panel {
	 margin: 0;
	 padding-bottom: 0.8rem;
	 display: none;
}
 .accordion-item.is-active .accordion-thumb::before {
	 transform: rotate(45deg);
}
#friendlist{
	width:300px; 
	height:40px; position:absolute; 
	bottom:0;right:0;
	border:1px solid #e5e5e5;
	border-top-left-radius: 10px;
   border-top-right-radius: 10px;
   overflow:hidden; 
   z-index:10;
   background:whitesmoke;
}
.flno{
	animation-name: flanino; 
    animation-duration: 1s ;
    animation-timing-function: ease; 

}
.flyes{
	animation-name: flaniyes; 
    animation-duration: 1s ;
    animation-timing-function: ease; 
}

#friendlisttoggle{
   text-align:center;
   width:100%; height:40px; 
   background:skyblue;
   margin-bottom: -15px;
   line-height: 40px;
   cursor:pointer;
}
 #chatting{
 	width:300px;
 	height:350px;
 	position:absolute;
 	bottom:0;display:none;
 	border:1px solid #e5e5e5;
 	z-index:10;
 	right:300px;
 	overflow:scroll;
 	overflow-x:hidden;
 	overflow-y:auto;
 	background:whitesmoke;
 }
 #chatexit{
 	position:fixed;
 	height:30px;
 	bottom:319px;
 	width:280px;
 	background:whitesmoke;
 	boder-top:1px solid #e5e5e5;
 }
 #chatsend{
 	background:lightpink;
 	height:30px;width:65px;
 	position:absolute;
 	bottom:0;
 	right:15px;
 	border:1px solid #e5e5e5;
 }
 
 @keyframes flaniyes {
    from {
        height: 40px;
    }
    to {
        
        height: 350px;
    }
}
@keyframes flanino {
    from {
        height: 350px;
    }
    to {
        
        height: 40px;
    }
}
.myfriend{
	text-decoration:none;
}
.chattd{
	vertical-align: top;
	padding-bottom: 5px;
}
.chatprofileimg{
	display: inline;
	border-radius: 50%;
	width:50px;
	height: 50px;
	margin-top: 7px;
	
}
.mychatp{
	font-family: 'Helvetica-Neue', Helvetica, Arial;
	font-weight: 300;
	display: inline-block;
	min-height: 20px;
	min-width: 70px;
	margin: 0;
	vertical-align: top;
	line-height: 1.4;
	font-size: 16px;
	padding-top: 15px;
	padding-bottom: 15px;
	padding-left: 20px;
	padding-right: 20px;
	background-color: #EFF3F7;
	border-radius: 5px; box-shadow: 0 1px 3px 0px #a7b6c5;
	margin: 5px 10px 0;
}

</style>

</head>

<body>
<c:set var="contextPath" value="${pageContext.request.contextPath}"
	scope="application"/>
<c:set var="loginpage" value="login.me"/>
  <div style="width:100%; height:40px; text-align: right">
  	<c:url var="loginpage" value="login.me"/>
  	<!-- 로그인 유저가 없을시 -->
  	<c:if test="${ empty loginMember }">
    <a class="gonav" href="${ loginpage }">아이디 비밀번호찾기</a>
    <a class="gonav" href="${ loginpage }">회원가입</a> 
    <a class="gonav" href="${ loginpage }">로그인</a> 
    </c:if>
    <!-- 로그인 유저 있을때 -->
    <c:if test="${ !empty loginMember }">
   		 <c:if test="${ loginMember.mId == 'admin' }">
    		<a class="gonav" href="memberList.me">관리자페이지</a>
    	</c:if>
    	<c:if test="${ loginMember.mId != 'admin' }">
    		<a class="gonav"href="mypage.me">마이페이지</a>
    	</c:if>
    	<a class="gonav" href="Memberlogout.me">로그아웃</a>
    	<span class="gonav">${ loginMember.nickname }님 환영합니다.</span>
    </c:if>
</div>
<nav id="nav-1">
  <a class="link-2" href="#"><img id="sewlogo"src="${contextPath}/resources/images/로고.jpg"></a>
  <a class="link-1" href="#">Home</a>
  <a class="link-1" href="#">단어장</a>
  <a class="link-1" href="ClassList.do">클래스</a>
  <c:url var="inqList" value="memberInquireList.ad">
  	<c:param name="inquirerId" value="${sessionScope.loginMember.mId}" />
  </c:url>
  <a class="link-1" href="${inqList}">고객센터</a>
</nav>
<c:if test="${ !empty sessionScope.loginMember }">
<div id="chatting"  >
	<div id="chatexit"> 
		<span id="friendname"></span>
		<input type="text" style="display:none;" id="friendId">
		<button type="button" class="close" aria-label="Close">
				<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<br>
  <table id="chattable" style="width:100%; height:80%;" cellspacing="0" cellpadding="0">
  <thead >
    <tr style="height:10px;">
      <th width="50"></th>
      <th width="50"></th>
      <th width="50"></th>
      <th width="50"></th>
      <th width="50"></th>
      <th width="50"></th>
      <th width="50"></th>
      <th width="50"></th>
      <th width="50"></th>
      <th width="50"></th>
      <th width="50"></th>
      <th width="50"></th>
    </tr>
	</thead>
    <tbody>
     </tbody>
    
  </table>
  <br>
	<div style="width:300px; height:30px;position:fixed; background:whitesmoke; bottom:0;" >
    	 <textarea id="chatcontent" style="width:220px; height:30px; margin:0px; resize: none;">
    	 </textarea>
    	 <input id="chatsend" type="button" value="전송">
    </div>	
</div>

<c:if test="${sessionScope.loginMember.mId ne 'admin' }">
	<div id="friendlist" >
		<div id="friendlisttoggle" >
			친구리스트
		</div>
		<ul class="accordion">
		<c:forEach var="fl" items="${ friendList }">
		<c:set var="group" value="${fl.groupName }"/>
		<li class="accordion-item">
			<h5 class="accordion-thumb">${fl.groupName }</h5>
			<ul class="accordion-panel">
			
			<c:forEach var="fltwo" items="${ friendList }">
				<c:if test="${ fl.groupName == fltwo.groupName }">
					<li><a class="myfriend" href="#">${fltwo.nickname }</a>     
					<span style="float:right; margin-right:10px;">${fltwo.comment }</span>
					<input type="text" style="display:none;"value="${fltwo.fId }">
					</li>
				</c:if>
			</c:forEach>
			
			</ul>
		</li>
		</c:forEach>
	</ul>
	</div>
</c:if>
</c:if>
<script>
var chatId =null;
$(function() {
	// 로딩완료시 채팅입력창 초기화
	$("#chatcontent").val("");
	// (Optional) Active an item if it has the class "is-active"	
	$(".accordion > .accordion-item.is-active").children(".accordion-panel").slideDown();
	$(".accordion-thumb").click(function() {
		// 다른 애들 안보이게
		$(this).parent().siblings(".accordion-item").removeClass("is-active").children(".accordion-panel").slideUp();
		// 선택된건 보이게
		$(this).parent().toggleClass("is-active").children(".accordion-panel").slideToggle("ease-out");
		
	});
});
$("#friendlisttoggle").click(function(){
	if($("#friendlist").hasClass("flyes")){
		$("#friendlist").css("height","40px");
		$("#friendlist").removeClass("flyes");
		$("#friendlist").addClass("flno");
	}else if($("#friendlist").hasClass("flno")){
		$("#friendlist").css("height","350px");
		$("#friendlist").removeClass("flno");
		$("#friendlist").addClass("flyes");
	}else{
		$("#friendlist").addClass("flyes");
		$("#friendlist").css("height","350px");
	}
	
});
$(".myfriend").click(function(){
	$("#friendname").html($(this).html());
	var fId = $(this).next().next().val();
	$("#friendId").val(fId);
	if($("#chatting").css("display")=="block"){
		$("#chatting").css("display","none");
		clearInterval(chatId);
	}else{
	// 에이작스 연결하기
	    chatId = setInterval(chatloggo, 2500);
	 // 에이작스로 채팅로그 불러온 후 
		$("#chatting").css("display","block");
	}
});
$(".close").click(function(){
	$(this).parent().parent().css("display","none");

});
$("#chatsend").click(function(){
	var content = $("#chatcontent").val();
	var fId = $("#friendId").val();
	var mId = '${ loginMember.mId}';
	// 에이작스
	$.ajax({
        url:"chat.do",
        data:{mId:mId,fId:fId,content:content},
        type:"post",
   		success:function(data){
			//성공
   			if(data == "success"){
   				// 마지막에 보낸 글자 없애기
   	   			$("#chatcontent").val("");
   				// 채팅보낸거 출력하기
   	   		var $tr = $("<tr>");
			var $tdimg = $(" <td class='chattd' width='50'>");
			var $profileimg = $("<img class='chatprofileimg' src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/78060/jg-ava.jpg' width='50'>");
			$tdimg.append($profileimg);
			var $chatContent = $(" <td class='chattd' colspan='11' >");
			var $chat = $(" <p class='mychatp'>").text(content);
			$chatContent.append($chat);
			
			$tr.append($tdimg);
			$tr.append($chatContent);
			$tableBody.append($tr);
   			}else{
   				alert("채팅 오류!! 관리자에게 문의하세요");
   			}
   		
		},error:function(e){
			alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
		}
		
	});	
	
});
	function chatloggo(mId,fId){
		var fId = $("#friendId").val();
		var mId = '${ loginMember.mId}';
		$.ajax({
	        url:"chatlog.ck",
	        data:{mId:mId,fId:fId},
	        dataType:"json",
	        type:"post",
	   		success:function(data){
				$tableBody = $("#chattable tbody");
				$tableBody.html("");
				
				for(var i in data.clist){

					if(data.clist[i].writerId == mId){
						var $tr = $("<tr>");
						var $tdimg = $(" <td class='chattd' width='50'>");
						var $profileimg = $("<img class='chatprofileimg' src='${ contextPath }/resources/profileimg/"+mId+"img.jpg' width='50'>");
						$tdimg.append($profileimg);
						var $chatContent = $(" <td class='chattd' colspan='11' >");
						var $chat = $(" <p class='mychatp'>").text(data.clist[i].content);
						$chatContent.append($chat);
						
						$tr.append($tdimg);
						$tr.append($chatContent);
					}else{
						var $tr = $("<tr align='right'>");
						var $tdimg = $(" <td class='chattd' width='50'>");
						var $profileimg = $("<img class='chatprofileimg'src='${ contextPath }/resources/profileimg/"+fId+"img.png' width='50'>");
						$tdimg.append($profileimg);
						var $chatContent = $(" <td class='chattd' colspan='11' >");
						var $chat = $(" <p class='mychatp' style='float:right; padding: 15px 20px;'>").text(data.clist[i].content);
						$chatContent.append($chat);
						
						$tr.append($chatContent);
						$tr.append($tdimg);
					}
					
					$tableBody.append($tr);
				}
				
			},error:function(e){
				alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
			}
		});
	} 
	

</script>

</body>
</html>