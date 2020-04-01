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
}

.insertForm {
	background: #FAFAFA;
	width: 1300px;
	margin: 0 auto;
	margin-top: 50px;
}

.pTag {
	 float: left;
	 font-weight: bold;
	 margin-top: 5px;
	 margin-left: 30px;
	 margin-right: 5px;
}

.textInput {
	font-weight: bold;
	float: left;
	margin-top: 4px;
	width: 100px;
	height: 30px;
	border-radius: 3px;
}

.selectForm {
	margin-top: 4px;
	width: 100px;
	height: 30px;
	border-radius: 3px;
}

#hi {
	width: 300px;
}

.textarea {
	width: 1200px;
	height: 400px;
	border-radius: 3px;
}
</style>
</head>

<body>
	<jsp:include page="../common/menubar.jsp" />
	<p style="text-align: left; font-size: 30px; width:1290px; margin: 0 auto; margin-top: 30px; margin-bottom: -40px">문의</p>
	<form action="insertInquire.ad" method="post" class="insertForm">		
		<div id="content" class="row">
			<div class="col-md-10">
				<div class="box box-info">
					<div class="box-body">
						<fieldset id="w4">
							<!-- inquirerId 보내기 위함 -->
							<input type="text" style="display: none;" name="inquirerId"
								value="${sessionScope.loginMember.mId}" />
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
											style="font-weight: bold; float: left; width: 100px; margin-top: 5px;">유형</label>
										<div class="col-md-10" id="typeDiv">
											<select name="type" class="form-control type" id="job-tipe" style="width:100px;">
												<option value="0" selected>시스템</option>
												<option value="1">사용자</option>
												<option value="2">단어장</option>
												<option value="3">클래스</option>
												<%-- <c:if test="${!empty cNo}">
													<option value="4" selected>클래스</option>
												</c:if>
												<c:if test="${empty cNo }"> --%>
													<option value="4">게시판</option>
												<%-- </c:if> --%>
												<option value="5">기타</option>
											</select>
										</div>
										<div class="col-md-offset-2 col-md-10"></div>
										<div class="col-md-offset-2 col-md-10">
											<div class="help-block"></div>
										</div>
									</div>
									<script>
										var reportId; 
										window.onload = function() {
											var selectType = $('.type');
											var $typeDiv = $("#typeDiv");
											
											$typeDiv.children('.report').remove();
											$typeDiv.children('p').remove();
											
											<c:if test="${reportedId ne null}">
												var $memberSelect;
												var $str;
												type.style.float = "left";
												reportId = "${reportedId}";
												
												<c:choose>
													<c:when test="${reportType eq 1}">
														selectType.val(1);
														var selectData = $('.report');
														selectData.val(reportId);
													</c:when>
													<c:when test="${reportType eq 2}">
														selectType.val(2);
														var selectData = $('.report');
														selectData.val(reportId);
													</c:when>
													<c:when test="${reportType eq 3}">
														$str = $("<p class='pTag'>신고할 클래스 &nbsp;</p>");
														$memberSelect = 
															$("<select class='form-control report' id='report' style='width:100px;' name='reportedId'>"
																+ '<c:forEach var="item" items="${cList}">'
																+ '<option value="${item.cNo}">${item.title} | ${item.ornerId}</option>'
																+ '</c:forEach>'
															+ "</select>");
														
														selectType.val(3);

														$typeDiv.append($str);
														$typeDiv.append($memberSelect);
														
														var selectData = $('.report');
														selectData.val(reportId);
													</c:when>
													<c:when test="${reportType eq 4}">
														var $str = $("<p class='pTag'>신고할 게시판 &nbsp;</p>");
														var $memberSelect = 
															"<select class='form-control report' id='report' style='width:100px;' name='reportedId'>"
																+ '<c:forEach var="item" items="${bList}">'
																+ '<option value="${item.bId}">${item.title} | ${item.referNickname}</option>'
																+ '</c:forEach>'
															+ "</select>";
															
														selectType.val(4);
														
														$typeDiv.append($str);
														$typeDiv.append($memberSelect);
														
														var selectData = $('.report');
														selectData.val(reportId);
													</c:when>
												</c:choose>

											</c:if>
										}
									
										var type = document.getElementById("job-tipe");
										if(type.addEventListener('change', function() {
											var $typeDiv = $("#typeDiv");
											switch(type.value) {
											case "1":
												$typeDiv.children('.report').remove();
												$typeDiv.children('p').remove();
												type.style.float = "left";
												var $str = $("<p class='pTag'>신고할 유저명 &nbsp;</p>");
												var $memberSelect = 
													"<select class='form-control report' id='report' style='width:100px;' name='reportedId'>"
														+ '<c:forEach var="item" items="${mList}">'
														+ '<c:if test="${item.mId ne sessionScope.loginMember.mId}">'
														+ '<option value="${item.mId}">${item.nickname}</option>'
														+ '</c:if>'
														+ '</c:forEach>'
													+ "</select>";
												var $textInput = $("<input type='text' value='${reportedName}' class='textInput' name='reportedId'>");
												$typeDiv.append($str);
												$typeDiv.append($memberSelect);
												break;
											case "2":
												$typeDiv.children('.report').remove();
												$typeDiv.children('p').remove();
												type.style.float = "left";
												var $str = $("<p class='pTag'>신고할 단어장 &nbsp;</p>");
												var $memberSelect = 
													"<select class='form-control report' id='report' style='width:100px;' name='reportedId'>"
														+ '<c:forEach var="item" items="${bList}">'
														+ '<option value="${item.bId}">${item.title}</option>'
														+ '</c:forEach>'
													+ "</select>";
												var $textInput = $("<input type='text' value='${reportedBoard}' class='textInput' name='reportedId'>");
												var $typeDiv = $("#typeDiv");
												$typeDiv.append($str);
												$typeDiv.append($memberSelect);
												break;
											case "3":
												$typeDiv.children('.report').remove();
												$typeDiv.children('p').remove();
												type.style.float = "left";
												var $str = $("<p class='pTag'>신고할 클래스 &nbsp;</p>");
												var $memberSelect = 
													"<select class='form-control report' id='report' style='width:100px;' name='reportedId'>"
														+ '<c:forEach var="item" items="${cList}">'
														+ '<option value="${item.cNo}">${item.title} | ${item.ornerId}</option>'
														+ '</c:forEach>'
													+ "</select>";
												var $textInput = $("<input type='text' value='${reportedClass}' class='textInput' name='reportedId'>");
												var $typeDiv = $("#typeDiv");
												$typeDiv.append($str);
												$typeDiv.append($memberSelect);
												break;
											case "4":
												$typeDiv.children('.report').remove();
												$typeDiv.children('p').remove();
												type.style.float = "left";
												var $str = $("<p class='pTag'>신고할 게시판 &nbsp;</p>");
												var $memberSelect = 
													"<select class='form-control report' id='report' style='width:100px;' name='reportedId'>"
														+ '<c:forEach var="item" items="${bList}">'
														+ '<option value="${item.bId}">${item.title} | ${item.referNickname}</option>'
														+ '</c:forEach>'
													+ "</select>";
												var $textInput = $("<input type='text' value='${reportedClass}' class='textInput' name='reportedId'>");
												var $typeDiv = $("#typeDiv");
												$typeDiv.append($str);
												$typeDiv.append($memberSelect);
												break;
											default:
												$typeDiv.children('.report').remove();
												$typeDiv.children('p').remove();
												break;
											}
										}));
									</script>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<div class="form-group">
										<label for="job-desc" class="control-label col-md-3"
											style="font-weight: bold">문의 내용</label>
										<div class="col-md-offset-2 col-md-10">
											<div class="hint-block" style="font-size: 12px;">
												한번 작성된 문의는 변경하실 수 없습니다.</div>
											</div>
										</div>
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
						style="margin-left: 532px">작성</button>
					<button type="button" class="btn btn-outline-danger"
						style="margin: 0 auto;" onclick="cancel();">취소</button>
				</div>
				<div id="saveText" style="display:none;">
				
				</div>
			</div>
		</div>
		<script>
		$('#submitBtn').click(function() {
			var text = $('#textarea');
			var title = $('#input-title');
			if(title.val() == "") {
				alert("제목을 입력하세요");
				$('#submitBtn').prop("type", "button");
				title.focus();
			}else if(text.val() == "") {
				alert("문의 내용을 입력하세요");
				$('#submitBtn').prop("type", "button");
				text.focus();
			}else {
				$('#submitBtn').prop("type", "none");
			}
		});
			function cancel() {
				if(window.confirm("문의 작성을 취소하고 목록으로 이동하시겠습니까?")) {
					location.href = "memberInquireList.ad";
				}
			}
		</script>
	</form>
	<jsp:include page="../common/footer.jsp"/>
</body>

</html>