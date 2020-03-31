<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<jsp:include page="../classs/fontStore.jsp"/>
	<jsp:include page="../classs/summerNote.jsp"/>
	
	<form action='classNoticeInsert.do' method='POST'>
		 <div style="margin-top :4vh; margin-left: 4vw; width:70%; height:800px; float: left; overflow: auto; position: relative;">
	    	<div style="margin:auto; width:50%; text-align:center; border-bottom:1px solid gray; font-family:cinzel;">
	        <h1>NOTICE WRITE</h1>
	        </div><br>
	        <div style="border-bottom:3px solid gray; width:70%; margin:auto;"></div>
	        <div style="margin:auto; width:70%; height:50px;">
	        	<span style="float:left; padding:5px; margin-left:20px; margin-top:10px;">제목 :  &nbsp; &nbsp; &nbsp; </span>
	        	<input type="text" class="form-control" style="width:600px; float:left; margin-top:10px;" name="title" id="title">
	        </div>
	        <div style="width:70%; border-top:1px solid black;margin:auto; margin-top:10px;">
	        	<textarea class="summerNote" id="summernote" name="content" style="padding:10px;"></textarea>
	        </div>
	        <div style="margin:auto; text-align:center; padding:20px;">
	        	<button type="button" class="btn btn-secondary" id="cok">취소</button>
	        	<button type="button" class="btn btn-secondary" id="ok">확인</button>
	        	<button type="submit" style="display:none" id="sub"></button>
	        	<input type="text" id="cNo" name="cNo" value="${ cNo }" style="display:none;">
	        </div>
	     </div>
     </form>
	<script>
		$(function(){
			$("#cok").click(function(){
				var cNo = $("#cNo").val();
				location.href="classNoticeView.do?cNo=" + cNo;
			});
			
			$("#ok").click(function(){
				var title = $("#title").val();
				var content = $("#summernote").val();
				
				if(title == ""){
					alert("제목을 입력하지 않으셨습니다.");
				}else if(content == ""){
					alert("내용을 입력하지 않으셨습니다.");
				}else{
					$("#sub").click();
				}
			});
		});
	</script>
	
	
	<script>
	
	$("#summernote")
	.summernote(
			{
				"height" : 400,
				"width" : "950px",
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
				
				"placeholder" : "공지사항을 작성해 주세요."
			});
    </script>
</body>
</html>