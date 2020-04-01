<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/shotcuticon.png"
	type="image/x-icon">
<title>SEW</title>

<style>
#content {
	padding-top: 50px;
	padding-left: 50px;
	padding-bottom: 10px;
	margin-bottom: -100px;
}

.insertForm {
	/* background: #FAFAFA; */
	width: 1300px;
	margin: 0 auto;
	margin-top: 50px;
	min-height:700px;
}

.textarea {
	width: 1200px;
	height: 400px;
	border-radius: 3px;
	resize:none;
}

</style>
</head>

<body>
	<jsp:include page="../common/menubar.jsp" />

	<form action="insertBoard.bo" method="post" class="insertForm">
		<p style="text-align: left; font-size: 30px; margin-left: 50px; margin-bottom: -20px;">게시글 작성</p>
		<div id="content" class="row">
			<div class="col-md-10">
				<div class="box box-info">
					<div class="box-body">
						<fieldset id="w4">
							<!-- referId, nickname 보내기 위함 -->
							<input type="text" style="display: none;" name="referId"
								value="${sessionScope.loginMember.mId}" />
							<input type="text" style="display: none;" name="referNickname"
								value="${sessionScope.loginMember.nickname}" />
							<div class="row">
								<div class="col-sm-12">
									<div class="form-group field-job-title required">
										<label for="job-title" class="control-label col-md-2"
											style="font-weight: bold; display: inline; float: left; width: 100px; margin-top: 5px;">제목</label>
										<div class="col-md-10">
											<input type="text" autocomplete="off" placeholder="제목을 입력하세요"
												name="title" class="form-control" id="input-title" style="width:600px; display: inline;">
										</div>
										<div class="col-md-offset-2 col-md-10">
											<div class="help-block"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<div class="form-group field-job-tipe">
										<label for="job-tipe" class="control-label col-md-2"
											style="font-weight: bold; float: left; width: 100px; margin-top: 5px;">주제</label>
										<div class="col-md-10">
											<select name="type" class="form-control" id="job-tipe" style="width:100px;"
												name="type">
												<c:if test="${sessionScope.loginMember.mId eq 'admin'}">
													<option value="1">공지</option>
												</c:if>
												<option value="2">단어장</option>
												<option value="3">클래스</option>
												<option value="4">잡담</option>
											</select>
										</div>
										<div class="col-md-offset-2 col-md-10"></div>
										<div class="col-md-offset-2 col-md-10">
											<div class="help-block"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<div class="form-group">
										<label for="job-desc" class="control-label col-md-3"
											style="font-weight: bold">내용</label>
										<div class="col-md-10">
											<textarea name="content" class="textarea" id="textarea"></textarea>
										</div>
										<div class="col-md-offset-2 col-md-10"></div>
										<div class="col-md-offset-2 col-md-10">
											<div class="help-block"></div>
										</div>
									</div>
								</div>
							</div>
						</fieldset>
					</div>
				</div>
				<div>
					<button class="btn btn-outline-success" id="submitBtn"
						style="margin-left: 553px" >작성</button>
					<button type="button" class="btn btn-outline-danger"
						style="margin: 0 auto;" onclick="cancel();">취소</button>
				</div>
				<div id="saveText" style="display:none;">
				
				</div>
			</div>
		</div>
		<!-- <div>
			<button class="btn btn-outline-success" id="submitBtn"
				style="position: absolute; margin-left: 580px;"
				onmouseover="inquire();">Success</button>
			<button type="button" class="btn btn-outline-danger"
				style="position: absolute; margin-left: 700px;">Danger</button>
		</div> -->
		<div id="saveText" style="display:none;">
		
		</div>
		<script>
			function cancel() {
				if(window.confirm("작성을 취소하고 목록으로 이동하시겠습니까?")) {
					location.href = "boardList.bo";
				}
			}
			
			$('#submitBtn').click(function() {
				var text = $('#textarea');
				var title = $('#input-title');
				if(title.val() == "") {
					alert("제목을 입력하세요");
					$('#submitBtn').prop("type", "button");
					title.focus();
				}else if(text.val() == "") {
					alert("게시글 내용을 입력하세요");
					$('#submitBtn').prop("type", "button");
					text.focus();
				}else {
					$('#submitBtn').prop("type", "none");
				}
			});
		</script>
	</form>
	<jsp:include page="../common/footer.jsp"/>
</body>

</html>