<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEW</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
   href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.css"
   rel="stylesheet">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="base.css">
<!-- User styling -->
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="shortcut icon"
   href="//okky.kr/assets/favicon-4ddd8035b72404da5a8c298cbaacad86.ico"
   type="image/x-icon">
<link rel="apple-touch-icon"
   href="//okky.kr/assets/icon_57x57-5611bd33d9f2b2d84c22219e248455b6.png">
<link rel="apple-touch-icon" sizes="114x114"
   href="//okky.kr/assets/icon_114x114-b2b627dfde8a040fe54fd257244ba191.png">
<link
   href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
   rel="stylesheet">
<meta property="og:image"
   content="//okky.kr/assets/okky_logo_fb-cea175ff727ef14a4d8be0e68cff730a.png">

<link rel="stylesheet"
   href="//okky.kr/assets/application-02720a4edf0f6edff35025d326624ba0.css" />

<link rel="stylesheet" type="text/css"
   href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8"
   src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
<link rel="shortcut icon"
   href="${pageContext.request.contextPath}/resources/images/shotcuticon.png"
   type="image/x-icon">
<style>
body {
   background: whitesmoke;
}

.section {
   width: 900px;
   /* height: 300px; */
   margin-top: 50px;
   margin-left: auto;
   margin-right: auto;
   background: white;
   border-radius: 10px;
   box-shadow: 0 3px 10px #000;
}

.title {
   margin-top: 50px;
   padding-left: 30px;
}

.subtitle {
   padding-left: 30px;
   font-size: 14px;
   color: gray;
   float: left;
}

.avatar {
   width: 280px;
   padding: 2em 0.5em;
   text-align: center;
   margin-top: -30px;
   margin-left: 270px;
}

.avatar img {
   width: 110px;
   height: 110px;
   border-radius: 50%;
   overflow: hidden;
   border: 4px solid #ffea92;
   box-shadow: 0 0 0 4px rgba(255, 255, 255, 0.2);
   float: left;
}

.avatar h2 {
   font-weight: normal;
   margin-bottom: 0;
}

.main-header {
   font-size: 15px;
}

.main-block-left {
   display: block;
   margin-left: 30px;
}

#t2 {
   width: 800px;
   margin: 0 auto;
   padding-bottom: 50px;
}

.textarea {
   width: 770px;
   height: 200px;
   border-radius: 3px;
}

textarea {
   color: black;
}

