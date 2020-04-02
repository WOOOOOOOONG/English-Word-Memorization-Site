<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fnc" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="../common/classSideMenubar.jsp"/>
	
	<div style="margin-top :4vh; margin-left: 4vw; width:70%; height:800px; float: left; overflow: auto;">
		<div style="margin:auto; width:50%; text-align:center; border-bottom:1px solid gray; font-family:cinzel;">
        	<h1>WAITING TO JOIN</h1>
        </div><br><br>
        
        <div>
        	<input type="text" id="hidecNo" style="display:none;" value="${ cNo }">
		    <table class="table table-hover" style="width:80%; text-align: center; margin:auto; position: :relative; margin-left:10%;">
		        <thead style="font-family: 'Nanum Gothic', sans-serif;">
		            <tr>
		                <th scope="col" style="width:8%;"></th>
		                <th scope="col" style="width:15%;">아이디</th>
		                <th scope="col" style="width:15%;">닉네임</th>
		                <th scope="col" style="width:33%;">자기소개</th>
		                <th scope="col" style="width:15%;">요청일</th>
		                <th scope="col" style="width:7%;">승인</th>
		                <th scope="col" style="width:7%;">거절</th>
		            </tr>
		        </thead>
		        <tbody>
		        	<c:if test="${ !empty jwList }">
		        	<c:forEach var="i" begin="0" end="${ jwList.size()-1 }">
		        		<tr>
		        			<td>
		        				<c:forEach var="j" begin="0" end="${ allUserList.size() - 1 }">
 		        					<c:if test="${ jwList.get(i).mId eq allUserList.get(j).refId }">
		        					
		        						<img src="${ contextPath }/resources/profileimg/${ allUserList.get(j).changeName }" style="width:100%;">
		        					</c:if>
		        				</c:forEach>
		        			</td>
		        			<td>${ jwList.get(i).mId }</td>
			        		<c:forEach var="t" begin="0" end="${ allMember.size() - 1 }">
								<c:if test="${ jwList.get(i).mId eq allMember.get(t).mId }">
									<td style="line-height:4;">${ allMember.get(t).nickname }</td>
								</c:if>
			                </c:forEach>
		        			<td>${ jwList.get(i).introduce}</td>
		        			<td>${ jwList.get(i).joindate }</td>
		        			<td><input type="checkbox" name="" id="${ jwList.get(i).mId }" class="ok" style="height: 25px; width: 25px;"></td>
		        			<td><input type="checkbox" name="" id="${ jwList.get(i).mId }" class="nok" style="height: 25px; width: 25px;"></td>
		        		</tr>
		        	</c:forEach>
		        	</c:if>
		        	<c:if test="${ empty jwList }">
		        		<tr>
		        			<td colspan="6">가입요청이 존재하지 않습니다.</td>
		        		</tr>
		        	</c:if>
		        </tbody>
        	</table>
        </div>
	</div>
	
	<script>
		$(function(){
			$(".ok").click(function(){
				var id = $(this).attr('id');
				var cNo = $("#hidecNo").val();
				var obj = new Object(); // json에 보내기위한 객체
				if(confirm( id + "님의 가입 신청을 수락하시겠습니까?")){
					obj.id = id;
					obj.cNo = cNo;
					$.ajax({
						url:"joinok.do",
						data : JSON.stringify(obj),
						type:"post",
						contentType:"application/json; charset=utf-8",
						success:function(data){
							if(data >= 1){
								alert(id + "님의 가입이 완료되었습니다.");
								location.href="classWaitjoin.do?cNo=${ cNo }";	
							}
						},
						error:function(e){
							alert(e);
						}
					});
				}else{
					$(this).prop("checked", false);
				}
			});
		});
	</script>
	<script>
		$(function(){
			$(".nok").click(function(){
				var id = $(this).attr('id');
				var cNo = $("#hidecNo").val();
				var obj = new Object(); // json에 보내기위한 객체
				if(confirm( id + "님의 가입 신청을 거절하시겠습니까?")){
					obj.id = id;
					obj.cNo = cNo;
					$.ajax({
						url:"joinnok.do",
						data : JSON.stringify(obj),
						type:"post",
						contentType:"application/json; charset=utf-8",
						success:function(data){
							if(data >= 1){
								alert(id + "님의 가입이 거절되었습니다.");
								location.href="classWaitjoin.do?cNo=${ cNo }";	
							}
						},
						error:function(e){
							alert(e);
						}
					});
				}else{
					$(this).prop("checked", false);
				}
			});
		});
	</script>
</body>
</html>