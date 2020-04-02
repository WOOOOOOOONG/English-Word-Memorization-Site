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
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
  integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
  integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
  integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
<script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/shotcuticon.png"
	type="image/x-icon">


<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<link rel="stylesheet" type="text/css"
   href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8"
   src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.css" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Jua|Roboto&display=swap" rel="stylesheet">
<style>
body {
  margin: 0px;
  background:whitesmoke;
  font-family: 'Nanum Gothic', sans-serif;
  font-weight: 700;
  color:#474747;
}

#sewlogo{
  display:inline-block;
  width:56px;
  height:42px;
  font-size:36px;
  font-weight:600;
}
.accordion {
    margin: 15px 0;
    padding: 0;
    list-style: none;
    border-top: 1px solid #e5e5e5;
    margin-top:-3px;
    width: 300px;
}
 .accordion-item {
    border-bottom: 1px solid #e5e5e5;
}
/* Thumb */
 .accordion-thumb {
    margin: 0;
    padding: 15px 0;
    cursor: pointer;
    font-weight: normal;
    font-size: 16px;
}
 .accordion-thumb::before {
    content: '';
    display: inline-block;
    height: 7px;
    width: 7px;
    margin-right: 15px;
    margin-left: 10px;
    vertical-align: middle;
    border-right: 1px solid;
    border-bottom: 1px solid;
    transform: rotate(-45deg);
    transition: transform 0.2s ease-out;
}
 .accordion-panel {
    margin: 0;
    padding-bottom: 5px;
    margin-top: -15px;
    display: none;
}
 .accordion-item.is-active .accordion-thumb::before {
    transform: rotate(45deg);
    padding-bottom:5px;
}
#friendlist{
   width:320px; 
   height:40px; position:fixed; 
   bottom:0;right:-20px;
   border:1px solid #e5e5e5;
   border-top-left-radius: 10px 10px;
   border-top-right-radius: 10px 10px;
   overflow:scroll;
    overflow-x:hidden;
    overflow-y:auto;
   z-index:900;
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
   width:300px; height:40px; 
   background:skyblue;
   line-height: 40px;
   cursor:pointer;
   font-size: 16px;
}
.friendmenu{
   text-align:center;
   width:300px; height:35px; 
   margin-top: 5px;
   line-height: 40px;
}
 #chatting{
    width:300px;
    height:350px;
    position:fixed; 
    bottom:0;display:none;
    border:1px solid #e5e5e5;
    z-index:900;
    right:300px;
    overflow:scroll;
    overflow-x:hidden;
    overflow-y:auto;
    background:white;
    background-image: url( "resources/images/로딩.gif" );
  	background-repeat: no-repeat;
  	background-size: 50% 45% ;
  	background-position: center center;
  	border-top-left-radius: 10px;
    border-top-right-radius: 10px;
 }

 #chatexit{
    position:fixed;
    height:30px;
    bottom:319px;
    width:280px;
    background:white;
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
   list-style:none;
   font-size:14px;
   font-weight:400;
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
#searchfriendbtn{
   background-image: url( "resources/images/검색.png" );
   background-repeat: no-repeat;
   float:left;margin-left:10px;
   background-size: cover;
   width:30px;
   height:29px;
}
#insertfriendbtn{
   background-image: url( "resources/images/플러스.png" );
   background-repeat: no-repeat;
   background-size: cover;
   float:right;margin-right:10px;
   width:30px;
   height:29px;
   margin-top:5px;
}
.friendfunc{
   float:right;
   font-size: 12px;
   margin-right:5px;
   font-weight:400;
   display:none;
}
.classfunc{
   float:right;
   font-size: 12px;
   margin-right:5px;
   font-weight:400;
   display:none;
}
.friendnav{
   width:99.5px; height:100%; float:left; text-align:center;
   background:skyblue;   
   border-bottom-right-radius: 20px 10px;
   border-bottom-left-radius: 20px 10px;
   overflow:hidden;
}
.friendbtn{
   width:100%;
   height:100%;
   background:skyblue;
   border:0px;
   font-size:14px;
}
.cancelfri{
   background-image: url( "resources/images/취소2.png" );
   background-repeat: no-repeat;
   background-size: cover;
   width:30px;
   height:30px; float:left; 
   margin-top: 5px; margin-left:10%;
}
.acceptfri{
   background-image: url( "resources/images/승인.png" );
   background-repeat: no-repeat;
   background-size: cover;
   width:30px;
   height:30px; float:left;
   margin-top: 5px; margin-left:20%;
}
.acceptfrilist{
   text-align:center;
    width:75%; height:30px; 
    margin-top: 15px;
    line-height:20px;
    float:left;
    font-size:15px;
}
#searchfriimg{
   float: left; margin-left: 10px; width: 80px;
   height:auto;
}
#searchfriintro{
   float:left; margin-left:10px; width:190px;
   background:white; word-break:break-all;
}
.accordion-panel > li{
   list-style: none;
}
.accordion-panel > li:before {
   content: "ㄴ";
}
.expandfr{
   width:20px;
   height:20px;
   border:none;
   background-image: url( "resources/images/dot.png" );
   background-repeat: no-repeat;
   background-size: cover;
}
.expandfr:focus{
   outline:0px;
}
.expandclass{
   width:20px;
   height:20px;
   border:none;
   background-image: url( "resources/images/dot.png" );
   background-repeat: no-repeat;
   background-size: cover;
}
.expandclass:focus{
   outline:0px;
}

