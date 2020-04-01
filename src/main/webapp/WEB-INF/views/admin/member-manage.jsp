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
	<link rel="stylesheet" type="text/css"
		href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
	<script type="text/javascript" charset="utf8"
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
	<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/shotcuticon.png"
	type="image/x-icon">
	<title>SEW</title>
	<style>
		/* 왼쪽 메뉴바 */
		.menu {
			font-family: "Open Sans", Helvetica Neue, Helvetica, Arial, sans-serif;
			color: #fff;
		}
		
		rgb (136, 91, 91) .hide {
			display: none;
		}
		
		/* datatables */
		#table_id {
			text-align: center;
		}
		
		#table_id_length, #table_id_info {
			display: none;
		}
	</style>
</head>

<body>
	<%-- <c:if test="${sessionScope.loginMember.mId eq 'admin'}"> --%>
	    <jsp:include page="../common/left-menubar.jsp"/>
	
		<div class="table">
			<table id="table_id" class="display">
				<thead>
					<tr>
						<td>ID</td>
						<th>이름</th>
						<th>닉네임</th>
						<th>가입일</th>
						<th>수정일</th>
						<th>회원상태</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${ mList ne null }">
						<c:forEach var="item" items="${ mList }">
							<tr>
								<td>${ item.mId }</td>
								<td>${ item.name }</td>
								<td>${ item.nickname }</td>
								<td>${ item.enrollDate }</td>
								<td>${ item.updateDate }</td>
								<c:if test="${ item.userStatus eq 'Y'}">
									<c:set var="selectedY" value="selected"/>
								</c:if>
								<c:if test="${ item.userStatus eq 'N'}">
									<c:set var="selectedN" value="selected"/>
								</c:if>
								<td>
									<c:url var="updateStatus" value="updateStatus.me">
										<c:param name="mId" value="${ item.mId }"/>
										<c:param name="userStatus" value="${ item.userStatus }"/>
									</c:url>
									<select id="statusSelected" onchange="changeStatus(this);">
										<option value="Y" ${ selectedY }>Y</option>									
										<option value="N" ${ selectedN }>N</option>
									</select>
								</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
			<script>
				// datatable
	            $(document).ready(function () {
	                $('#table_id').DataTable({
	                	"ordering":false,
						"language" : {
							"emptyTable" : "등록된 회원이 없습니다."
						},
	                });
	                
	                var curPage = document.getElementsByClassName("page1");
	                var bTag = document.createElement("b");
	                curPage[0].style.fontWeight = "bold";
	            });  
				
				// 회원 탈퇴 상태 변경
				function changeStatus(e) {
					location.href="${ updateStatus }";
				}
	        </script>
		</div>
	<%-- </c:if>
 	<c:if test="${sessionScope.loginMember.mId ne 'admin'}">
		<jsp:include page="../common/errorPage.jsp"/>
	</c:if> --%>
</body>
</html>