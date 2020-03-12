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
<title>외웟</title>

<style>
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
	width: 800px;
	margin: 0 auto;
}
</style>
</head>

<body>
	<jsp:include page="../common/menubar.jsp" />

	<br>
	<br>
	<form action="response.ad" method="POST">
		<div class="table" id="table">
			<table id="table_id" class="display">
				<thead>
					<tr>
						<th>NO</th>
						<th>신고자</th>
						<th>이름</th>
						<th>유형</th>
						<th>문의 제목</th>
						<th>등록일</th>
						<th>답변여부</th>
						<th>신고된 아이디</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${ mInquireList }">
						<tr class="view">
							<td>${item.iId}</td>
							<td>${item.inquirerId}</td>
							<td>${item.name}</td>
							<td>${item.type}</td>
							<td>${item.title}</td>
							<td>${item.registDate}</td>
							<td>${item.isAnswer}</td>
							<td>${item.reportedId}</td>
						</tr>
						<tr class="inquire">
							<td colspan="8"><textarea style="width: 100%; height: 200px"
									placeholder="${item.content}" readonly></textarea></td>
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
										style="width: 100%; height: 200px"
										placeholder="${item.answer}" readonly></textarea></td>
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
								<td colspan="8"><textarea
										style="width: 100%; height: 200px"
										placeholder="답변이 아직 작성되지 않았습니다. 잠시만 기다려 주십시오." readonly></textarea></td>
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

			<input type="button" value="글쓰기" style="margin-top: -40px; position: fixed;" 
				onclick="location.href='insertInquireView.ad'" />
		
			<script>
				$(document).ready(
						function() {
							// DataTable 정의
							$('#table_id').DataTable({
								"ordering" : false,
								"pageLength" : 40,
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
						});
			</script>
		</div>
	</form>
</body>

</html>