.chatimgtag{
   float: left;
    font-size: 9px;
    text-align: center;
    width: 50px;
}
.jha{
    color:#505050;
    margin:4px 36px 0 0;
	font-size: 18px;
	font-weight: 600;
}
.jha:hover{
   text-decoration: none;
   color:orange;
}
#sewlogo:hover{
   text-decoration:none;
}

	#menubar{
	background:white; 
	width:100%;
	height:70px;
	border-bottom:1px solid #dbdbdb;
	}
	.myclasschat{
		text-decoration:none;
   list-style:none;
   font-size:15px;
   font-weight:400;
	}
	.mycomments{
	font-weight: 400;
    float: right;
    margin-right: 10px;
    font-size: 14px;
    margin-top: 4px;
	}
	a:hover{
		text-decoration:none;
   list-style:none;
	}
	#fritogglebtn{
	width: 15%;
    float: left;
    height: 29px;
    margin-left: 10px;
    padding: 0px;
    font-size: 15px;
	}

	
	#vooooq{
		cursor:pointer;
	}
	#vooooq:hover{
		background:red;
	}
	
	#fri3{
		display: none;
    	width: 95%;
    	text-align: center;
    	font-size: 14px;
    	font-weight: 500;
	}
	#navsection1{
		float:left;
		margin-top:7.5px;
		display:block;
		width:550px;
		height:100%;
	}
	#navsection2{
		float:right;
		margin-top:6px;
		display:block;
		width:500px;
		height:100%;
	}
	#navsection2 > a{
		float:right;
	}
	#searchfriendid{
		width:65%;
		height:29px; 
		float:left;
		margin-left:1px;
	}
	#friendresult{
		display:none;
		width:100%;
		height:35px;
		float:left;
		font-size:13px;
	}
	
</style>

</head>

<body id="warning">

<jsp:include page="../classs/fontStore.jsp"/>
<c:if test="${ msg != null }">
      <script>
      $(function(){
         alert('${msg}');
         ${msg = null}
      });
         
      </script>
   </c:if>
<c:set var="contextPath" value="${pageContext.request.contextPath}"
   scope="application"/>
<c:set var="loginpage" value="login.me"/>
	<c:if test="${loginMember.msgStatus == 'Y' }">
		<script>
			$(function(){
				alert("관리자에게 온 메세지가 있습니다. 확인해주세요.");
				var mId= '${loginMember.mId}';
				$.ajax({
			        url:"updateMsgStatus.do",
			        data:{mId:mId},
			        type:"post",
			   		success:function(data){
			   			if(data=="good"){
			   				console.log("메세지 삭제");
			   			}else{
			   				console.log("오류");
			   			}
					},error:function(e){
						alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
					}
					
				});	
			});
		</script>
	</c:if>

