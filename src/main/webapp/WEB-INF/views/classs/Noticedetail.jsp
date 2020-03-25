<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fnc" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/97134254f3.js" crossorigin="anonymous"></script>
<style>

	.aa:hover{
		color:red;
	}
	.aa{
		color:black;
	}
	
	
   .imotion {
    background: #f3f3f3;
    float: right;
   }
   
   .imotion div {
    position: relative;
    display: inline-block;
    border: 1px solid #d8d8d8;
    margin-right: 10px;
}
   
   .arrow_box {
  display: none;
  position: absolute;
  width: 100px;
  padding: 8px;
  left: 0;
  top:40px;
  -webkit-border-radius: 8px;
  -moz-border-radius: 8px;  
  border-radius: 8px;
  background: #333;
  color: #fff;
  font-size: 14px;
  text-align:center;
  margin-left: -35px;
  margin-top: 3px;
}

.arrow_box:after {
  position: absolute;
  bottom: 100%;
  left: 50%;
  width: 0;
  height: 0;
  margin-left: -10px;
  border: solid transparent;
  border-color: rgba(51, 51, 51, 0);
  border-bottom-color: #333;
  border-width: 10px;
  pointer-events: none;
  content: " ";
}

.imo {
	display: block;
	cursor: pointer;
}

