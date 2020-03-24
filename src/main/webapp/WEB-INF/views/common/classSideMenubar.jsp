<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<!-- <link rel="stylesheet" href=".../css/left-menubar.css"> -->
<link rel="stylesheet" type="text/css"
   href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8"
   src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
   
   <!-- 폰트 모음 -->
   <link href="https://fonts.googleapis.com/css?family=Cinzel&display=swap" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet"> <!--  font-family: 'Nanum Gothic', sans-serif; -->
   <link href="https://fonts.googleapis.com/css?family=Indie+Flower&display=swap" rel="stylesheet"> <!--  font-family: 'Indie Flower', cursive; -->
   
   <!--  폰트 모음 끝 -->
<style>
body {
   height: 1050px;
   margin: 0;
   background: whitesmoke;
}
a{
	text-decoration:none;
	color: #fff;
}
a:hover{
	text-decoration:none;
	color: #fff;
}

main .helper span {
   color: rgba(0, 0, 0, 0.2);
   font-size: 0.4em;
   display: block;
}

.menu {
   /* background: #5bc995; */
   background: #88dba3;
   height: 100%;
   /* width: 240px; */
   width: 280px;
   z-index: 5;
   outline: none;
   font-family: "Open Sans", Helvetica Neue, Helvetica, Arial, sans-serif;
   color: #fff;
   float: left;
   
}

.menu .avatar {
   width: 280px;
   background: rgba(0, 0, 0, 0.3);
   padding: 2em 0.5em;
   text-align: center;
   margin-left: -24px;
   margin-top: -24px;
}

.menu .avatar img {
   width: 110px;
   border-radius: 50%;
   overflow: hidden;
   border: 4px solid #ffea92;
   box-shadow: 0 0 0 4px rgba(255, 255, 255, 0.2);
}

.menu .avatar h2 {
   font-weight: normal;
   margin-bottom: 0;
}

.menu ul {
   list-style: none;
   padding: 0.5em 0;
   margin: 0;
}

.menu ul li {
   padding: 0.5em 1em 0.5em 3em;
   font-size: 0.95em;
   font-weight: regular;
   background-repeat: no-repeat;
   background-position: left 15px center;
   background-size: auto 20px;
   transition: all 0.15s linear;
   cursor: pointer;
}

.menu ul li.icon-books {
   background-image: url("http://www.entypo.com/images//book.svg");
}

.menu ul li.icon-customers {
   background-image: url("http://www.entypo.com/images//briefcase.svg");
}

.menu ul li.icon-users {
   background-image: url("http://www.entypo.com/images//users.svg");
}

.menu ul li.icon-settings {
   background-image: url("http://www.entypo.com/images//tools.svg");
}

.menu ul li:hover {
   background-color: rgba(0, 0, 0, 0.1);
}

.menu ul li:focus {
   outline: none;
}

@media screen and (max-width: 900px) and (min-width: 400px) {
   .menu {
      width: 90px;
   }
   .menu .avatar {
      position: relative;
      width: 90px;
      background: rgba(0, 0, 0, 0.3);
   }
   .menu .avatar img {
      margin-left: -16px;
      width: 60px;
   }
   .menu .avatar h2 {
      opacity: 0;
      position: absolute;
      top: 50%;
      left: 100px;
      margin: 0;
      min-width: 200px;
      border-radius: 4px;
      background: rgba(0, 0, 0, 0.4);
      transform: translate3d(-20px, -50%, 0);
      transition: all 0.15s ease-in-out;
   }
   .menu .avatar:hover h2 {
      opacity: 1;
      transform: translate3d(0px, -50%, 0);
   }
   .menu ul li {
      height: 60px;
      background-position: center center;
      background-size: 30px auto;
      position: relative;
   }
   .menu ul li span {
      opacity: 0;
      position: absolute;
      background: rgba(0, 0, 0, 0.5);
      padding: 0.2em 0.5em;
      border-radius: 4px;
      top: 50%;
      left: 80px;
      transform: translate3d(-15px, -50%, 0);
      transition: all 0.15s ease-in-out;
   }
   .menu ul li span:before {
      content: '';
      width: 0;
      height: 0;
      position: absolute;
      top: 50%;
      left: -5px;
      border-top: 5px solid transparent;
      border-bottom: 5px solid transparent;
      border-right: 5px solid rgba(0, 0, 0, 0.5);
      transform: translateY(-50%);
   }
   .menu ul li:hover span {
      opacity: 1;
      transform: translate3d(0px, -50%, 0);
   }
}