<div id="menubar" class="sticky-top">


	<div style="position:relative; margin: 0 auto; padding:9pt 0; width:75pc; height:3px;">
		<h1 style="float:left; display:block; width:70px; height:100%; margin-right:36px; font-family:cinzel; font-weight:bold; color:orange;">
			<a href="viewMain.ad" id="sewlogo">SEW</a>
		</h1>

		<section id="mainnavsection" style="float:left; margin-top:7.5px; display:block; width:550px; height:100%;">
			<a style="margin:4px 36px 0 0;  font-size:18px; font-weight:600;" href="viewMain.ad" class="jha">Home</a>
			<a style="margin:4px 36px 0 0; font-size:18px; font-weight:600;" class="jha" href="flashcard2.fl">단어장</a>
			<a style="margin:4px 36px 0 0;  font-size:18px; font-weight:600;" href="ClassList.do" class="jha">스터디</a>
			<a style="margin:4px 36px 0 0;  font-size:18px; font-weight:600;" href="boardList.bo" class="jha">커뮤니티</a>
			<a style="margin:4px 36px 0 0;  font-size:18px; font-weight:600;" href="memberInquireList.ad" class="jha">고객센터</a>

		</section>
		
		<section id="navsection2">
				<c:if test="${ empty loginMember }">
					<a href="${ loginpage }?n=n" class="jha">회원가입</a>
					<a href="${ loginpage }" class="jha">로그인</a>
				</c:if>
				<c:if test="${ !empty loginMember }">
		    		<c:if test="${warningMsg[sessionScope.loginMember.mId]}">
					   <script>
					      $(function(){
					         alert('${warningMsg[sessionScope.loginMember.mId]}');
					         ${warningMsg[sessionScope.loginMember.mId] = null}
					      });   
					   </script>
					</c:if>
					<a  href="Memberlogout.me" class="jha">로그아웃</a>
					<c:if test="${ loginMember.mId == 'admin' }">
			    		<a  href="viewTotal.ad" class="jha">관리자페이지</a>
			    	</c:if>
			    	<c:if test="${ loginMember.mId != 'admin' }">
			    		<a  href="mypage.me" class="jha">마이페이지</a>
			    	</c:if>
			    	
    				<span class="jha" style="float:right; color: #474747;">${ loginMember.nickname }님 환영합니다.</span>
				</c:if>
		</section>
	</div> 
</div>
 	<c:if test="${ !empty whatclick }">
			<script>
				$(function(){
					var sel = '${whatclick}';
					console.log(sel);
					var $nav = $("#mainnavsection");
					switch(sel){
					case 'home': {$($nav.children()[0]).css("text-shadow"," 0px 0px 8px coral"); break;}
					case 'dan': {$($nav.children()[1]).css("text-shadow"," 0px 0px 8px coral"); break;}
					case 'class': {$($nav.children()[2]).css("text-shadow"," 0px 0px 8px coral"); break;}
					case 'community': {$($nav.children()[3]).css("text-shadow"," 0px 0px 8px coral"); break;}
					case 'center': {$($nav.children()[4]).css("text-shadow"," 0px 0px 8px coral"); break;}
					case 'mypage': {$($("#navsection2").children()[1]).css("text-shadow"," 0px 0px 8px coral"); break;}
					
					}
				});
			</script>
	</c:if>

<c:if test="${ !empty sessionScope.loginMember && sessionScope.loginMember.mId ne 'admin'  }">
<div id="chatting">
	<span id="chatlength" style="display:none;">0</span>
	<div id="chatexit"> 
		<span id="friendname" style="padding-left:5px;"></span>
		<input type="text" style="display:none;" id="friendId">
		<button type="button" class="close" aria-label="Close">
				<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<br>
	<table id="chattable" style="width:100%; height:80%;" cellspacing="0" cellpadding="0">
	  	<thead>
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
	<div style="width:300px; height:30px;position:fixed; background:white; bottom:0;" >
		<textarea id="chatcontent" style="width:220px; height:30px; margin:0px; resize: none;">
		</textarea>
		<input id="chatsend" type="button" value="전송">
	</div>	
</div>