.imo:hover + p.arrow_box {
  display: block;
}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="../common/classSideMenubar.jsp"/>
	<jsp:include page="../classs/fontStore.jsp"/>
	
	<div style="margin-top :4vh; margin-left: 4vw; width:70%; height:800px; float: left;  position: relative;">
    	<div style="margin:auto; width:50%; text-align:center; border-bottom:1px solid gray; font-family:cinzel;">
        <h1>NOTICE</h1>
        </div><br>
        <div style="border-bottom:3px solid gray; width:70%; margin:auto;"></div>
        <div style="margin:auto; width:70%; height:50px;">
        	<span style="float:left;margin-left:20px; font-weight:bold; margin-top:10px;">${ notice.title }</span>
			<span style="float:right; margin-top:10px;">${ notice.createDate }</span>
			<span style="float:right;margin-top:10px; font-weight:bold">DATE &nbsp; &nbsp;&nbsp;&nbsp;</span>
        </div>
        <div style="width:70%; border-top:1px solid black;margin:auto;">
	        <span style="float:right; margin-top:10px;">${ notice.views }</span>
            <span style="float:right; margin-top:10px; font-weight:bold;">조회수 &nbsp;&nbsp;</span>
			<span style="float:right; margin-top:10px;">${ notice.id }&nbsp;&nbsp;</span>
        	<span style="float:right; margin-top:10px; font-weight:bold;">작성자 &nbsp;&nbsp; </span>
        	<br><br>
        	<span>${ notice.content }</span>
        	<br><br><br><br>
        	
        	
        <c:forEach var="item" items="${ cnaList }" varStatus="status">
         	<c:if test="${item.cnid eq notice.cnid && item.cnid ne cnaList[0].cnid}">
         		<hr class="line3" style="margin-bottom: -1px;">
               <c:url var="nextBoard" value="detailNotice.do">
                  <c:param name="cnid" value="${cnaList[status.index-1].cnid}"/>
                  <c:param name="cNo" value="${cNo}"/>
               </c:url>
               <a href="${nextBoard}" class="aa"><i class="fas fa-caret-up"></i>&nbsp;다음글 : ${cnaList[status.index-1].title}</a>
               <hr class="line3" style="margin-top: -1px; margin-bottom: -1px;">
            </c:if>
            <c:if test="${item.cnid eq notice.cnid && item.cnid ne cnaList[fnc:length(cnaList)-1].cnid}">
               <c:url var="prevBoard" value="detailNotice.do">
                  <c:param name="cnid" value="${cnaList[status.index+1].cnid}"/>
                 <c:param name="cNo" value="${cNo}"/>
               </c:url>
               <a href="${prevBoard}"  class="aa"><i class="fas fa-caret-up fa-rotate-180"></i>&nbsp;이전글 : ${cnaList[status.index+1].title}</a>
               <hr class="line3" style="margin-top: -1px;">
            </c:if>
         </c:forEach>
        </div>       
        
      <div class="goList" style="width:70%; margin:auto; ">
      <button class="btn btn-secondary" onclick="location.href='classNoticeView.do?cNo=${ cNo }'" style="float:right; margin-left:20px;">목록으로</button>
      	<c:if test="${ notice.id eq loginMember.mId }">
      		<div class="imotion">
				<div>      		
		      		<i class="fas fa-exchange-alt imo" style="font-size: 30px; float:right;" id="updateNotice"></i>
			        <p class="arrow_box">수정하기</p>
		        </div>
		        
		        <div>
			        <i class="fas fa-trash-alt imo" style="font-size: 30px; float:right;" id="deleteNotice"></i>
			        <p class="arrow_box">삭제하기</p>
		        </div>
	        </div>
	    
         	<!-- <button class="btn btn-secondary" id="deleteNotice" style="float:right; margin-left:10px;">삭제하기</button>	
         	<button class="btn btn-secondary" id="updateNotice" style="float:right; margin-left:10px;">수정하기</button> -->
         </c:if>
         <!-- <script>
         	$(function(){
         		$(".imo").click(function(){
         			var div = $(this);
         			var divX = div.offset().left;
         			var divY = div.offset().top;
         			
         			alert(divX);
         			alert(divY);
         		});
         	});
         </script> -->
         
         
      </div><br><br>
      
      <div class="replyContent" style="width:70%; margin:auto;">
         <!-- 댓글 -->
         <div class="replyCount"></div>
         <hr class="line3">
         
         <!-- 댓글 작성 -->
         <div>
            <div class="textarea">
               <c:if test="${ empty sessionScope.loginMember }">
                  <textarea placeholder="로그인 후에 이용 가능합니다" readonly></textarea>
               </c:if>
               <c:if test="${ !empty sessionScope.loginMember }">
                  <textarea placeholder="깨끗한 댓글 문화를 지켜주세요. &#13;&#10;지나친 비방, 광고 댓글은 예고없이 삭제될 수 있습니다," 
                     id="textarea" name="content" style="width:100%; height:100px;"></textarea><br>
                  <button class="btn btn-secondary" id="replyInsert" onclick="replyInsertFunc();" style="float:right;">작성</button><br><br>
               </c:if>
            </div>
         </div>
         
         <!-- 댓글 리스트 -->
         <table id="replyTable">
         </table>
         
         </div>
         
         <button value="${ notice.cnid }" id="cnid" style="display:none;"></button>
                  <button value="${ loginMember.mId }" id="mid" style="display:none;"></button>
                  <button value="${ cNo }" id="cNo" style="display:none;"></button>
         
    </div>
    
    
    <script>
    	$(function(){
    		$("#deleteNotice").click(function(){
    			if(confirm("해당 게시글을 삭제하시겠습니까?")){
    				var cnid = $("#cnid").val();
    				var cNo = $("#cNo").val();
    				location.href="deleteNotice.do?cnid="+cnid+"&cNo="+cNo;
    			}
    		});
    		$("#updateNotice").click(function(){
    			if(confirm("해당 게시글을 수정하시겠습니까?")){
    				var cnid = $("#cnid").val();
    				var cNo = $("#cNo").val();
    				location.href="goupdateNotice.do?cnid="+cnid+"&cNo="+cNo;
    			}
    		});
    	});
    </script>
    
    
    <script type="text/javascript">
            window.onload = function() {
               getReplyList();
               
               setInterval(getReplyList(), 5000);
            }
            
             function replyInsertFunc() {
            	var cnid = $("#cnid").val();
               var referId = "${sessionScope.loginMember.mId}";
               var referNickname = "${sessionScope.loginMember.nickname}";
               var content = document.getElementById('textarea').value;
               
               $.ajax({
                  url: "insertNoticeReply.do",
                  data: {cnid:cnid, referId:referId, 
                     referNickname:referNickname, content:content},
                  type: "POST",
                  success: function(data) {
                     if(data == 'success') {
                        getReplyList();
                        replyInsert.value = "";
                        $("#textarea").val("");
                     }
                  },
                  error: function(data) {
                     console.log("댓글 삽입 오류!");
                  }
               });
            } 
            
            function getReplyList() {

               var cnid = $("#cnid").val();
               $.ajax({
                  url: "selectClassNoticeReplyList.do",
                  data: {cnid:cnid},
                  dataType: "json",
                  success: function(data) {
                     $tableBody = $("#replyTable");
                     $tableBody.html("");
                     
                     $(".replyCount").text("댓글 " + data.length + "개");
                     
                     if(data.length > 0){
                        for(var i in data){
                           var $tr = $("<tr>");
                           var $form = $("<form action='deleteNoticeReply.do' method='POST'>");
                           var $tWriter = $("<td width='50'>").html("<div class='tdContent2'>" + data[i].writerNickname + "</div>");
                           var $tContent = $("<td width='1130'>").html("<div class='tdContent1'>" + data[i].content + "</div> " + 
                                 "<div class='tdContent2'>" + data[i].createDate + "</div>");
                           var memberId = "${sessionScope.loginMember.mId}";
                           if(${!empty sessionScope.loginMember} && (data[i].writerId == memberId || memberId == 'admin')) { 
                              var $deleteBtn = $("<td width='10'>").html("<div class='tdContent2'><button class='button" + i + "' onclick='deleteReply(" + data[i].rId + ", " + '"' + data[i].writerId + '"' + ");'>X</button></div>");                              
                           }
                           var $hr = document.createElement("hr");         
                           var rId = $();
                           
                           $hr.className = "line4";
                           
                           $tr.append($tContent);
                           $tr.append($tWriter);
                           if(data[i].writerId == memberId || memberId == 'admin') {
                              $tr.append($deleteBtn);
                           }
                           $tr.append(rId);
   
                           $tableBody.append($tr);
                           $tableBody.append($hr);
                        }
                     }else{
                        // 댓글이 등록되지 않았을 때
                        var $tr = $("<tr>");
                        var $rContent = $("<td colspan='3'>").text("등록 된 댓글이 없습니다.");
                        $tr.append($tContent);
                        $tableBody.append($tr);
                     }
                  },
                  error: function() {
                     console.log("실패!");
                  }
               });
            }
            
             function deleteReply(i, referId) {
              var cnid = $("#cnid").val();
               var memberId = $("#mid").val();
               var cNo = $("#cNo").val();
               console.log(referId);
               
               if(memberId == referId || memberId == 'admin') {
                  location.href="deleteNoticeReply.do?rId="+i+"&cnid="+cnid+"&cNo="+cNo;   
               }else {
                  
               }
               
            } 
         </script>
</body>
</html>