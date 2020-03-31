<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fnc" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="../common/classSideMenubar.jsp"/>
	<jsp:include page="../classs/fontStore.jsp"/>
		
	<% int cc = 1; %>
		
	 <div style="margin-top :4vh; margin-left: 4vw; width:70%; height:800px; float: left; overflow: auto; position: relative;">
    	<div style="margin:auto; width:50%; text-align:center; border-bottom:1px solid gray; font-family:cinzel;">
        <h1>NOTICE</h1>
        </div><br>
     <table class="table table-hover" style="width:80%; text-align: center; margin:auto; margin-left:10%; cursor:pointer; font-size:13px;">
        <thead style="font-family: 'Nanum Gothic', sans-serif;">
            <tr>
                <th scope="col" style="width:5%;">No</th>
                <th scope="col" style="width:65%;">제목</th>
                <th scope="col" style="width:10%;">글쓴이</th>
                <th scope="col" style="width:10%;">날짜</th>
                <th scope="col" style="width:10%;">조회수</th>
            </tr>
        </thead>
        <tbody>
        	<c:if test="${ !empty cnList }">
        		<c:forEach var="i" begin="0" end="${ cnList.size() - 1 }">
        		<c:url var="selectedNotice" value="detailNotice.do">
					<c:param name="cnid" value="${cnList.get(i).cnid}"/>
					<c:param name="cNo" value="${ cNo }"/>
				</c:url>
	        		<tr onclick="location.href='${selectedNotice}'">
	        			<c:set var="cc" value="cc + 1"/>
	        			<td><%= cc++ %></td>
	        			<td>${ cnList.get(i).title }</td>
	        			<td>${ cnList.get(i).id } </td>
	        			<td>${ cnList.get(i).createDate }</td>
	        			<td>${ cnList.get(i).views }</td>
	        		</tr>
        		</c:forEach>
        	</c:if>
        	
        	<c:if test="${ empty cnList }">
        		<tr>
        			<td colspan="5">공지사항이 없습니다.</td>
        		</tr>
        	</c:if>
        
        </tbody>
      </table>
      
      <div style=" float:left; width:1200px; margin:auto;">
      <!-- paging -->
		<c:if test="${!empty pi}">
			<div class="paging" style="float:right;">
				<!-- 이전(<) -->
				<c:if test="${pi.currentPage <= 1}">
					<button type="button" class="btn btn-light">&lt;</button>	
				</c:if>
				<c:if test="${pi.currentPage > 1 }">
					<c:url var="before" value="classNoticeView.do">
						<c:param name="page" value="${pi.currentPage - 1}"/>
						<c:param name="cNo" value="${ cNo }"/>
					</c:url>
					<button type="button" onclick="location.href='${before}'" class="btn btn-light">&lt;</button>	
				</c:if>
				
				<!-- 중간 -->
				<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
					<c:if test="${p eq pi.currentPage}">
						<button type="button" class="btn btn-light">${p}</button>
					</c:if>
					<c:if test="${p ne pi.currentPage }">
						<c:url var="nextPage" value="classNoticeView.do">
							<c:param name="page" value="${p}"/>
							<c:param name="cNo" value="${ cNo }"/>
						</c:url>
						<button type="button" onclick="location.href='${nextPage}'" class="btn btn-light">${p}</button>
					</c:if>
				</c:forEach>
				
				<!-- 다음(>) -->
				<c:if test="${pi.currentPage >= pi.endPage}">
					<button type="button" class="btn btn-light">&gt;</button>
				</c:if>
				<c:if test="${pi.currentPage < pi.endPage}">
					<c:url var="next" value="classNoticeView.do">
						<c:param name="page" value="${pi.currentPage + 1}"/>
						<c:param name="cNo" value="${ cNo }"/>
					</c:url>
					<button type="button" onclick="location.href='${next}'" class="btn btn-light">&gt;</button>
				</c:if>
			</div>
		</c:if>
        </div>
        
        <c:forEach var="i" begin="0" end="${ cmList.size() - 1 }">
        	<c:if test="${ cmList.get(i).id eq loginMember.mId && cmList.get(i).wRight eq  'Y' }">
        		<c:url var="goW" value="goNoticeWrite.do">
        			<c:param name="cNo" value="${ cNo }"/>
        		</c:url>
        		<div style="float:left; width:1200px; margin-top:10px; height:50px;">
        			<button class="btn btn-secondary" style="float:right;" onclick="location.href='${goW}'">작성하기</button>
        		</div>
        	</c:if>
        </c:forEach>
        </div>
        
</body>
</html>