.fa-star {
   color: blue;
}
</style>
</head>
<body>
   <section>
      <div class="section sec1" id="sec1">
         <div class="avatar" style="width: 350px;">
            <img id="myphoto"
               src="${ pageContext.request.contextPath }/resources/profileimg/${detailMember.profileimg}" />
            <h2>${detailMember.mId}</h2>
            <p>${detailMember.nickname}:${detailMember.introduce}</p>
         </div>
         <div style="margin-top: 20px; border: 1px solid black;"></div>

         <c:set var="i" value="1" />
         <div class="col-sm-10 main-block-left" style='margin-top: 30px;'>
            <div class="main-block">
               <h4 class="main-header" style="">
                  <i class="fa fa-star"></i> 가입된 클래스
               </h4>
               <div class="panel panel-default" style="width: 420px;">
                  <ul class="list-group">
                     <c:if test="${ empty cList}">
                        <li
                           class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">가입한
                           클래스가 없습니다</li>
                     </c:if>
                     <c:forEach var="item" items="${cList}">
                        <c:if test="${item.cateId ne 1 && i <= 5}">
                           <c:set var="i" value="${i+1}" />
                           <li
                              class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix"
                              style="height: 50px;">
                              <div class="list-title-wrapper">
                                 <h5 class="list-group-item-heading list-group-item-evaluate">
                                    <a href="classdetail.do?cNo=${item.cNo}">${item.title}</a>
                                    <div class="list-group-item-author pull-right clearfix">
                                       <div class='avatar avatar-x-small clearfix '>
                                          <a href='/user/info/45597' class='avatar-photo'><img
                                             src='//www.gravatar.com/avatar/b66da5ef6099211f5db8f5f7a3b4c36b?d=identicon&s=10' /></a>
                                          <div class="avatar-info">
                                             <a class="nickname" href="/user/info/45597" title="OKKY">${item.ornerId}</a>
                                             <div class="activity">
                                                <span class="fa fa-flash"></span> ${item.classCount}
                                             </div>
                                             <div class="date-created">
                                                <span class="timeago" title="2020-02-26 15:06:11.0">${item.classCreateDate}</span>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </h5>
                              </div>
                           </li>
                        </c:if>
                     </c:forEach>
                  </ul>
               </div>
            </div>
         </div>
         <br>
         <br>
         <br>
         <c:forEach var="item" begin="1" end="${i}">
            <br>
            <br>
         </c:forEach>
         <h4 class="main-header title">
            <i class="fa fa-star"></i> 신고 내역
         </h4>
         <p class="subtitle">해당 회원에게 신고 접수된 내용입니다.</p>
         <div class="table" id="t2">
            <table id="table2" class="display table_id">
               <thead>
                  <tr>
                     <th>NO</th>
                     <th>신고자</th>
                     <th>이름</th>
                     <th>유형</th>
                     <th>문의 제목</th>
                     <th>등록일</th>
                     <th>답변여부</th>
                     <th>신고된 ID</th>
                  </tr>
               </thead>
               <tbody>
                  <c:set var="i" value="0" />
                  <c:forEach var="item" items="${ iList }">
                     <c:set var="i" value="${i+1}" />
                     <tr class="view">
                        <td>${i}</td>
                        <td>${item.inquirerId}</td>
                        <td>${item.name}</td>
                        <td><c:if test="${item.type eq 0}">
                                 시스템
                              </c:if> <c:if test="${item.type eq 1}">
                                 사용자
                              </c:if> <c:if test="${item.type eq 2}">
                                 단어장
                              </c:if> <c:if test="${item.type eq 3}">
                                 클래스
                              </c:if> <c:if test="${item.type eq 4}">
                                 게시판
                              </c:if> <c:if test="${item.type eq 5}">
                                 기타
                              </c:if></td>
                        <td>${item.title}</td>
                        <td>${item.registDate}</td>
                        <td>${item.isAnswer}</td>
                        <td>${item.reportedId}</td>
                     </tr>
                     <tr class="inquire">
                        <td colspan="8"><textarea
                              style="width: 100%; height: 200px" readonly>${item.content }</textarea></td>
                        <td style="display: none;"></td>
                        <td style="display: none;"></td>
                        <td style="display: none;"></td>
                        <td style="display: none;"></td>
                        <td style="display: none;"></td>
                        <td style="display: none;"></td>
                        <td style="display: none;"></td>
                     </tr>
                     <!-- 답변이 이미 작성되었으면 보여주기만 하고, 버튼을 '작성' 대신 '삭제'로 바꾼다. -->
                     <c:if test="${item.isAnswer eq 'Y'}">
                        <tr class="answer">
                           <td colspan="8"><textarea
                                 style="width: 100%; height: 200px" readonly>${item.answer }</textarea></td>
                           <td style="display: none;"></td>
                           <td style="display: none;"></td>
                           <td style="display: none;"></td>
                           <td style="display: none;"></td>
                           <td style="display: none;"></td>
                           <td style="display: none;"></td>
                           <td style="display: none;"></td>
                        </tr>
                        <tr class="answer-button" style="background: none">
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <c:url var="responseDelete" value="responseDeleteAdmin.ad">
                              <c:param name="iId" value="${item.iId}" />
                              <c:param name="mId" value="${detailMember.mId}" />
                           </c:url>
                           <td><button type="button" onclick="responseDelete();">답변
                                 삭제</button></td>
                        </tr>
                     </c:if>
                     <c:if test="${item.isAnswer eq 'N' }">
                        <tr class="answer">
                           <td colspan="8"><textarea class="textarea"
                                 id="textarea${item.iId}"></textarea></td>
                           <td style="display: none;"></td>
                           <td style="display: none;"></td>
                           <td style="display: none;"></td>
                           <td style="display: none;"></td>
                           <td style="display: none;"></td>
                           <td style="display: none;"></td>
                           <td style="display: none;"></td>
                        </tr>
                        <tr class="answer-button" style="background: none">
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td></td>
                           <td>
                              <form action="responseAdmin.ad" method="post">
                                 <textarea name="text" class="resText" id="resText${item.iId}"
                                    style="display: none;"></textarea>
                                 <input type="text" name="iId" value="${item.iId}"
                                    id="iId${item.iId}" style="display: none;"> <input
                                    type="text" name="mId" value="${detailMember.mId}"
                                    style="display: none;">
                                 <script>
                                    var textarea = $('#textarea${item.iId}');
                                    textarea
                                          .change(function() {
                                             var resText = $('#resText${item.iId}');
                                             resText
                                                   .val(this.value);
                                          });
                                 </script>
                                 <button>답변 등록</button>
                              </form>
                           </td>
                        </tr>
                     </c:if>
                  </c:forEach>
               </tbody>
            </table>

            <script>
               $(document).ready(
                     function() {
                        // DataTable 정의
                        $('#table2').DataTable({
                           "ordering" : false,
                           "pageLength" : 40,
                           "language" : {
                              "emptyTable" : "등록된 문의가 없습니다."
                           },
                           "bLengthChange" : false,
                           "bFilter" : true,
                           "bInfo" : false,
                           "bAutoWidth" : false,
                           "searching" : false
                        });

                        // 문의/답변란 토글 기능
                        $(".inquire").hide();
                        $(".answer").hide();
                        $(".answer-button").hide();

                        //content 클래스를 가진 div를 표시/숨김(토글)
                        $(".view").click(
                              function() {
                                 $(this).next(".inquire")
                                       .slideToggle();
                                 $(this).next(".inquire").next(
                                       ".answer").slideToggle();
                                 $(this).next(".inquire").next(
                                       ".answer").next(
                                       ".answer-button")
                                       .slideToggle();
                              });
                     });

               function responseDelete() {
                  if (window.confirm('답변을 삭제하시겠습니까?')) {
                     location.href = '${responseDelete}';
                  }
               }
            </script>
            <br>
            <!-- <form action="chat.do" method="post"> -->
            <div>
               <h4 class="main-header" style="margin-left: -30px;">
                  <i class="fa fa-star"></i> 경고 메시지
               </h4>
               <p class="subtitle" style="margin-left: -30px;">해당 회원에게 제제 내역에
                  관해 메시지를 보냅니다.</p>
               <br> <br> <input type="text" name="mId" id="mId"
                  value="admin" style="display: none;" /> <input type="text"
                  name="fId" id="fId" value="${detailMember.mId}"
                  style="display: none;" />
               <textarea class="textarea" id="content" name="content"></textarea>
               <div style="width: 770px; text-align: right;">
                  <button type="button" onclick="warning();">보내기</button>
               </div>
            </div>
            <!-- </form> -->
            <br>
            <div>
               <h4 class="main-header" style="margin-left: -30px;">
                  <i class="fa fa-star"></i> 경고 메시지 목록
               </h4>
               <p class="subtitle" style="margin-left: -30px;">해당 회원에게 보낸
                  메시지입니다.</p>
               <br> <br>
               <div id="chatting"
                  style="border: 1px solid black; padding-top: 15px; padding-left: 5px; width: 770px; border-radius: 5px;">
               </div>
               <br> <br>
            </div>
         </div>

         <!-- 작성 게시 -->
         <h4 class="main-header" style="margin-left: 20px;">
            <i class="fa fa-star"></i> 작성한 게시글
         </h4>
         <div class="panel panel-default"
            style="width: 420px; margin-left: 30px;">
            <ul class="list-group">
               <c:if test="${ empty memberBoards}">
                  <li
                     class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix">작성한
                     게시글이 없습니다</li>
               </c:if>
               <c:forEach var="item" items="${memberBoards}">
                  <li
                     class="list-group-item list-group-item-small list-group-item-question list-group-has-note clearfix"
                     style="height: 50px;">
                     <div class="list-title-wrapper">
                        <h5 class="list-group-item-heading list-group-item-evaluate">
                           <a style="cursor:pointer;" onclick="goBoard('${item.bId}')">${item.title}</a>
                           <div class="list-group-item-author pull-right clearfix">
                              <div class='avatar avatar-x-small clearfix '>
                                 <a href='/user/info/45597' class='avatar-photo'><img
                                    src='//www.gravatar.com/avatar/b66da5ef6099211f5db8f5f7a3b4c36b?d=identicon&s=10' /></a>
                                 <div class="avatar-info">
                                    <a class="nickname" href="#" title="OKKY">${item.referId}</a>
                                    <div class="date-created">
                                       <span class="timeago" title="2020-02-26 15:06:11.0">${item.createDate}</span>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </h5>
                     </div>
                  </li>
               </c:forEach>
            </ul>
         </div>

         <div style="margin-left: 30px;">
            <h4 class="main-header" style="margin-left: -10px;">
               <i class="fa fa-star"></i> 댓글 작성 목록
            </h4>
            <div class="chatting"
               style="border: 1px solid black; padding-top: 15px; padding-left: 5px; width: 770px; border-radius: 5px;">
               <c:if test="${empty memberReplys }">
                  <p>작성한 댓글 목록이 없습니다</p>
               </c:if>
               <c:if test="${!empty memberReplys}">
                  <c:forEach var="item" items="${memberReplys}">
                     <h5 class="list-group-item-heading list-group-item-evaluate">
                           <a>${item.content}</a>
                           <div class="list-group-item-author pull-right clearfix" style="margin-top:-5px;">
                                 <div class="avatar-info">
                                    <a class="nickname" onclick="goBoard('${item.bId}')" title="OKKY" style="cursor:pointer;">${item.bTitle}(${item.bId})</a>
                                    <div class="date-created">
                                       <span class="timeago" title="2020-02-26 15:06:11.0">${item.createDate}</span>
                                    </div>
                                 </div>
                           </div>
                     </h5>
                     <hr>
                  </c:forEach>
               </c:if>
            </div>
            <br> <br>
         </div>

         <div>
            <h4 class="main-header" style="margin-left: 30px;">
               <i class="fa fa-star"></i> 채팅 목록
            </h4>
            <p class="subtitle" style="margin-left: 10px;">클래스/개인 채팅 목록입니다</p>
            <br> <br> <input type="text" name="mId" id="submitId"
               value="${ detailMember.mId }" style="display: none;" />
            <div class="textarea" id="chatContent2" name="content" style="margin-left: 30px; border: 1px solid black; overflow:scroll; border-radius:5px;" ></div>
         </div>
      </div>
      <script>
         function warning() {
            var mId = $('#mId').val();
            var fId = $('#fId').val();
            var content = $('#content').val();
            $.ajax({
               url : "adminChat.do",
               data : {
                  mId : mId,
                  fId : fId,
                  content : content
               },
               type : "post",
               success : function(data) {
                  if (data == "success") {
                     alert("전송완료");
                     viewAjax();
                  } else {
                     alert("전송 실패!");
                  }

               },
               error : function(e) {
                  console.log("bye");
                  alert("error code : " + e.status + "\n" + "message : "
                        + e.responseText);
               }

            });         
         }
         
         function goBoard(bId) {
            window.open('detailBoard.bo?bId='+bId);
         }
         
         $(function() {
            viewAjax();
            
            var mId = '${detailMember.mId}';
                $.ajax({
                       url:"admingetchat.do",
                       data:{mId:mId},
                       dataType:"json",
                       type:"post",
                       success:function(data){  
                          var $chatcontent = $('#chatContent2');
                		  $chatcontent.append("<br>");
                        	  for(var i in data) {
                            	  for(var j in data[i]) {
                            		  for(var k in data[i][j]) {
                            			  for(var c in data[i][j][k]){
                                    		  $p = $("<p>").html(data[i][j][k][c] + " " + c);
                                    		  $hr = $("<hr>");
                                    		  console.log($p.html());
                                    		  $chatcontent.append($p);
                                    		  $chatcontent.append($hr);
                                    	  }
                            		  }
                            	  }
                               }
                          
                     },error:function(e){
                        var $chatcontent = $("#chatContent2");
                        $chatcontent.html("<p>대화 내용이 없습니다.</p>");
                     }
                     
                  });   
            
         });
         
         function viewAjax() {
            var fId = $("#fId").val();
            var mId = $("#mId").val();
            $.ajax({
                     url : "chatlog.ck",
                     data : {
                        mId : mId,
                        fId : fId,
                        chatleng : 1
                     },
                     dataType : "json",
                     type : "post",
                     success : function(data) {
                        var chatting = $('#chatting');
                        var msgContent = $("#content");
                        msgContent.val("");
                        chatting.html("");
                        if (data.msg != "none"
                              && data.msg != "nothing") {
                           for ( var i in data.clist) {
                              var $pTag = $("<p>" + data.clist[i].content + "</p><hr>");;
                              chatting.append($pTag);
                           }
                        } else if (data.msg == "nothing") {
                           var chatting = $("#chatting");
                           chatting.append("<p>사용자에게 보낸 경고 메시지가 없습니다.</p>")
                        }

                     },
                     error : function(e) {
                        alert("error code : " + e.status + "\n"
                              + "message : " + e.responseText);
                     }
                  });
         }
      </script>
   </section>
</body>
</html>