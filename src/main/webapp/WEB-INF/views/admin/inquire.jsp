<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>외웟</title>

<style>
#content {
	padding-top: 50px;
	padding-left: 50px;
	padding-bottom: 10px;
}
</style>
</head>

<body>
	<jsp:include page="../common/menubar.jsp" />
	<jsp:include page="../common/left-menubar.jsp" />

	<form action="inquire.ad" method="post">
		<div id="content" class="row">
			<div class="col-md-10">
				<div class="box box-info">
					<div class="box-body">
						<fieldset id="w4">
							<div class="row">
								<div class="col-sm-12">
									<div class="form-group field-job-tipe">
										<label for="job-tipe" class="control-label col-md-2"
											style="font-weight: bold">유형</label>
										<div class="col-md-10">
											<select name="Job[tipe]" class="form-control" id="job-tipe"
												name="type">
												<option value="0">계정</option>
												<option value="1">시스템</option>
												<option value="2">사용자</option>
												<option value="3">기타</option>
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
									<div class="form-group field-job-title required">
										<label for="job-title" class="control-label col-md-2"
											style="font-weight: bold">제목</label>
										<div class="col-md-10">
											<input type="text" autocomplete="off" placeholder="제목을 입력하세요"
												name="title" class="form-control" id="input-title">
										</div>
										<div class="col-md-offset-2 col-md-10">
											<div class="hint-block" style="font-size: 12px">제목은 변경할
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
			</div>
			<script>
				$("#summernote")
						.summernote(
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
											[
													"fontsize",
													[ "fontname", "fontsize",
															"color" ] ],
											[
													"style",
													[ "bold", "italic",
															"underline",
															"strikethrough",
															"clear" ] ],
											[ "paragraph",
													[ "ol", "ul", "paragraph" ] ],
											[
													"insert",
													[ "table", "link",
															"picture", "video",
															"hr" ] ],
											[ "misc", [ "codeview" ] ] ],
									"placeholder" : "문의 내용을 입력하세요"
								});
				
				function response() {
	            	var text = $($("#summernote").summernote("code")).text();
	            	location.href = "http://localhost:8800/spring/inquire.ad?text="+text;
	            }
			</script>
		</div>
		<div>
			<button type="button" class="btn btn-outline-success"
				style="position: absolute; margin-left: 580px;" onclick="response();">Success</button>
			<button type="button" class="btn btn-outline-danger"
				style="position: absolute; margin-left: 700px;">Danger</button>
		</div>
	</form>
</body>

</html>