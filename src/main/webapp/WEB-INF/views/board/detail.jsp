<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEW</title>
 <script src="https://kit.fontawesome.com/89f82078c1.js" crossorigin="anonymous"></script>
 <link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/shotcuticon.png"
	type="image/x-icon">
<style>
   /* 전체 */
   .whole {
      width: 1200px;
      margin: 0 auto;
      margin-top: 50px;
      min-height:650px;
      margin-bottom: 60px;
   }
   
   .board-detail {
      width: 1200px;
      margin: 0 auto;
      margin-top: 50px;
   }
   
   .line1 {
      border: solid 0.6px #848484;      
   }
   
   .line2 {
      border: solid 0.9px #848484;
      border-style: dotted;
   }
   
   .line4 {
   }
   
   .subtitle {
      font-weight: 600;
      font-size: 15px;
      display: inline;
   }
   
   .content {
      font-size: 14px;
      display: inline;
   }
   
   .button-list {
      font-size: 12px;
   }
   
   /* 수정/삭제 버튼 */
   .modify-delete-btn {
      margin-left: 990px;
   }
   
   /* 제목, 날짜  */
   .title {
      float: left;
      text-align: left;
   }
   
   .date {
      text-align: right;
   }
   
   /* 작성자, 조회수 */
   .writer-views {
      margin-top: -15px;
      margin-bottom: 10px;
      text-align: right;
   }
   
   .writer {
      display: inline;
   }
   
   .views {   
      display: inline;
   }
   
   /* 글 내용 */
   .boardContent {
      padding-left: 10px;
      padding-right: 10px;
      margin-bottom: 50px;
   }
   
   /* 목록으로 버튼 */
   .goList {
      width: 1200px;
      margin: 0 auto;
      text-align: right;
   }
   
    .listBtn {
      margin-top: 5px;
      margin-bottom: 5px;
      height:30px;
   }
   
   /*  댓글 */
   .replyContent {
      width: 1200px;
      margin: 0 auto;
   }
   
   .replyContent textarea {
    width: 1100px;
    height: 70px;
    float: left;
    resize:none;
   }
   
   .textarea {
      text-align: right;
   }
   
   .tdContent1 {
      font-size: 20px;
      display: inline;
   }
   
   .tdContent2 {
      display: inline;
      font-size: 12px;
      color: #848484;
   }
   .tdContent2 > button{
   		background-image: url( "resources/images/취소2.png" );
  	    background-repeat: no-repeat;
  	    background-size: cover ;
  	    border:none;
  	    width:20px; height:20px;
   }
   
   .imotion {
    background: #f3f3f3;
    float: right;
   }
   
   .imotion div {
    position: relative;
    display: inline-block;
    
    margin-right: 10px;
}
   
   .arrow_box {
  display: none;
  position: absolute;
  width: 100px;
  padding: 8px;
  left: 0;
  -webkit-border-radius: 8px;
  -moz-border-radius: 8px;  
  border-radius: 8px;
  background: #333;
  color: #fff;
  font-size: 14px;
  text-align:center;
  margin-left: -35px;
  margin-top: 6px;
}

.arrow_box:after {
  position: absolute;
  bottom: 100%;
  left: 50%;
  width: 0;
  height: 0;
  margin-left: -10px;
  border: solid transparent;
  border-color: rgba(51, 51, 51, 0);
  border-bottom-color: #333;
  border-width: 10px;
  pointer-events: none;
  content: " ";
}

.imo {
	display: block;
	cursor: pointer;
}

.imo:hover + p.arrow_box {
  display: block;
}
.line4{
	width: 118%;
}
.userreplyimg{
	height:30px;
	max-width:30px;
	border-radius:50%;
}
#replyInsert{
	width: 100px;
    height: 70px;
    float: left;
}

