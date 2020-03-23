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
		    <table class="table table-hover" style="width:80%; text-align: center; margin:auto; position: :relative; margin-left:10%;">
		        <thead style="font-family: 'Nanum Gothic', sans-serif;">
		            <tr>
		                <th scope="col" style="width:8%;"></th>
		                <th scope="col" style="width:20%;">아이디</th>
		                <th scope="col" style="width:48%;">자기소개</th>
		                <th scope="col" style="width:10%;">요청일</th>
		                <th scope="col" style="width:7%;">승인</th>
		                <th scope="col" style="width:7%;">거절</th>
		            </tr>
		        </thead>
		        <tbody>
		        	<c:forEach var="i" begin="0" end="${ jwList.size()-1 }">
		        		<tr>
		        			<td>
		        				<c:forEach var="j" begin="0" end="${ userList.size() - 1 }">
		        					<c:if test="${ jwList.get(i).mId eq userList.get(j).refId }">
		        						<img src="${ contextPath }/resources/profileimg/${ userList.get(j).changeName }" style="width:100%;">
		        					</c:if>
		        				</c:forEach>
		        			</td>
		        			<td>${ jwList.get(i).mId }</td>
		        			<td>${ jwList.get(i).introduce}</td>
		        			<td>${ jwList.get(i).joindate }</td>
		        			<td><input type="checkbox" name="" id="ok${ i }" class="ok" style="height: 25px; width: 25px;"></td>
		        			<td><input type="checkbox" name="" id="nok${ i }" class="nok" style="height: 25px; width: 25px;"></td>
		        		</tr>
		        	</c:forEach>
		        </tbody>
        	</table>
        </div>
	</div>
</body>
</html>