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
	
<title>외웟</title>

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
</style>
</head>

<body>
	<jsp:include page="../common/menubar.jsp" />

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
											<div class="hint-block" style="font-size: 12px; margin-left: 100px;">제목은 변경할
												수 없습니다</div>
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
											<select name="type" class="form-control" id="job-tipe" style="width:100px;">
												<option value="0" selected>계정</option>
												<option value="1">시스템</option>
												<option value="2">사용자</option>
												<option value="3">단어장</option>
												<option value="4">클래스</option>
												<option value="5">기타</option>
											</select>
										</div>
										<div class="col-md-offset-2 col-md-10"></div>
										<div class="col-md-offset-2 col-md-10">
											<div class="help-block"></div>
										</div>
									</div>
									<script>
										var type = document.getElementById("job-tipe");
										if(type.addEventListener('change', function() {
											var $typeDiv = $("#typeDiv");
											switch(type.value) {
											case "2":
												$typeDiv.children('input').remove();
												$typeDiv.children('p').remove();
												type.style.float = "left";
												var $str = $("<p class='pTag'>신고할 유저명 </p>");
												var $textInput = $("<input type='text' value='${reportedName}' class='textInput' name='reportedId'>");
												$typeDiv.append($str);
												$typeDiv.append($textInput);
												break;
											case "3":
												$typeDiv.children('input').remove();
												$typeDiv.children('p').remove();
												type.style.float = "left";
												var $str = $("<p class='pTag'>신고할 게시글 번호 </p>");
												var $textInput = $("<input type='text' value='${reportedName}' class='textInput' name='reportedId'>");
												var $typeDiv = $("#typeDiv");
												$typeDiv.append($str);
												$typeDiv.append($textInput);
												break;
											case "4":
												$typeDiv.children('input').remove();
												$typeDiv.children('p').remove();
												type.style.float = "left";
												var $str = $("<p class='pTag'>신고할 클래스 번호 </p>");
												var $textInput = $("<input type='text' value='${reportedName}' class='textInput' name='reportedId'>");
												var $typeDiv = $("#typeDiv");
												$typeDiv.append($str);
												$typeDiv.append($textInput);
												break;
											default:
												$typeDiv.children('input').remove();
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
										<div class="col-md-10">
											<div id="summernote"></div>
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
						style="margin-left: 532px"
						onmouseover="inquire();">작성</button>
					<button type="button" class="btn btn-outline-danger"
						style="margin: 0 auto;" onclick="cancel();">취소</button>
				</div>
				<div id="saveText" style="display:none;">
				
				</div>
			</div>
		</div>
		<script>
			$("#summernote").summernote(
					{
						"height" : 400,
						"width" : "1200px",
						"dialogsInBody" : true,
						"prettifyHtml" : true,
						"codemirror" : {
							"mode" : "text/html",
							"htmlMode" : true,
							"lineNumbers" : true,
							"theme" : "monokai",
							"width" : "100px",
							"textWrapping" : true
						},
						"disableDragAndDrop" : true,
						"toolbar" : [
								[ "paragraph", [ "style" ] ],
								[ "fontsize",
										[ "fontname", "fontsize", "color" ] ],
								[
										"style",
										[ "bold", "italic", "underline",
												"strikethrough", "clear" ] ],
								[ "paragraph", [ "ol", "ul", "paragraph" ] ],
								[
										"insert",
										[ "table", "link", "picture", "video",
												"hr" ] ],
								[ "misc", [ "codeview" ] ] ],
						"placeholder" : "문의 내용을 입력하세요"
					});

			var submit = $("#submitBtn");
			function inquire() {
				var text = $($("#summernote").summernote("code")).text();

				var content = $("#saveText");
				content.html("<input type='text' name='content' value='" + text + "'/>");
				
			};
			
			function cancel() {
				if(window.confirm("작성을 취소하고 목록으로 이동하시겠습니까?")) {
					location.href = "boardList.bo";
				}
			}
		</script>
	</form>
</body>

</html>