@media screen and (max-width: 400px) {
   body {
      padding-left: 0;
   }
   .menu {
      width: 230px;
      box-shadow: 0 0 0 100em rgba(0, 0, 0, 0);
      transform: translate3d(-230px, 0, 0);
      transition: all 0.15s ease-in-out;
   }
   .menu .smartphone-menu-trigger {
      width: 40px;
      height: 40px;
      position: absolute;
      left: 100%;
      background: #5bc995;
   }
   .menu .smartphone-menu-trigger:before, .menu .smartphone-menu-trigger:after
      {
      content: '';
      width: 50%;
      height: 2px;
      background: #fff;
      border-radius: 10px;
      position: absolute;
      top: 45%;
      left: 50%;
      transform: translate3d(-50%, -50%, 0);
   }
   .menu .smartphone-menu-trigger:after {
      top: 55%;
      transform: translate3d(-50%, -50%, 0);
   }
   .menu ul li {
      padding: 1em 1em 1em 3em;
      font-size: 1.2em;
   }
   .menu:focus {
      transform: translate3d(0, 0, 0);
      box-shadow: 0 0 0 100em rgba(0, 0, 0, 0.6);
   }
   .menu:focus .smartphone-menu-trigger {
      pointer-events: none;
   }
}

@media screen and (min-width: 480px) {
   .table {
      margin-top: 4vh;
      margin-left: 6vw;
      width: 70vw;
      float: left;
   }
}

.fixed_headers {
   margin-left: 390px;
   font-size: 12px;
   min-width: 500px;
}

.manage a {
   display: block;
}

.hide {
   display: none;
}