<div id="friendlist" >
	<div id="friendlisttoggle" >
		친구
	</div>
	<div style="width:100%; height:29px;">
		<div class="friendnav" >
			<button class="friendbtn" id="frilist">친구목록</button>
		</div>
		<div class="friendnav" >
			<button class="friendbtn" id="frisearch">친구검색</button>
		</div>
		<div class="friendnav">
			<button class="friendbtn" id="friaccept">승인요청</button>
		</div>
	</div>

	<table id="fri3" >
		<thead >
			<tr>
				<td>아이디</td>
				<td>닉네임</td>
				<td>승인 &nbsp;&nbsp;&nbsp;취소</td>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	
	<div id="fri2" class="friendmenu" style="display:none;">
		<button id="fritogglebtn" class="btn btn-light">아이디</button>
		<input class="form-control" id="searchfriendid" placeholder="아이디를 입력해주세요"> 
		<button id="searchfriendbtn" class="btn btn-secondary"></button>
		<div id="friendresult">
			닉네임 : <span id="searchnickname"></span> &nbsp; 이름 : <span id="searchname"></span>
			<span id="searchfid" style="display:none;"></span>
			<button id="insertfriendbtn" class="btn btn-secondary"></button>
			<br>
			<img id="searchfriimg">
			<div id="searchfriintro"></div>
		</div>
		<span id="noresultfr" style="display:none;">검색된 결과가 없습니다.</span>
	</div>
	
	<ul class="accordion" id="fri1">
	<c:if test="${groupList.size() > 0 }">
	<c:forEach var="i" begin="0" end="${groupList.size()-1}" step="1">
	<li class="accordion-item">
		<h5 class="accordion-thumb">${ groupList.get(i)}</h5>

		<ul class="accordion-panel">
				<c:if test="${groupList.get(i) == '일반' }">
					<li style="height:25px; margin-bottom:5px;"><a class="myfriend" href="#">관리자</a>     
					<span class="mycomments">시스템관리자</span>
					<input type="text" style="display:none;"value="admin">
				</li>
				</c:if>
		<c:forEach var="fltwo" items="${ friendList }" varStatus="status">
			<c:if test="${ groupList.get(i) == fltwo.groupName }">
				<li style="height:25px; margin-bottom:5px;"><a class="myfriend" href="#">${fltwo.nickname }</a>     
				<span class="mycomments">${fltwo.comment }</span>
				<input type="text" style="display:none;"value="${fltwo.fId }">
				<button class="expandfr"></button>
				<br>
				<a class="friendfunc" id="changecomment${status.count}" href="#">코멘트변경</a>
				<a class="friendfunc" id="deletefriend${status.count}" href="#">친구삭제</a> 
				<a class="friendfunc" id="changegroup${status.count}" href="#">그룹변경</a> 
				</li>
				
				
			</c:if>
		</c:forEach>
		
		</ul>
	</li>
	</c:forEach>
	</c:if>
	<!-- 클래스 그룹채팅 -->
	<c:if test="${mycList != null }">
			<li class="accordion-item">
				<h5 class="accordion-thumb">클래스</h5>
				<ul class="accordion-panel">
					<c:forEach var="ci" begin="0" end="${ mycList.size() - 1 }">
					<li style="height:25px; margin-bottom:5px;"><a class="myclasschat" href="#">
					<c:if test="${mycList.get(ci).title.length() > 8 }">
						${mycList.get(ci).title.substring(0,8) }..
					</c:if>
					<c:if test="${mycList.get(ci).title.length() < 8 }">
						${mycList.get(ci).title }
					</c:if>
					</a>     
					<span class="mycomments">${mycList.get(ci).level }</span>
					<input type="text" style="display:none;"value="${mycList.get(ci).cNo }">
					<button class="expandclass"></button>
					<br>
					<a class="classfunc" href="myClass.do?cNo=${mycList.get(ci).cNo }">클래스로이동</a>
					</li>
					</c:forEach> 
				
				</ul>
			</li>
		</c:if>
	
	
</ul>
</div>
</c:if>
<!-- 친구기능 확장 -->
<script>
	$(function(){
		$(document).on('click','.expandfr',function(){
			var $li = $(this).parent();
			if($li.children('.friendfunc').css("display") == "none"){
				$li.height($li.height()).animate({height: "45px"}, 200);
				$li.children('.friendfunc').css("display","block");	
			}else{
				$li.children('.friendfunc').css("display","none");
				$li.height($li.height()).animate({height: "25px"}, 200);
			}
		});
		$(document).on('click','.expandclass',function(){
			var $li = $(this).parent();
			if($li.children('.classfunc').css("display") == "none"){
				$li.height($li.height()).animate({height: "45px"}, 200);
				$li.children('.classfunc').css("display","block");	
			}else{
				$li.children('.classfunc').css("display","none");
				$li.height($li.height()).animate({height: "25px"}, 200);
			}
		});
		$(document).on('click','#fritogglebtn',function(){
			var ht = $(this).html();
			if(ht == "아이디"){
				$(this).html("닉네임");
				$("#searchfriendid").attr("placeholder","닉네임를 입력해주세요.");
			}else{
				$(this).html("아이디");
				$("#searchfriendid").attr("placeholder","아이디를 입력해주세요.");
			}
			
		});
	});
