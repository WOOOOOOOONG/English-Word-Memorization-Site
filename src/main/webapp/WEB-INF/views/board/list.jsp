<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SEW</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/shotcuticon.png"
	type="image/x-icon">
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
	font-size: 15px;
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
}

.tbl_type td {
	padding: 8px 0 5px;
	border-bottom: solid 1px #d2d2d2;
	text-align: center;
}

.tbl_type .frm input {
	margin: 0
}

.tbl_type .num, .tbl_type .date, .tbl_type .hit, .tbl_type .writer,
	.tbl_type .type, .tbl_type .title>a {
	padding: 0;
	font-family: Tahoma;
	font-size: 12px;
	line-height: normal
}

.tbl_type .title>a {
	font-size: 14px;
}

.tbl_type th {
	text-align: center;
}

.tbl_type .num, .tbl_type .writer, .tbl_type .type, .tbl_type .date,
	.tbl_type .hit {
	text-align: center;
}

.tbl_type .title {
	text-align: left;
	padding: 6px 0 5px;
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
	display: block;
	width: 175px;
	height: 30px;
	padding-left: 5px;
	font-size: 15px;
	font-weight: 400;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
	float: left;
	margin-right: 5px;
}

.search button {
	font-size: 15px;
	height: 30px;
	padding: 0 10px 0 10px;
	border: 1px solid #ced4da;
	border-radius: .25rem;
}

/* paging */
.paging {
	margin-top: 20px;
	width: 40%;
	margin-left: 6%;
	float: left;
}

.paging button {
	font-size: 12px;
}

.regist {
	margin-top: 20px;
	float: right;
}

tr {
	height: 40px;
}

tbody>tr:hover {
	background: rgb(191, 191, 191);
}

#registbtn {
	background-image: url( "resources/images/writeicon.png" );
	background-repeat: no-repeat;
	background-size: cover;
	width: 30px;
	height: 30px;
	border: 1px solid #ced4da;
	border-radius: .25rem;
}

.paging>button {
	float: left;
}

#searchCon1 {
	float: left;
	height: 30px;
	font-size: 15px;
	width: 80px;
	padding: 0 0 0 10px;
	margin-right: 5px;
}

#searchCon2 {
	float: left;
	height: 30px;
	font-size: 15px;
	width: 175px;
	padding: 0 0 0 10px;
	margin-right: 5px;
	display: none;
}

#searchCon3 {
	float: left;
	height: 30px;
	font-size: 15px;
	width: 175px;
	padding: 0 0 0 10px;
	margin-right: 5px;
	display: none;
}

.noticeb {
	background: red;
	padding: 5px 10px;
	color: white;
}