.bold-weight {
   font-weight: bold;
}
.closeMenu:hover{
	color: rgb(0,154,200);
	display: block;
	transition: 0.2s ease-in-out;
}
.menu{
	overflow-x: hidden;
	transition:0.5s ease-in-out;
}
</style>
</head>
<body>
	<jsp:include page="../classs/fontStore.jsp"/>
	<script>
		function closeNav() {
			document.getElementById('menu').style.width = '0';
		}
	</script>
   <nav class="menu" id="menu" tabindex="0" style="font-family: 'Nanum Gothic', sans-serif;">
      <div class="smartphone-menu-trigger"></div>
      <header class="avatar">
      		
	     <!-- <a style="margin-left:160px; margin-top:-30px; position:absolute; font-size:32px;" class="closeMenu" onclick='closeNav()' href="#">x</a> -->
      		
      	<!--  아이콘 시작 -->
      	<c:set var="imgFlag2" value="true"/>
			<c:forEach var="q" begin="0" end="${ userList.size() - 1 }" >
				 
				<c:if test="${ loginMember.mId eq userList.get(q).refId && imgFlag2 }">
					 <th scope="row">
					 	<img src="${ contextPath }/resources/profileimg/${ userList.get(q).changeName }">
					 </th>
					<c:set var="imgFlag2" value="false"/>
				</c:if>
			</c:forEach>
			<c:if test="${ imgFlag2 }">
				<th scope="row">
					<img src="${ contextPath }/resources/profileimg/defaultimg.png">
				</th>										
				<c:set var="imgFlag2" value="false"/>
			</c:if>
						
         <!-- <img
            src="https://s3.amazonaws.com/uifaces/faces/twitter/kolage/128.jpg" /> -->
         <h2>${ loginMember.mId }</h2>
         
         
         <!--  아이콘 끝 -->
      </header>
      <ul class="manage">
         
         <!-- 스터디 단어장 -->
         <c:url var="myClass" value="myClass.do">
         	<c:param name="cNo" value="${ cNo }"/>
         </c:url>
         <!-- 시험 목록 -->
         <c:url var="classTestList" value="classTestList.do">
         	<c:param name="cNo" value="${ cNo }"/>
         </c:url>
         <!-- 멤버 권한 -->
         <c:url var="classMemberRight" value="classMemberRight.do">
         		<c:param name="cNo" value="${ cNo }"/>
         </c:url>
         <!--  멤버 시험 보기 -->
         <c:url var="classMemberTest" value="classMemberTest.do">
         	<c:param name="cNo" value="${ cNo }"/>
         </c:url>
         <!-- 가입 대기  -->
         <c:url var="classWaitjoin" value="classWaitjoin.do">
         	<c:param name="cNo" value="${ cNo }"/>
         </c:url>
         <!-- 공지사항으로 이동 -->
         <c:url var="classNotice" value="classNoticeView.do">
         	<c:param name="cNo" value="${ cNo }"/>
         </c:url>
         
         
         <li tabindex="0" class="icon-books icon"><a><span>스터디</span></a>
            <ul class="hide">
               <li class="homepage"><a href="${ myClass }">스터디 단어장</a></li>
               <li class="homepage"><a href="${ classTestList }">시험 목록</a></li>
               <li class="homepage"><a href="${ classNotice }">공지 사항</a></li>
            </ul>
         </li>
         <c:if test="${ loginMember.mId eq classs.ornerId }">
         <li tabindex="0" class="icon-users icon"><a><span>멤버 관리</span></a>
            <ul class="hide">
               <li class="homepage"><a href="${ classMemberRight }">멤버 권한 설정</a></li>
               <li class="homepage"><a href="${ classMemberTest }">시험 정보 보기</a></li>
               <li class="homepage"><a href="${ classWaitjoin }">가입 요청</a></li>
            </ul>
         </li>
         <li tabindex="0" class="icon-settings icon"><a><span>스터디 관리</span></a>
            <ul class="hide">
               <li class="homepage" id="managermodal" data-toggle="modal" data-target=".bd-example-modal-sm">매니저 전환</li>
               <li class="homepage" id="studymodal" data-toggle="modal" data-target=".studyexit">스터디 폐강</li>
               <li class="homepage" id="createTest" data-toggle="modal" data-target=".createTest" onclick="getAllData('${ cNo }')">시험 문제 만들기</li>
            </ul>
         </li>
         </c:if>
      </ul>
      <script>
     	// 시험문제 만들기 클릭시
      	function getAllData(searchInput) {
      		 var send = JSON.stringify({
      	         'search' : searchInput
      	      });
     		console.log(searchInput);
             $.ajax({
                type : "POST",
                dataType : "json",
                contentType : "application/json; charset=utf-8",
                data : send,
                url : 'http://localhost:1222/getAllData',
                success : function(data) {
                // vocaList 아래 인풋 
                	var div = $("#vocaList");
                	var i = 1;
                	//console.log(data);
                	//console.log($("#chkkor").val())
                   	for (var key in data) {
                   		div.append("<label><input type='checkbox' onchange='qwer(this);' id='chk" + i + "' value='" + key + "'>"+key+"</label><br>");
                   		var obj = data[key];
                   		for(var key in obj){
                   			var obj2 = obj[key];
                   			//console.log(obj[key]);
                   			for(var key in obj[key]){
                   				
                   				//console.log(key); // 영어
                   				//console.log(obj2[key]);// 한글
                   			}
                   		}
                   		i++;
                	}
                },
                error : function() {
                   console.log("error has occured retriving data from MongoServer")
                }
             });
         }
      </script>
      <!-- 해당 클래스  -->
      <script>
      	var i = 0;
      	var strArr= new Array();
      	
      	function qwer(clickthis){
      		var strArr2 = new Array(); // ㅇ
      		strArr2.push(clickthis.value);
      		goAjax(strArr2); // ㅇ
      		
      	}
      	
      	function goAjax(strArr2){
      		console.log(strArr2);
      		testvs(strArr2);
      	}
      </script>
      <script>
   // 체크박스 클릭할때마다 해당 단어장의 단어들이 추가됨
      function testvs(titles)
      {
         var send =
         JSON.stringify({
            'search' : 'CSID_54', // 이거 문제있내;;
            'title' : titles
         });
         $.ajax({
            type : "POST",
            dataType : "json",
            contentType : "application/json; charset=utf-8",
            data : send,
            url : 'http://localhost:1222/testURL',
            success : function(data) {
              	console.log(data);
	           	var chkkor = $("#chkkor");
	        	var chkeng = $("#chkeng");
        	
        		console.log("밸류" + chkkor.val());
               for(var key in data){
            	   var obj = data[key];
            	   for(var key in obj){
            		   chkkor.val(chkkor.val() + "," + obj[key]);
            		   chkeng.val(chkeng.val() + "," + key);
            		   //console.log(obj[key]);    // 한글
            		   //console.log(key);		// 영어
            	   }
               }
                console.log("한글 : " + chkkor.val());
                console.log("영어 : " + chkeng.val());;
            },
            error : function() {
               console.log("error has occured retriving data from MongoServer")
            }
         });
         
      } 
      </script>
      
      <script>
      
            $(document).ready(function () {
               
                $(".icon>a").click(function () {
                    var submenu = $(this).nextAll("ul");
                    if (submenu.is(":visible")) {
                        submenu.slideUp();
                    } else {
                        submenu.slideDown();
                    }
                });
                
                $(".icon li>a").click(function() {
                   var submenu = $(this).nextAll("ul");
                   if(submenu.is(":visible")) {
                      submenu.slideUp();
                   }else {
                      submenu.slideDown();
                   }
                });
            });
            
            
        </script>
   </nav>
   
   <!-- 매니저 전환 모달 -->
	<div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="managermodal">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content" style="width:350px; height:200px;">
				<span style=" margin:auto; text-align:center; padding:10px; width:280px; height:100px; font-weight:700; margin-top:30px;">매니저 권한 양도</span>
				<div style="margin:auto; margin-top:-60px;">
					<select class="custom-select" style="width:200px; margin:auto;" id="managerChangeSelect">
						<c:if test="${ !empty cmList }">
							<c:forEach var="i" begin="0" end="${ cmList.size() - 1 }">
								<c:if test="${ cmList.get(i).id ne classs.ornerId }">
									<option value="${ cmList.get(i).id }">${ cmList.get(i).id }</option>
								</c:if>
							</c:forEach>
						</c:if>
					</select>
				</div>
				
				<div style="margin:auto;">
					<button style="width:100px; height:40px; border:0px; background:#e6e6eb" id="managercn">취소</button>
					<button style="width:100px; height:40px; border:0px; background:#606060; color:white;" id="managerChangeBtn">확인</button>
					<button id="mangerChangeBtnHide" value="${ cNo }" style="display:none;"></button>
				</div>
			</div>
		</div>
	</div>
	<button id="qwe" style="display:none;"></button>
	<!-- 매니저 확인 -->
	<script>
		$(function(){
			$("#managerChangeBtn").click(function(){
				var id = $("#managerChangeSelect option:selected").val();
				var obj = new Object(); // json에 보내기위한 객체
				var cNo = $("#managerChangeBtnHide").val();
				if(confirm(id + "님에게 클래스 매니저의 권한을 양도하시겠습니까?")){
					obj.id = id;
					obj.cNo = cNo;
					$.ajax({
						url:"ManagerChange.do",
						data : JSON.stringify(obj),
						type:"post",
						contentType:"application/json; charset=utf-8",
						success:function(data){
							if(data >= 1){
								alert(id + "님에게 매니저 권한을 양도하였습니다.");
								location.href="myClass.do?cNo=${ cNo }";	
							}
						},
						error:function(e){
							alert(e);
						}
					});
				}
			});
			$("#managercn").click(function(){
				$("#managermodal").click();
			});
		});
	</script>
	
	
	<!-- 스터디 폐강 모달-->
	<div class="modal fade studyexit" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content" style="width:350px; height:200px;">
				<span style=" margin:auto; text-align:center; padding:10px; width:280px; height:100px; font-weight:700; margin-top:30px;">회원 비밀번호를 입력해주세요.</span>
				<div style="margin:auto; margin-top:-60px;">
					<input type="password"  style="width:200px; margin:auto;" id="myPwd">
					<input type="text" value="${ loginMember.pwd }" id="ckPwd" style="display:none;">
				</div>
				
				<div style="margin:auto;">
					<button style="width:100px; height:40px; border:0px; background:#e6e6eb" id="studycn">취소</button>
					<button style="width:100px; height:40px; border:0px; background:#606060; color:white;" id="studychk">확인</button>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function(){
			$("#studycn").click(function(){
				$("#studymodal").click();
			});
			
			$("#studychk").click(function(){
				var obj = new Object(); // json에 보내기위한 객체
				var cNo = $("#managerChangeBtnHide").val();
				var pwd = $("#myPwd").val();
				var pwd2 = $("#ckPwd").val();
				if(confirm("정말 클래스를 폐강하시겠습니까?")){
					obj.pwd = pwd;
					obj.cNo = cNo;
					obj.pwd2 = pwd2;
					$.ajax({
						url:"EndClass.do",
						data : JSON.stringify(obj),
						type:"post",
						contentType:"application/json; charset=utf-8",
						success:function(data){
							if(data >= 1){
								alert("클래스가 폐강되었습니다.");
								location.href="ClassList.do";
							}else{
								alert("비밀번호가 일치하지 않습니다.");
							}
						},
						error:function(e){
							alert(e);
						}
					});
				}
			});
		});
	</script>
	
	<!-- 시험 만들기 -->
	<form action="createTest.do" method="post">
	<div class="modal fade createTest" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content" style="width:550px;">
				<div style="margin: 20px auto; padding: 20px; max-width: 500px; background: white; color:#4a4a4a; position: relative;">
        <h1 style="font-size: 2rem; font-weight: 800;">단어 시험 설정</h1>
        <div style="display: inline-block;">
            <div style="margin-top:1rem; margin-bottom:.5rem; text-align: left;">
                <label style="display: block; font-weight: 700;">참고 단어장 선택</label>
            </div>
            <div style="margin-top:1rem; margin-bottom:.5rem; text-align: left; overflow: scroll; height:200px; width:400px;line-height: 40px;" id="vocaList">
               
            </div>

			<!-- 해당 클래스에 소속된 단어장 리스트를 불러오는 Function -->
			
            <div style="margin-top:1rem; margin-bottom:.5rem; text-align: left;">
                    <label style="display: block; font-weight: 700;">문제 수 선택</label>
            </div>

            <div style="margin-top:1rem; margin-bottom:.5rem; text-align: left;">
                <label><input type="radio" name="count" id="c10" class="count">10문제</label>
                <label><input type="radio" name="count" id="c20" class="count">20문제</label>
                <label><input type="radio" name="count" id="c25" class="count">25문제</label>
            </div><br><br>

            <div style="margin:auto; text-align: center;">
				<input type="button" style="width:100px; height:40px; border:0px; background:#e6e6eb" id="testcn" value="취소">
				<input type="submit" style="width:100px; height:40px; border:0px; background:#606060; color:white;" value="확인">
			</div>
				<!--  안보임  -->
				<input type="text" name="chkkor" id="chkkor" value="" style="display:none;">
				<input type="text" name="chkeng" id="chkeng" value="" style="display:none;">
				<input type="text" name="testCount" id="testCount" value="" style="display:none;">
				<input type="text" name="testcNo" id="testcNo" value="${ cNo }" style="display:none"> 
				<input type="number" name="testcount" id="testcount" value="${ count }" style="display:none">
				<script>
					$(function(){
						$(".count").change(function(){
							
							var value = $(this).prop('id');
							$("#testCount").val(value);
							console.log("input : " + $("#testCount").val());
						});
					});
				</script>
				<input type="submit" id="subtest" style="display:none;">
				
        </div>
    </div>
			</div>
		</div>
	</div>
	</form>
	
	
	<script>
		$(function(){
			$("#testcn").click(function(){
				$("#createTest").click();
			});
		});
	</script>

</body>
</html>