</script>

<!-- 친구에 대한 설정 스크립트 -->
<script>
	$(function(){
		$(document).on('click', '.friendfunc', function(){
			var fId= $($(this).parent().children()[2]).val();
			var mId = '${loginMember.mId}';
			var id = $(this).attr('id');
			var count = id.charAt(id.length-1);
			console.log();
			if(id.includes("comment")){
				var $comment= $($(this).parent().children()[1]);
				// 코멘트변경
				var c = prompt("코멘트를 입력해주세요 (6글자 이하)",$comment.html());
				if(c.length >= 7){
					alert("코멘트는 6글자 이하로 작성해주세요.");
				}
				if(c != null && c!= $comment.html()&& c.length <7){
					$.ajax({
				        url:"updateComment.do",
				        data:{fId:fId,mId:mId,comment:c},
				        type:"post",
				   		success:function(data){
				   			if(data=="good") {
				   				alert("코멘트가 변경되었습니다.");
				   				$comment.html(c);
				   				reupdatelist();
				   			}
				   			else alert("코멘트 변경 실패");
						},error:function(e){
							alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
						}
						
					});	
				}
			}else if(id.includes("delete")){
				// 친구삭제
				if(confirm("정말로 친구해제하시겠습니까? \n해제시 그동안의 채팅기록이 사라집니다.")){
					$.ajax({
				        url:"deleteFriend.do",
				        data:{fId:fId,mId:mId},
				        type:"post",
				   		success:function(data){
				   			if(data=="good") {
				   				alert("정상적으로 친구해제되었습니다.");
				   				$(this).parent().css("display","none");
				   				reupdatelist();
				   			}
				   			else alert("친구해제 실패");
						},error:function(e){
							alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
						}
						
					});		
				}
			}else{
				var groupName = prompt("바꿀 그룹명을 입력해주세요");
				if(groupName != null){
					$.ajax({
				        url:"updateGroup.do",
				        data:{fId:fId,mId:mId,groupName:groupName},
				        type:"post",
				   		success:function(data){
				   			if(data=="good") {
				   				reupdatelist();
				   			}
				   			else alert("그룹변경 실패");
						},error:function(e){
							alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
						}
						
					});	
				}
			}
		});
	});
