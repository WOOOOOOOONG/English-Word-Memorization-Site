<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* 전체 */
	.whole {
		width: 1200px;
		margin: 0 auto;
		margin-top: 50px;
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
		margin-left: 1020px;
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
		margin-bottom: 20px;
		text-align: right;
	}
	
	 .listBtn {
		margin-top: 5px;
		margin-bottom: 5px;
	}
	
	/*  댓글 */
	.replyContent {
		width: 1200px;
		margin: 0 auto;
	}
	
	.replyContent textarea {
		width: 1200px;
		height: 120px;
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
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>

	<div class="whole">
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
			<!-- 수정, 삭제 버튼 -->
			<c:if test="${ sessionScope.loginMember.mId eq detailBoard.referId }">
				<div class="modify-delete-btn" style="display: inline;">
					<c:url var="update" value="viewBoardUpdate.bo">
						<c:param name="bId" value="${ detailBoard.bId }"/>
					</c:url>
					<c:url var="delete" value="deleteBoard.bo">
						<c:param name="bId" value="${ detailBoard.bId }" />
					</c:url>
					<button type="button" class="button-list" style="font-size: 15px;" onclick="location.href='${update}'">수정</button>
					<button type="button" class="button-list" style="font-size: 15px;" onclick="deleteBoard();">삭제</button>
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
				<div class="title">
					<div class="subtitle">TITLE&nbsp;</div>
					<div class="content">${detailBoard.title}</div>
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
			<div class="boardContent">${detailBoard.content}</div>
	
			<!-- 다음글, 이전글 -->
			<c:forEach var="item" items="${ boardList }" varStatus="status">
				<c:if test="${item.bId eq detailBoard.bId && item.bId ne boardList[fn:length(boardList)-1].bId}">
					<hr class="line3" style="margin-bottom: -1px;">
					<c:url var="prevBoard" value="detailBoard.bo">
						<c:param name="bId" value="${item.bId-1}"/>
					</c:url>
					<a href="${prevBoard}">다음글 : ${boardList[status.index+1].title}</a>
					<hr class="line3" style="margin-top: -1px; margin-bottom: -1px;">
				</c:if>
					
				<c:if test="${item.bId eq detailBoard.bId && item.bId ne boardList[0].bId}">
					<c:url var="nextBoard" value="detailBoard.bo">
						<c:param name="bId" value="${item.bId+1}"/>
					</c:url>
					<a href="${nextBoard}">이전글 : ${boardList[status.index-1].title}</a>
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
					</c:if>
					<c:if test="${ !empty sessionScope.loginMember }">
						<textarea placeholder="깨끗한 댓글 문화를 지켜주세요. &#13;&#10;지나친 비방, 광고 댓글은 예고없이 삭제될 수 있습니다," 
							id="textarea" name="content"></textarea>
						<button class="button-list" id="replyInsert" onclick="replyInsertFunc();">작성</button>
					</c:if>
				</div>
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
					var bId = ${detailBoard.bId};
					var referId = "${detailBoard.referId}";
					var referNickname = "${detailBoard.referNickname}";
					var content = document.getElementById('textarea').value;
					
					$.ajax({
						url: "insertBoardReply.bo",
						data: {bId:bId, referId:referId, 
							referNickname:referNickname, content:content},
						type: "POST",
						success: function(data) {
							if(data == 'success') {
								getReplyList();
								replyInsert.value = "";
							}
						},
						error: function(data) {
							console.log("댓글 삽입 오류!");
						}
					});
				}
				
				function getReplyList() {
					var bId = ${detailBoard.bId};
					
					$.ajax({
						url: "selectBoardReplyList.bo",
						data: {bId:bId},
						dataType: "json",
						success: function(data) {
							$tableBody = $("#replyTable");
							$tableBody.html("");
							
							$(".replyCount").text("댓글 " + data.length + "개");
							
							if(data.length > 0){
								for(var i in data){
									var $tr = $("<tr>");
									var $form = $("<form action='deleteBoardReply.bo' method='POST'>");
									var $tWriter = $("<td width='50'>").html("<div class='tdContent2'>" + data[i].writerNickname + "</div>");
									var $tContent = $("<td width='1130'>").html("<div class='tdContent1'>" + data[i].content + "</div> " + 
											"<div class='tdContent2'>" + data[i].createDate + "</div>");
									<c:set var="memberId" value="${sessionScope.loginMember.mId}"/>
									<c:if test="${memberId eq null}">
										<c:set var="memberId" value="0"/>
									</c:if>
									if(${!empty sessionScope.loginMember}) { 
											if(data[i].writerId == "${memberId}" || "${memberId eq 'admin'}") {
												var $deleteBtn = $("<td width='10'>").html("<div class='tdContent2'><button class='button" + i + "' onclick='deleteReply(" + data[i].rId + ", " + '"' + data[i].writerId + '"' + ");'>X</button></div>");
											}
									}
									var $hr = document.createElement("hr");			
									var rId = $();
									
									$hr.className = "line4";
									
									$tr.append($tContent);
									$tr.append($tWriter);
									if(data[i].writerId == "${memberId}" || "${memberId eq 'admin'}") {
										$tr.append($deleteBtn);
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
					console.log(referId);
					
					if("${memberId}" == referId || "${memberId eq 'admin'}") {
						location.href="deleteBoardReply.bo?rId="+i+"&bId="+bId;	
					}else {
						
					}
					
				}
			</script>
		</div>
	</div>
</body>
</html>