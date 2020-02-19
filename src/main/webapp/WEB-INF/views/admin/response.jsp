<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</style>
</head>

<body>
	<jsp:include page="../common/menubar.jsp" />
	<jsp:include page="../common/left-menubar.jsp" />

	<form action="response.ad" method="POST">
		<div class="table">
			<table id="table_id" class="display">
				<thead>
					<tr>
						<th>NO</th>
						<th>신고자</th>
						<th>이름</th>
						<!-- member에서 가져와야함 -->
						<th>유형</th>
						<th>문의 제목</th>
						<th>등록일</th>
						<th>답변여부</th>
						<th>신고된 이름</th>
					</tr>
				</thead>
				<tbody>
					<tr class="view">
						<td>1</td>
						<td>admin</td>
						<td>임세웅</td>
						<td>악성유저</td>
						<td>악성유저 신승환 신고합니다</td>
						<td>2020-02-11</td>
						<td><select>
								<option value="Y" selected>Y</option>
								<option value="N">N</option>
						</select></td>
					</tr>
					<tr class="inquire">
						<td colspan="7"><textarea style="width: 100%; height: 200px"
								placeholder="이 유저는 정말 안되겠습니다. 당장 처리하지 않으면 전 접겠습니다." readonly></textarea>
						</td>
						<td style="display: none;"></td>
						<td style="display: none;"></td>
						<td style="display: none;"></td>
						<td style="display: none;"></td>
						<td style="display: none;"></td>
						<td style="display: none;"></td>
					</tr>
					<tr class="answer">
						<td colspan="7">
							<div id="summernote"></div>
						</td>
						<td style="display: none;"></td>
						<td style="display: none;"></td>
						<td style="display: none;"></td>
						<td style="display: none;"></td>
						<td style="display: none;"></td>
						<td style="display: none;"></td>
					</tr>
				</tbody>
			</table>

			<script>
            $(document).ready(function () {
                $('#table_id').DataTable({
                	"ordering":false
                });
                
                $(".inquire").hide();
                $(".answer").hide();
                
	            //content 클래스를 가진 div를 표시/숨김(토글)
	            $(".view").click(function() {
	             	$(this).next(".inquire").slideToggle();
	             	$(this).next(".inquire").next(".answer").slideToggle();
	            });
	            
	            $('#summernote').summernote({
	                placeholder: "답변 내용을 입력하세요.",
	                tabsize: 2,
	                height: 210,
	                lang: 'ko-KR'
	            });
            });
        </script>
		</div>
	</form>
</body>
</html>