</script>
<!-- 친구찾기 친구추가 스크립트 -->
<script>
	$(function(){
		// 친구요청리스트 가져오기
		$("#friaccept").click(function(){
			var id = '${loginMember.mId}';
			$("#fri3 > tbody").html("");
			$.ajax({
		        url:"friendAccept.ck",
		        data:{id:id},
		        type:"post",
		   		success:function(data){
		   			
		   			for(var i in data){
					/* var $div = $("<div class='acceptfrilist' >");
					$div.html("아이디 : "+data[i].fId+" 닉네임 : "+ data[i].nickname);
					$("#fri3").append($div).append(btn1).append(btn2); */
					var $tr = $("<tr>");
					var $btn1 = $("<button class='acceptfri' onclick='acceptfriend("+i+")'> ");
		   			var $btn2 = $("<button class='cancelfri'onclick='cancelfriend("+i+")'> ");
					var $idtd = $("<td>").html(data[i].fId);
					var $nicktd = $("<td>").html(data[i].nickname);
					var $acctd = $("<td>").append($btn1).append($btn2);
					$tr.append($idtd).append($nicktd).append($acctd);
					$("#fri3 > tbody").append($tr);
		   			}
				},error:function(e){
					alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
				}
				
			});	

		});
		
		// 보이고 안보이고
		$(".friendbtn").click(function(){
			
			var id = $(this).attr('id');
			if(id=="frilist"){
				$("#fri1").css("display","block");
				$("#fri2").css("display","none");
				$("#fri3").css("display","none");
			}else if(id=="frisearch"){
				$("#fri1").css("display","none");
				$("#fri2").css("display","block");
				$("#fri3").css("display","none");
			}else{
				$("#fri1").css("display","none");
				$("#fri2").css("display","none");
				$("#fri3").css("display","table");
			}
				
		});
		
		
		// 친구검색
		$("#searchfriendbtn").click(function(){
			
			$("#searchfreind").css("height","70px");
			var sea = $("#fritogglebtn").html();
			var id= $("#searchfriendid").val();
			$.ajax({
		        url:"findfriend.ck",
		        data:{id:id,sea:sea},
		        dataType:"json",
		        type:"post",
		   		success:function(data){
		   			$("#noresultfr").css("display","none");
		   			$("#friendresult").css("display","block");
		   			$("#searchnickname").html(data.nickname);
		   			$("#searchname").html(data.name);
		   			$("#searchfid").html(data.id);
		   			$("#searchfriimg").attr("src",'${ contextPath }/resources/profileimg/'+data.profileimg);
		   			$("#searchfriintro").html(data.introduce).css("min-height",$("#searchfriimg").css("height"));
				},error:function(e){
					$("#friendresult").css("display","none");
					$("#noresultfr").css("display","block");
				}
				
			});	
		});
		// 친구요청하기
		$("#insertfriendbtn").click(function(){
			var fId = $("#searchfid").html();
			var mId = '${ loginMember.mId}';
			if(fId != mId){
			$.ajax({
		        url:"insertfriend.do",
		        data:{fId:fId,mId:mId},
		        type:"post",
		   		success:function(data){
		   			if(data == 'one'){
		   				alert("친구요청되었습니다.");
		   				reupdatelist();
		   			}else if(data == 'two'){
		   				// 중복일때 
		   				alert("중복된 친구입니다.");
		   			}else{
		   				alert("친구추가 실패...");
		   			}
				},error:function(e){
					alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
				}
				
			});	
			}else{
				alert("자기 자신은 친구추가 할수 없습니다.");
			}
		});

	})
	function acceptfriend(i){
		var x = $("#fri3 > tbody").children()[i];
		var y = $(x).children()[0];
		var fId = $(y).html();
		var mId = '${loginMember.mId}';
		$.ajax({
	        url:"acceptfriend.do",
	        data:{fId:fId,mId:mId},
	        type:"post",
	   		success:function(data){
	   			if(data =='success'){
	   				alert("친구수락되었습니다.");
	   				$(x).css("display","none");
	   				reupdatelist();
	   			}
	   			else alert("실패!!");
			},error:function(e){
				alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
			}
			
		});	
	}
	
	function cancelfriend(i){
		var x = $("#fri3 > tbody").children()[i];
		var y = $(x).children()[0];
		var fId = '${loginMember.mId}';
		var mId = $(y).html();
		$.ajax({
	        url:"cancelfriend.do",
	        data:{fId:fId,mId:mId},
	        type:"post",
	   		success:function(data){
	   			if(data =='success'){
	   				alert("친구수락해제되었습니다.");
	   				$(x).css("display","none");
	   				reupdatelist();
	   			}
	   			else alert("실패!!");
			},error:function(e){
				alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
			}
			
		});	
	}
	
	function reupdatelist(){
		var mId = '${loginMember.mId}';
			$.ajax({
		        url:"updatingfriend.do",
		        data:{mId:mId},
		        type:"post",
		   		success:function(data){
		   			var currentLocation = window.location;
		   			$("#fri1").load(currentLocation + ' #fri1');
		   			
				},error:function(e){
					alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
				}
				
			});	
	}
