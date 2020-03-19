<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* table css */
.board {
	width: 1200px;
	margin: 0 auto;
	margin-top: 50px;
}

.tbl_type, .tbl_type th, .tbl_type td {
	border: 0;
}

.tbl_type a {
	color: #383838;
	text-decoration: none
}

.tbl_type {
	width: 100%;
	border-bottom: 1px solid #999;
	color: #666;
	font-size: 12px;
	table-layout: fixed
}

.tbl_type caption, .tbl_type .frm label {
	display: none
}

.tbl_type th {
	padding: 5px 0 4px;
	border-top: solid 1px #999;
	border-bottom: solid 1px #b2b2b2;
	background-color: #f1f1f4;
	color: #333;
	font-weight: bold;
	line-height: 18px;
	vertical-align: top
}

.tbl_type td {
	padding: 8px 0 5px;
	border-bottom: solid 1px #d2d2d2;
	text-align: center;
}

.tbl_type .frm input {
	margin: 0
}

.tbl_type .num, .tbl_type .date, .tbl_type .hit, .tbl_type .writer, .tbl_type .type {
	padding: 0;
	font-family: Tahoma;
	font-size: 11px;
	line-height: normal
}

.tbl_type th {
	text-align:center;
}

.tbl_type .num, .tbl_type .writer, .tbl_type .type, .tbl_type .date, .tbl_type .hit {
	text-align:center;
}

.tbl_type .title {
	text-align: left;
}

/* .tbl_type tr.reply .title a {
	padding-left: 12px;
	background: url(img/ic_reply.gif) 0 1px no-repeat
}

.tbl_type tr.reply td a.comment {
	padding: 0;
	background: none;
	color: #f00;
	font-size: 12px;
	font-weight: bold
} */

/* search */
.search {
	margin-top: 20px;
	float: left;
}

.search select {
	font-size: 16px;
}

.searchData {
	height: 25px;
}

.search button {
	margin-top: -6px;
	font-size: 10px;
}


/* paging */
.paging {
	margin-top: 20px;
	text-align: right;
}

.paging button {
	font-size: 12px;
}

.regist {
	margin-top: 10px;
	text-align: right;
}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />

	<div class="board">
		<table cellspacing="0" border="1" summary="게시판의 글제목 리스트"
			class="tbl_type">
			<caption>게시판 리스트</caption>
			<colgroup>
				<col width="80">
				<col>
				<col width="115">
				<col width="115">
				<col width="115">
				<col width="80">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">No</th>
					<th scope="col">제목</th>
					<th scope="col">글쓴이</th>
					<th scope="col">타입</th>
					<th scope="col">날짜</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="i" value="1"/>
				<c:if test="${empty boardList}">
					<tr>
						<td colspan="6">
						<h6>등록된 게시글이 존재하지 않습니다.</h6>
						</td>
					</tr>
				</c:if>
				<c:if test="${!empty boardList}">
					<c:forEach var="item" items="${boardList}">
						<c:url var="selectedBoard" value="detailBoard.bo">
							<c:param name="bId" value="${item.bId}"/>
						</c:url>
						<tr onclick="location.href='${selectedBoard}'">
							<td class="num">
								${i}
								<c:set var="i" value="${i+1}"/>
							</td>
							<td class="title"><a href="#">${item.title}</a></td>
							<td class="writer">${item.referNickname}</td>
							<td class="type"><a href="#">
								<c:choose>
									<c:when test="${item.type eq 1}">
										공지
									</c:when>
									<c:when test="${item.type eq 2}">
										단어장
									</c:when>
									<c:when test="${item.type eq 3}">
										클래스
									</c:when>
									<c:when test="${item.type eq 4}">
										잡담
									</c:when>
								</c:choose>
							</a></td>
							<td class="date">${item.createDate}</td>
							<td class="hit">${item.views}</td>
						</tr>
					</c:forEach>
				</c:if>
			</tbody>
		</table>
		
		<div class="search">
			<form action="searchBoard.bo" method="GET">
				<select name="searchCondition">
					<c:choose>
						<c:when test="${ empty search.searchCondition }">
							<c:set var="selected0" value="selected"/>
						</c:when>
						<c:when test="${ search.searchCondition eq 1 }">
							<c:set var="selected1" value="selected"/>
						</c:when>
						<c:when test="${ search.searchCondition eq 2 }">
							<c:set var="selected2" value="selected"/>
						</c:when>
						<c:when test="${ search.searchCondition eq 3 }">
							<c:set var="selected3" value="selected"/>
						</c:when>
						<c:when test="${ search.searchCondition eq 4 }">
							<c:set var="selected4" value="selected"/>
						</c:when>
					</c:choose>
					<option value="0" ${selected0}>전체</option>
					<option value="1" ${selected1}>제목</option>
					<option value="2" ${selected2}>글쓴이</option>
					<option value="3" ${selected3}>타입</option>
				</select>
				<input type="search" name="searchContent" class="searchData" value="${search.searchContent}">
				<button class="btn btn-light">검색</button>
				<script>
					
				</script>
			</form>
		</div>
		
		<!-- paging -->
		<c:if test="${!empty pi}">
			<div class="paging">
				<!-- 이전(<) -->
				<c:if test="${pi.currentPage <= 1}">
					<button type="button" class="btn btn-light">&lt;</button>	
				</c:if>
				<c:if test="${pi.currentPage > 1 }">
					<c:url var="before" value="boardList.bo">
						<c:param name="page" value="${pi.currentPage - 1}"/>
					</c:url>
					<button type="button" onclick="location.href='${before}'" class="btn btn-light">&lt;</button>	
				</c:if>
				
				<!-- 중간 -->
				<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
					<c:if test="${p eq pi.currentPage}">
						<button type="button" class="btn btn-light">${p}</button>
					</c:if>
					<c:if test="${p ne pi.currentPage }">
						<c:url var="nextPage" value="boardList.bo">
							<c:param name="page" value="${p}"/>
						</c:url>
						<button type="button" onclick="location.href='${nextPage}'" class="btn btn-light">${p}</button>
					</c:if>
				</c:forEach>
				
				<!-- 다음(>) -->
				<c:if test="${pi.currentPage >= pi.endPage}">
					<button type="button" class="btn btn-light">&gt;</button>
				</c:if>
				<c:if test="${pi.currentPage < pi.endPage}">
					<c:url var="next" value="boardList.bo">
						<c:param name="page" value="${pi.currentPage + 1}"/>
					</c:url>
					<button type="button" onclick="location.href='${next}'" class="btn btn-light">&gt;</button>
				</c:if>
			</div>
		</c:if>
		
		<!-- 게시판 등록 버튼 -->
		<c:if test="${!empty sessionScope.loginMember}">
			<div class="regist">
				<button type="button" onclick="location.href='viewBoardInsert.bo'">새 게시글</button>
			</div>
		</c:if>
	</div>
	
	
</body>
</html>