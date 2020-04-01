<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fnc" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.classprofileimg{
		border-radius:50%;
		border: 1px solid grey;
	}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="../common/classSideMenubar.jsp"/>
	<jsp:include page="../classs/fontStore.jsp"/>
	
	<script>
		$(function(){
			var he = window.innerHeight;
			var he2 = $("#thishe").height();
			$(".menu").css("height",he2 + 300);
		});
	</script>
	
	
	
	<div style="margin-top :4vh; margin-left: 4vw; width:70%; float: left;  position: relative;">
    	<div style="margin:auto; width:50%; text-align:center; border-bottom:1px solid gray; font-family:cinzel;">
        	<h1>STUDY MEMBER</h1>
        </div><br>
        
        <div style="width:80%; text-align: center; margin:auto; margin-left:10%; background:white; padding:15px;
         box-shadow: 0 2px 2px -1px rgba(0,0,0,.15); word-wrap: break-word; min-height: 900px; overflow:hidden;" id="thishe">
        	<div style="width:100%;padding:19px; border-radius:4px;">
        		
        		<div style="width:100%;margin-right:-10px; margin-left:-10px; padding:20px 0; float:left;">
        			<h4 style="font-size:18px; float:left; font-family: 'Nanum Gothic', sans-serif; font-weight:bold;">스터디 매니저</h4>
        			
        			<div style="flot:left; width:100%; min-height:150px; padding:10px; position:relative; padding-right:10px;padding-left:10px; text-align:center; border-radius:50px;">
        				<c:forEach var="i" begin="0" end="${ userList.size() - 1 }">
        					<c:if test="${ userList.get(i).refId eq ornerId }">
        						<div style="width:200px; float:left; padding:20px; ">
	        						<img class="classprofileimg" src="${ contextPath }/resources/profileimg/${ userList.get(i).changeName }" style="width:150px; height:150px; ">
	        						<span>
	        							<c:forEach var="t" begin="0" end="${ allMember.size() - 1 }">
        									<c:if test="${ ornerId eq allMember.get(t).mId }">
        										<span>${ allMember.get(t).nickname }</span>		
        									</c:if>
        								</c:forEach>
	        						</span>
        						</div>
        					</c:if>
        				</c:forEach>
        			</div>
        		</div>
        		
        		<div style="margin-right:-10px; margin-left:-10px; padding:20px 0; float:left; width:100%;">
        			<h4 style="font-size:18px; float:left; font-family: 'Nanum Gothic', sans-serif; font-weight:bold;">스터디 구성원 ${ cmList.size() - 1 }</h4>
        			<br>
        			<div style="flot:left; width:100%; min-height:500px; padding:10px; position:relative; padding-right:10px;padding-left:10px; text-align:center; border-radius:50px;">
        				<c:forEach var="i" begin="0" end="${ cmList.size() - 1 }">
        					<c:forEach var="j" begin="0" end="${ userList.size() - 1 }">
        						<c:if test="${ cmList.get(i).id eq userList.get(j).refId && ornerId ne cmList.get(i).id }">
        							<div style="width: 30%; margin-left:3%; float:left; padding:20px;">
		        						<img class="classprofileimg" src="${ contextPath }/resources/profileimg/${ userList.get(j).changeName }" style="width:150px; height:150px; ">
		        						<br>
	        								<c:forEach var="t" begin="0" end="${ allMember.size() - 1 }">
	        									<c:if test="${ userList.get(j).refId eq allMember.get(t).mId }">
	        										<span>${ allMember.get(t).nickname }</span>		
	        									</c:if>
	        								</c:forEach>
	        						</div>
        						</c:if>
        					</c:forEach>
        				</c:forEach>
        			</div>
        		</div>
        	</div>
        </div>
        
    </div>
</body>
</html>