</script>
<!-- 채팅스크립트 -->
<script>
var chatId =null;
$(function() {
	// 로딩완료시 채팅입력창 초기화
	$("#chatcontent").val("");
	
	// (Optional) Active an item if it has the class "is-active"	
	$(".accordion > .accordion-item.is-active").children(".accordion-panel").slideDown();
	$(document).on('click', '.accordion-thumb', function(){
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
// 클래스단체채팅
$(document).on('click', '.myclasschat', function(){
	$("#friendname").html($(this).html());
	var cId = $(this).next().next().val();
	if($("#friendId").val() != cId){
		$("#friendId").val(cId);
		$("#chattable tbody").html("");
		$("#chattable tbody").css("background-image","url( 'resources/images/로딩.gif' )");
		$("#chattable tbody").css("background-repeat","no-repeat");
		$("#chattable tbody").css("background-size","50% 45%");
		$("#chattable tbody").css("background-position","center center");
	}
	
	if($("#chatting").css("display")=="block"){
		$("#chatting").css("display","none");
		clearInterval(chatId);
	}else{
		$.ajax({
        url:"chatclassimg.do",
        data:{cId:cId},
        dataType:"json",
        type:"post",
   		success:function(data){
   			 chatId = setInterval(function(){
   				chatclassloggo(data);
   				}, 1500);  
		},error:function(e){
			alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
		}	
	});		
	 // 에이작스로 채팅로그 불러온 후 
		$("#chatting").css("display","block"); 
	}
});

// 유저와 채팅
$(document).on('click', '.myfriend', function(){
	$("#friendname").html($(this).html());
	var fId = $(this).next().next().val();
	if($("#friendId").val() != fId){
		$("#friendId").val(fId);
		$("#chattable tbody").html("");
		$("#chattable tbody").css("background-image","url( 'resources/images/로딩.gif' )");
		$("#chattable tbody").css("background-repeat","no-repeat");
		$("#chattable tbody").css("background-size","50% 45%");
		$("#chattable tbody").css("background-position","center center");
	}
	
	if($("#chatting").css("display")=="block"){
		$("#chatting").css("display","none");
		clearInterval(chatId);
		
	}else{
	// 에이작스 연결하기
		$.ajax({
        url:"chatuserimg.do",
        data:{fId:fId},
        type:"post",
   		success:function(data){
   			if(fId != "admin"){
   				$("#chatcontent").attr("disabled",false);
   	   			$("#chatsend").attr("disabled",false);
   				chatId = setInterval(function(){
   					chatloggo(data);
   				}, 1500);
   			
   			}else{
   				$("#chatcontent").attr("disabled",true);
   	   			$("#chatsend").attr("disabled",true);
   				chatId = setInterval(function(){
   	   				chatloggo("adminimg.jpg");
   	   			}, 1500);
   			}
		},error:function(e){
			alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
		}	
	});		
	 // 에이작스로 채팅로그 불러온 후 
		$("#chatting").css("display","block");
	 
	}
});
$(".close").click(function(){
	$(this).parent().parent().css("display","none");
	clearInterval(chatId);
	//$("#chattable tbody").css("display","none");
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
   				if($("#chatlength").html() == -1){
   					$tableBody.html("");
   				}
   	   		var $tr = $("<tr align='right'>");
			var $tdimg = $(" <td class='chattd' width='50'>");
			var $profileimg = $("<img class='chatprofileimg' src='${ contextPath }/resources/profileimg/${loginMember.profileimg}' width='50'>");
			$tdimg.append($profileimg);
			var $chatContent = $(" <td class='chattd' colspan='11' >");
			var $chat = $(" <p class='mychatp' style='float:right; padding: 15px 20px;'>").text(content);
			$chatContent.append($chat);
			
			
			$tr.append($chatContent);
			$tr.append($tdimg);
			$tableBody.append($tr);
			$("#chatlength").html($("#chatlength").html()+1);
			 var objDiv = document.getElementById("chatting");
			 objDiv.scrollTop = objDiv.scrollHeight;
   			}else{
   				alert("채팅 오류!! 관리자에게 문의하세요");
   			}
   		
		},error:function(e){
			alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
		}
		
	});	
	
});