td {
	cursor: pointer;
}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<div class="boardwrapper" style="height: 650px;">		
		<div class="board">
			<p style="text-align: left; font-size: 30px;">게시판</p>
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
					<c:if test="${ !empty pi }">
						<c:set var="i" value="${ ((pi.currentPage - 1) * 10) + 1 }"/>
					</c:if>
					<c:if test="${ empty pi }">
						<c:set var="i" value="1"/>
					</c:if>
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
								<c:param name="bId" value="${item.bId}" />
							</c:url>
							<tr onclick="location.href='${selectedBoard}'">
								<td class="num">${i} <c:set var="i" value="${i+1}" />
								</td>
								<td class="title"><a href="#">${item.title}(${rLength[item.bId]})</a></td>
								<td class="writer">${item.referNickname}</td>
								<td class="type"><a href="#"> <c:choose>
											<c:when test="${item.type eq 1}">
												<b class="noticeb">공지</b>
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
					<select id="searchCon1" name="searchCondition"
						class="searchCondition custom-select">
						<c:choose>
							<c:when test="${ empty search.searchCondition }">
								<c:set var="selected0" value="selected" />
							</c:when>
							<c:when test="${ search.searchCondition eq 1 }">
								<c:set var="selected1" value="selected" />
							</c:when>
							<c:when test="${ search.searchCondition eq 2 }">
								<c:set var="selected2" value="selected" />
							</c:when>
							<c:when test="${ search.searchCondition eq 3 }">
								<c:set var="selected3" value="selected" />
							</c:when>
							<c:when test="${ search.searchCondition eq 4 }">
								<c:set var="selected4" value="selected" />
							</c:when>
						</c:choose>
						<option value="0" ${selected0}>전체</option>
						<option value="1" ${selected1}>제목</option>
						<option value="2" ${selected2}>글쓴이</option>
						<option value="3" ${selected3}>타입</option>
					</select>
					<c:if test="${search.searchCondition eq 3}">
						<c:if test="${ search.searchContent eq '공지'}">
							<c:set var="getContent1" value="selected" />
						</c:if>
						<c:if test="${ search.searchContent eq '단어장'}">
							<c:set var="getContent2" value="selected" />
						</c:if>
						<c:if test="${ search.searchContent eq '클래스'}">
							<c:set var="getContent3" value="selected" />
						</c:if>
						<c:if test="${ search.searchContent eq '잡담'}">
							<c:set var="getContent4" value="selected" />
						</c:if>
						<select class='selectCondition custom-select' style="height: 30px; font-size: 15px; width: 175px; padding: 0 0 0 10px; margin-left: 5px; display: inline;">
							<option value='공지' ${getContent1}>공지</option>
							<option value='단어장' ${getContent2}>단어장</option>
							<option value='클래스' ${getContent3}>클래스</option>
							<option value='잡담' ${getContent4}>잡담</option>
						</select>
						<input type="search" name="searchContent" style="display: none;"
							class="searchData" value="${search.searchContent}">
					</c:if>
					<c:if test="${search.searchCondition ne 3}">
						<select class='selectCondition custom-select' id="searchCon2">
							<option value='공지'>공지</option>
							<option value='단어장'>단어장</option>
							<option value='클래스'>클래스</option>
							<option value='잡담'>잡담</option>
						</select>
						<input type="search" name="searchContent" class="searchData"
							value="${search.searchContent}">
					</c:if>

					<button class="btn btn-light searchBtn" style="height: 30px;">검색</button>
					<script>
						var searchCondition = document
								.getElementsByName('searchCondition');
						var searchData = document
								.getElementsByClassName('searchData');
						var selectCondition = $('.selectCondition');
						searchCondition = searchCondition[0];
						searchData = searchData[0];

						searchCondition.addEventListener('change', function() {
							if (searchCondition.value == 3) {
								searchData.style.display = 'none';
								searchData.value = selectCondition.val();
								selectCondition.css('display', 'inline');
							} else {
								selectCondition.css('display', 'none');
								searchData.style.display = 'inline';
								searchData.value = "";
							}
						});

						$('.selectCondition').change(function() {
							searchData.value = selectCondition.val();
						});
					</script>
				</form>
			</div>

			<!-- paging -->
			<c:if test="${!empty pi}">
				<div class="paging">
					<center>
						<!-- 이전(<) -->
						<c:if test="${pi.currentPage <= 1}">
							<button type="button" class="btn btn-light">&lt;</button>
						</c:if>
						<c:if test="${pi.currentPage > 1 }">
							<c:if test="${isSearch}">
								<c:url var="before" value="searchBoard.bo">
									<c:param name="page" value="${pi.currentPage - 1}" />
									<c:param name="searchCondition" value="${search.searchCondition}"/>
									<c:param name="searchContent" value="${search.searchContent}"/>
									<c:param name="type" value="${search.type}"/>
								</c:url>
							</c:if>
							<c:if test="${empty isSearch}">
								<c:url var="before" value="boardList.bo">
									<c:param name="page" value="${pi.currentPage - 1}" />
								</c:url>
							</c:if>
							<button type="button" onclick="location.href='${before}'"
								class="btn btn-light">&lt;</button>
						</c:if>

						<!-- 중간 -->
						<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
							<c:if test="${p eq pi.currentPage}">
								<button type="button" class="btn btn-light">${p}</button>
							</c:if>
							<c:if test="${p ne pi.currentPage }">
								<c:if test="${isSearch}">
									<c:url var="nextPage" value="searchBoard.bo">
										<c:param name="page" value="${p}" />
										<c:param name="searchCondition" value="${search.searchCondition}"/>
										<c:param name="searchContent" value="${search.searchContent}"/>
										<c:param name="type" value="${search.type}"/>
									</c:url>
								</c:if>
								<c:if test="${empty isSearch}">
									<c:url var="nextPage" value="boardList.bo">
										<c:param name="page" value="${p}" />
									</c:url>
								</c:if>
								<button type="button" onclick="location.href='${nextPage}'"
									class="btn btn-light">${p}</button>
							</c:if>
						</c:forEach>

						<!-- 다음(>) -->
						<c:if test="${pi.currentPage >= pi.endPage}">
							<button type="button" class="btn btn-light">&gt;</button>
						</c:if>
						<c:if test="${pi.currentPage < pi.endPage}">
							<c:if test="${isSearch}">
								<c:url var="next" value="searchBoard.bo">
									<c:param name="page" value="${pi.currentPage + 1}" />
									<c:param name="searchCondition" value="${search.searchCondition}"/>
									<c:param name="searchContent" value="${search.searchContent}"/>
									<c:param name="type" value="${search.type}"/>
								</c:url>
							</c:if>
							<c:if test="${empty isSearch}">
								<c:url var="next" value="boardList.bo">
									<c:param name="page" value="${pi.currentPage + 1}" />
								</c:url>
							</c:if>
							<button type="button" onclick="location.href='${next}'"
								class="btn btn-light">&gt;</button>
						</c:if>
					</center>
				</div>
			</c:if>

			<!-- 게시판 등록 버튼 -->
			<c:if test="${!empty sessionScope.loginMember}">
				<div class="regist">
					<button type="button" id="registbtn" data-toggle="tooltip"
						data-placement="bottom"
						onclick="location.href='viewBoardInsert.bo'" title="글 작성">

					</button>

				</div>
			</c:if>
		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />

</body>
</html>