<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
<title>SEW</title>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/shotcuticon.png"
	type="image/x-icon">
<style>
form {
	
}

.hide {
	display: none;
}

#table_id {
	text-align: center;
}

#table_id_length, #table_id_info {
	display: none;
}

#table_id tbody tr {
	cursor: pointer;
}

.write {
	transform: translateY(-40px);
	margin-left: 20px;
	font-size: 18px;
}

#table {
	width: 1100px;
	margin: 0 auto;
	margin-bottom: -113px;
}

.imotion {
	float: center;
}

.imotion div {
	position: relative;
	display: inline-block;
	border: 1px solid #d8d8d8;
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
	text-align: center;
	margin-left: -37px;
	margin-top: 3px;
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

.imo:hover+p.arrow_box {
	display: block;
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
</style>
</head>

<body>
	<jsp:include page="../common/menubar.jsp" />

	<br>
	<br>
	<form action="response.ad" method="POST">
		<div class="table" id="table">
			<p style="text-align: left; font-size: 30px; margin-bottom: -30px;">고객센터</p>
			<table id="table_id" class="display">
				<thead>
					<tr>
						<th>NO</th>
						<th>신고자</th>
						<th>이름</th>
						<th>문의 제목</th>
						<th>등록일</th>
						<th>답변여부</th>
						<th>유형</th>
						<th>신고된 번호</th>
						<th>문의삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:set var="index" value="1" />
					<c:forEach var="item" items="${ mInquireList }">
						<tr class="view">
							<td>${index}<c:set var="index" value="${index+1}" />
							</td>
							<td>${item.inquirerId}</td>
							<td>${item.name}</td>
							<td>${item.title}</td>
							<td>${item.registDate}</td>
							<td><c:if test="${item.isAnswer eq 'Y'}">
									완료
								</c:if> <c:if test="${item.isAnswer eq 'N'}">
									미답변
								</c:if></td>
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
							<td>
								<c:if test="${item.reportedId eq null}">
									없음
								</c:if> 
								<c:if test="${item.reportedId ne null}">
									<%-- ${item.reportedId } --%>
									***
								</c:if>
							</td>
							<td><i class="fa fa-archive" style="font-size: 28px;"
								onclick="deleteBtn('${item.iId}');"></i> <script>
									function deleteBtn(iId) {
										if(confirm("해당 문의를 삭제하시겠습니까?")) {
											location.href="deleteInquire.ad?iId="+iId;
										}
									}
								</script></td>
						</tr>
						<tr class="inquire">
							<td colspan="9"><textarea style="width: 100%; height: 200px"
									placeholder="${item.content}" readonly></textarea></td>
							<td style="display: none;"></td>
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
								<td colspan="9"><textarea
										style="width: 100%; height: 200px"
										placeholder="${item.answer}" readonly></textarea></td>
								<td style="display: none;"></td>
								<td style="display: none;"></td>
								<td style="display: none;"></td>
								<td style="display: none;"></td>
								<td style="display: none;"></td>
								<td style="display: none;"></td>
								<td style="display: none;"></td>
								<td style="display: none;"></td>
							</tr>
						</c:if>
						<c:if test="${item.isAnswer eq 'N' }">
							<tr class="answer">
								<td colspan="9"><textarea
										style="width: 100%; height: 200px"
										placeholder="답변이 아직 작성되지 않았습니다. 잠시만 기다려 주십시오." readonly></textarea></td>
								<td style="display: none;"></td>
								<td style="display: none;"></td>
								<td style="display: none;"></td>
								<td style="display: none;"></td>
								<td style="display: none;"></td>
								<td style="display: none;"></td>
								<td style="display: none;"></td>
								<td style="display: none;"></td>
							</tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>

			<div class="regist">
				<button type="button" id="registbtn"
					style="margin-top: -40px; position: absolute;"
					data-toggle="tooltip" data-placement="bottom"
					onclick="location.href='insertInquireView.ad'" title="글 작성">
				</button>
			</div>
			<script>
				$(document).ready(
						function() {
							// DataTable 정의
							$('#table_id').DataTable({
								"ordering" : false,
								"pageLength" : 30,
								"language" : {
									"emptyTable" : "등록한 문의가 없습니다."
								}
							});

							// 문의/답변란 토글 기능
							$(".inquire").hide();
							$(".answer").hide();
							$(".answer-button").hide();

							//content 클래스를 가진 div를 표시/숨김(토글)
							$(".view").click(
									function() {
										$(this).next(".inquire").slideToggle();
										$(this).next(".inquire")
												.next(".answer").slideToggle();
										$(this).next(".inquire")
												.next(".answer").next(
														".answer-button")
												.slideToggle();
									});

							$(".paging_simple_numbers").click(function() {
								$(".inquire").hide();
								$(".answer").hide();
								$(".answer-button").hide();
								
								$(".view").click(
										function() {
											$(this).next(".inquire").slideToggle();
											$(this).next(".inquire")
													.next(".answer").slideToggle();
											$(this).next(".inquire")
													.next(".answer").next(
															".answer-button")
													.slideToggle();
										});
							});
						});
				
			</script>
		</div>
	</form>
	<div style="min-height: calc(100vh - 360px);"></div>
	<jsp:include page="../common/footer.jsp" />
</body>

</html>