function chatclassloggo(imgList){
	var cId = $("#friendId").val();
	var mId = '${ loginMember.mId}';
	var chatleng =$("#chatlength").html();
	$tableBody = $("#chattable tbody");
	$.ajax({
        url:"chatclasslog.ck",
        data:{mId:mId,cId:cId,chatleng:chatleng},
        dataType:"json",
        type:"post",
   		success:function(data){
			if(data.msg != "none" && data.msg !="nothing"){
				$tableBody.html("");
				$tableBody.css("background","white");
				
				for(var i in data.clist){

					if(data.clist[i].writerId == mId){
						var $tr = $("<tr align='right'>");
						var $tdimg = $(" <td class='chattd' width='50'>");
						var $profileimg = $("<img class='chatprofileimg' src='${ contextPath }/resources/profileimg/${loginMember.profileimg}' width='50'>");
						$tdimg.append($profileimg);
						var $chatContent = $(" <td class='chattd' colspan='11' >");
						var $chat = $(" <p class='mychatp' style='float:right; padding: 15px 20px;'>").text(data.clist[i].content);
						$chatContent.append($chat);
						
						
						$tr.append($chatContent);
						$tr.append($tdimg);
					}else{
						var asd = "";
						var nickname="";
						for(var j=0; j<Object.keys(imgList).length; j++){
							if((data.clist[i].writerId).includes(Object.keys(imgList)[j])){
								asd = Object.values(imgList)[j].profileimg;
								nickname =Object.values(imgList)[j].nickname;
							}
						}
						
						var $tr = $("<tr >");
						var $tdimg = $(" <td class='chattd' width='50'>");
						var $profileimg = $("<img class='chatprofileimg'src='${ contextPath }/resources/profileimg/"+asd+"' width='50'>");
						var $span = $("<span class='chatimgtag'>").html(nickname);
						$tdimg.append($profileimg);
						$tdimg.append($span);
						var $chatContent = $(" <td class='chattd' colspan='11' >");
						var $chat = $(" <p class='mychatp' >").text(data.clist[i].content);
						$chatContent.append($chat);
						
						
						$tr.append($tdimg);
						$tr.append($chatContent);
					}
					
					$tableBody.append($tr);
				}
			
				$("#chatlength").html(i);
				var objDiv = document.getElementById("chatting");
				 objDiv.scrollTop = objDiv.scrollHeight;			
   			}else if(data.msg =="nothing"){
   				$tableBody.html("");
				$tableBody.css("background","white");
				var $tr = $("<tr>");
				var $chatContent = $(" <td colspan='12' style='text-align:center;' >").html("채팅기록이 없습니다.");
				$tr.append($chatContent);
				$tableBody.append($tr);
				$("#chatlength").html(-1);
   			}
			
		},error:function(e){
			alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
		}
	});
	
} 


	function chatloggo(img){
		var fId = $("#friendId").val();
		var mId = '${ loginMember.mId}';
		var chatleng =$("#chatlength").html();
		$tableBody = $("#chattable tbody");
		$.ajax({
	        url:"chatlog.ck",
	        data:{mId:mId,fId:fId,chatleng:chatleng},
	        dataType:"json",
	        type:"post",
	   		success:function(data){
	   			
				if(data.msg != "none" && data.msg !="nothing"){
					$tableBody.html("");
					$tableBody.css("background","white");
					
					for(var i in data.clist){
	
						if(data.clist[i].writerId == mId){
							var $tr = $("<tr align='right'>");
							var $tdimg = $(" <td class='chattd' width='50'>");
							var $profileimg = $("<img class='chatprofileimg' src='${ contextPath }/resources/profileimg/${loginMember.profileimg}' width='50'>");
							$tdimg.append($profileimg);
							var $chatContent = $(" <td class='chattd' colspan='11' >");
							var $chat = $(" <p class='mychatp'  style='float:right; padding: 15px 20px;'>").text(data.clist[i].content);
							$chatContent.append($chat);
							
							
							$tr.append($chatContent);
							$tr.append($tdimg);
						}else{
							var $tr = $("<tr >");
							var $tdimg = $(" <td class='chattd' width='50'>");
							var $profileimg = $("<img class='chatprofileimg'src='${ contextPath }/resources/profileimg/"+img+"' width='50'>");
							$tdimg.append($profileimg);
							var $chatContent = $(" <td class='chattd' colspan='11' >");
							var $chat = $(" <p class='mychatp'>").text(data.clist[i].content);
							$chatContent.append($chat);
							
							
							$tr.append($tdimg);
							$tr.append($chatContent);
						}
						
						$tableBody.append($tr);
					}
				
					$("#chatlength").html(i);
					var objDiv = document.getElementById("chatting");
					 objDiv.scrollTop = objDiv.scrollHeight;			
	   			}else if(data.msg =="nothing"){
	   				$tableBody.html("");
					$tableBody.css("background","white");
					var $tr = $("<tr>");
					var $chatContent = $(" <td colspan='12' style='text-align:center;' >").html("친구와의 채팅기록이 없습니다.");
					$tr.append($chatContent);
					$tableBody.append($tr);
					$("#chatlength").html(-1);
	   			}
				
			},error:function(e){
				alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
			}
		});
		
	} 
	

</script>


<!--  워닝 모달 -->
<!-- Extra large modal -->


<div class="modal fade warning2" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl" role="document">
    <div class="modal-content">
      <img src="${ contextPath }/resources/profileimg/warning.png" style="height:900px; z-index:1000;">
    </div>
  </div>
</div>


</body>

</html>