#replyTable {
	width: 1190px;
}
</style>
</head>
<body>
   <jsp:include page="../common/menubar.jsp"/>

   <div class="whole">
   	<p style="text-align: left; font-size: 30px; margin-bottom: -30px;">게시판</p>
      <div class="board-detail">
         <hr class="line1">
         <h4 style="display: inline;">|
            <c:choose>
               <c:when test="${detailBoard.type eq 1}">
                  공지
               </c:when>
               <c:when test="${detailBoard.type eq 2}">
                  클래스
               </c:when>
               <c:when test="${detailBoard.type eq 3}">
                  단어장
               </c:when>
               <c:when test="${detailBoard.type eq 4}">
                  잡담
               </c:when>         
            </c:choose>
         </h4>
     	
	     <c:if test="${ !empty sessionScope.loginMember && !(sessionScope.loginMember.mId eq detailBoard.referId  || sessionScope.loginMember.mId eq 'admin')}">
	     	 <div class="imotion">
		     	 <div>
			         <i class="far fa-angry imo" style="font-size: 30px;" onclick="report('${detailBoard.bId}');"></i>
			         <p class="arrow_box">신고하기</p>
			         <script>
			         	function report(bId) {
			         		if(window.confirm("해당 게시글을 신고하시겠습니까?")) {
			         			location.href="insertInquireView.ad?reportedId="+bId+"&reportType="+4;
			         			
			         		}
			         	}
			         </script>
			     </div>    
	     	</div>
	     </c:if>
         <!-- 수정, 삭제 버튼 -->
         <c:if test="${ sessionScope.loginMember.mId eq detailBoard.referId  || sessionScope.loginMember.mId eq 'admin'}">
            <div class="modify-delete-btn" style="display: inline;">
               <c:url var="update" value="viewBoardUpdate.bo">
                  <c:param name="bId" value="${ detailBoard.bId }"/>
               </c:url>
               <c:url var="delete" value="deleteBoard.bo">
                  <c:param name="bId" value="${ detailBoard.bId }" />
               </c:url>
               
               <div class="imotion">
	               <div>
	               		<i class="fas fa-exchange-alt imo" style="font-size: 30px;" onclick="location.href='${update}'"></i>
	               		<p class="arrow_box">수정하기</p>
	               </div>
	               <div>
	               		<i class="fas fa-trash-alt imo" style="font-size: 30px;" onclick="deleteBoard();"></i>
	               		<p class="arrow_box">삭제하기</p>
	               </div>
               </div>
            </div>
            <script>
               function deleteBoard() {
                  if(window.confirm("정말 삭제하시겠습니까?")) {
                     location.href = "${delete}";
                  }
               }
            </script>
         </c:if>
         
         <hr class="line1">
         
         <div class="title-date">
            <div class="title" style="margin-top: -10px;">
               <div class="subtitle" style="font-size: 30px;">TITLE&nbsp;</div>
               <div class="content" style="font-size: 27px;">${detailBoard.title}</div>
            </div>
            <div class="date">
               <div class="subtitle">DATE&nbsp;</div>
               <div class="content">${detailBoard.createDate}</div>
            </div>
            <hr class="line2">
         </div>
         
         <div class="writer-views">
            <div class="writer">
               <div class="subtitle">작성자</div>
               <div class="content">${detailBoard.referNickname}</div>
            </div>
            <div class="views">
               <div class="subtitle">, 조회수</div>
               <div class="content">${detailBoard.views}</div>
            </div>
         </div>
         <%-- <div class="boardContent"><textarea id="inputText" onload="resize(this)" onkeydown="resize(this)" onkeyup="resize(this)" style="width: 1180px; border: none; resize:none; overflow:hidden; background:whitesmoke; border:none; outline:none;" readonly>${detailBoard.content}</textarea></div> --%>
         <div id="inputText">${detailBoard.content }</div><br><br>
         <!-- 다음글, 이전글 -->
         <c:forEach var="item" items="${ boardList }" varStatus="status">
         	<c:if test="${item.bId eq detailBoard.bId && item.bId ne boardList[0].bId}">
         		<hr class="line3" style="margin-bottom: -1px;">
               <c:url var="nextBoard" value="detailBoard.bo">
                  <c:param name="bId" value="${boardList[status.index-1].bId}"/>
               </c:url>
               <a style="" href="${nextBoard}">다음글 : ${boardList[status.index-1].title}</a>
               <hr class="line3" style="margin-top: -1px; margin-bottom: -1px;">
            </c:if>
            <c:if test="${item.bId eq detailBoard.bId && item.bId ne boardList[fn:length(boardList)-1].bId}">
               <c:url var="prevBoard" value="detailBoard.bo">
                  <c:param name="bId" value="${boardList[status.index+1].bId}"/>
               </c:url>
               <a href="${prevBoard}">이전글 : ${boardList[status.index+1].title}</a>
               <hr class="line3" style="margin-top: -1px;">
            </c:if>
         </c:forEach>
      </div>
      
      <!-- 목록으로 -->
      <div class="goList">
         <button class="button-list listBtn" onclick="location.href='boardList.bo'">목록으로</button>
      </div>
      
      <div class="replyContent">
         <!-- 댓글 -->
         <div class="replyCount"></div>
         <hr class="line3">
         
         <!-- 댓글 작성 -->
         <div>
            <div class="textarea">
               <c:if test="${ empty sessionScope.loginMember }">
                  <textarea placeholder="로그인 후에 이용 가능합니다" readonly></textarea>
                  <button class="button-list" id="replyInsert" disabled>작성</button>
               </c:if>
               <c:if test="${ !empty sessionScope.loginMember }">
                  <textarea placeholder="깨끗한 댓글 문화를 지켜주세요. &#13;&#10;지나친 비방, 광고 댓글은 예고없이 삭제될 수 있습니다," 
                     id="textarea" name="content"></textarea>
                  <button class="button-list" id="replyInsert" onclick="replyInsertFunc();">작성</button>
               </c:if>
            </div>
            <div style="width:1100px; height:20px;float:left;"></div>
         </div>
         
         <!-- 댓글 리스트 -->
         <table id="replyTable">
         </table>
         
         <script type="text/javascript">
            window.onload = function() {
               getReplyList();
               
               setInterval(getReplyList(), 5000);
            }
            
            function replyInsertFunc() {
            	var replyInsert = $('#textarea');
            	if(replyInsert.val() != "") {
	               var bId = ${detailBoard.bId};
	               var referId = "${sessionScope.loginMember.mId}";
	               var referNickname = "${sessionScope.loginMember.nickname}";
	               var content = document.getElementById('textarea').value;
	               
	               $.ajax({
	                  url: "insertBoardReply.bo",
	                  data: {bId:bId, referId:referId, 
	                     referNickname:referNickname, content:content},
	                  type: "POST",
	                  success: function(data) {
	                     if(data == 'success') {
	                        getReplyList();
	                        replyInsert.val("");
	                     }
	                  },
	                  error: function(data) {
	                     console.log("댓글 삽입 오류!");
	                  }
	               });
            	}else {
            		alert("댓글 내용을 입력하세요");
            	}
            }
            
            function reportReply(rId, bDone) {
            	var mId = "${sessionScope.loginMember.mId}";
            	if(bDone) {
            		alert("이미 신고한 댓글은 더 이상 신고하실 수 없습니다.");
            	}else {
	            	if(confirm("해당 댓글을 신고하시겠습니까?")) {
	            		alert("댓글은 5회 신고 시 자동으로 삭제됩니다.");
	            		$.ajax({
	            			url: "reportReply.bo",
	            			data: {rId:rId, mId:mId},
	            			dataType: "json",
	            			success: function() {
	            				getReplyList(rId);
	            			},
	            			error: function() {
	            				getReplyList(rId);
	            			}
	            		});
	            	}
            	}
            }
            
            function getReplyList(rId) {
               var bId = ${detailBoard.bId};
               $.ajax({
                  url: "selectBoardReplyList.bo",
                  data: {bId:bId, rId:rId},
                  dataType: "json",
                  success: function(data) {
                     $tableBody = $("#replyTable");
                     $tableBody.html("");
                     
                     $(".replyCount").text("댓글 " + data.length + "개");
                     
                     if(data.length > 0){
                        for(var i in data){
                        	if(data[i].reportCount >= 5) {
                        		deleteReply(data[i].rId, data[i].writerId);
                        		getReplyList();
                        	}
                           var $tr = $("<tr>");
                           var $form = $("<form action='deleteBoardReply.bo' method='POST'>");
                           var $tWriter = $("<td width='110'>").html("<div class='tdContent2'>" + data[i].writerNickname + "</div>");
                           var $tContent = $("<td width='1040'>").html("<div class='tdContent1'>" + data[i].content + "</div> " + 
                                 "<div class='tdContent2'>" + data[i].createDate + "</div>");
                           var memberId = "${sessionScope.loginMember.mId}";
                           var $memberimg = $("<td width='30'>");
                           var $img = $("<img class='userreplyimg' src='${contextPath}/resources/profileimg/"+data[i].profileimg+"' >");
                           $memberimg.append($img);
                           if(${!empty sessionScope.loginMember} && (data[i].writerId == memberId || memberId == 'admin')) {                        	   
                              var $deleteBtn = $("<td width='10'>").html("<div class='tdContent2'><button class='button" + i + "' onclick='deleteReply(" + data[i].rId + ", " + '"' + data[i].writerId + '"' + ");'></button></div>");                              
                           }else if(${!empty sessionScope.loginMember}){
                        	   if(data[i].reportedId != undefined && data[i].reportedId.includes('${sessionScope.loginMember.mId}')) {
                        		   var reportBtn = $('<td width="10"><div class="imotion"><div><i class="far fa-angry imo replyReport" style="font-size: 25px;" onclick="reportReply(' + data[i].rId + ', true);"></i><p class="arrow_box" style="margin-left:-36px;">신고하기</p></div></div></td>');                        		   
                        	   }else {
                        	  		var reportBtn = $('<td width="10"><div class="imotion"><div><i class="far fa-angry imo replyReport" style="font-size: 25px;" onclick="reportReply(' + data[i].rId + ', false);"></i><p class="arrow_box" style="margin-left:-36px;">신고하기</p></div></div></td>');
                        	   }
                           }
                           var $hr = document.createElement("hr");         
                           var rId = $();
                           
                           $hr.className = "line4";
                           
                           $tr.append($tContent);
                           // 이미지 추가하기.
                           $tr.append($memberimg);
                           $tr.append($tWriter);
                           if(data[i].writerId == memberId || memberId == 'admin') {
                              $tr.append($deleteBtn);
                           }else {

                               $tr.append(reportBtn);
                           }
                           $tr.append(rId);
   
                           $tableBody.append($tr);
                           $tableBody.append($hr);
                        }
                     }else{
                        // 댓글이 등록되지 않았을 때
                        var $tr = $("<tr>");
                        var $rContent = $("<td colspan='3'>").text("등록 된 댓글이 없습니다.");
                        $tr.append($tContent);
                        $tableBody.append($tr);
                     }
                  },
                  error: function() {
                     console.log("실패!");
                  }
               });
            }
            
            function deleteReply(i, referId) {
               var bId = ${detailBoard.bId};
               
               location.href="deleteBoardReply.bo?rId="+i+"&bId="+bId;
            }
         </script>
      </div>
   </div>
   <jsp:include page="../common/footer.jsp"/>
</body>
</html>