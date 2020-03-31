<%@page import="java.util.HashMap"%>
<%@page import="com.kh.spring.classs.model.vo.ClassMember"%>
<%@page import="java.util.Map"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fnc" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
<title>Insert title here</title>

<style>
        
        .voca{
        	width:300px;
        	height:140px;
        	cursor:pointer;
        	padding:4px;
        	background:white;
        	float:left;
        	font-family: 'Nanum Gothic', sans-serif;
        	border-radius:5px;
        	margin: 20px 15px 20px 15px ;
        }
        .titleSpan{
        	width:290px;
        	padding:0px 0px 0px 10px;
        	font-size:22px;
        	font-weight:bold;
        	overflow:hidden;
        	white-space:nowrap;
        	text-overflow: ellipsis;
        	font-family: 'Jua', sans-serif;
        }
        .vocaSpan{
        	color:#d9d9d9;
        	padding: 0px 0px 0px 10px;
        	width:290px;
        	margin-top:10px;
        	font-family: 'Jua', sans-serif;
        }
        .novoca{
        	text-align:center;
        	font-family: 'Nanum Gothic', sans-serif;
        	margin:auto;
        }
        .row{
        	margin:auto;
        	width:100%;
        	text-align:center;
        	border-bottom:1px solid #dcdcdc;
        }
    	.name{
    		float:right;
    		margin-top:30px; 
    		margin: 30px 30px 30px 0;
    		font-family: 'Nanum Gothic', sans-serif;
    	}
    	.proimg{
    		width:60px;
    		height:60px;
    		border-radius:50px;
    		padding:5px;
    		margin-left:5px;
    	}

    </style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="../common/classSideMenubar.jsp"/>
	<jsp:include page="../classs/fontStore.jsp"/>
	<jsp:include page="../classs/emoticion.jsp"/>
	
	<%
	    Map<String,ClassMember> list = new HashMap<String,ClassMember>();
	    	
		pageContext.setAttribute("list", list);
	%>
	<c:forEach var="i" begin="0" end="${ cmList.size() - 1 }">
		<c:forEach var="j" begin="0" end="${ userList.size() - 1 }">
			<c:if test="${ cmList.get(i).id eq userList.get(j).refId }">
				<c:set target="${list}" property="${ cmList.get(i).id }" value="${ userList.get(j).changeName }"/>
			</c:if>
		</c:forEach>
	</c:forEach> 
	
	

	
	<input type="text" value="${ classs.cNo }" id="cNo" style="display:none;">
	
		
<div style="margin-top :4vh; margin-left: 4vw; width:70%; height:800px; float: left;  position: relative;">
   	<div style="margin:auto; width:50%; text-align:center; border-bottom:1px solid gray; font-family:cinzel;">
       	<h1>VOCA LIST</h1>
       </div><br>
       
       <div style="width: 100%; margin:auto;text-align:center;">
	       <div class="spinner-border text-center" role="status">
			  <span class="sr-only">Loading...</span>
			</div>
		</div>
       
       
       <div style="width:100%; height:50px; display:none;" id="createDiv">
       		<c:forEach var="i" begin="0" end="${ cmList.size() - 1 }">
       			<c:if test="${ loginMember.mId eq cmList.get(i).id && cmList.get(i).vRight eq 'Y'}">
       			   
       				<c:url var="goInsert" value="InsertClassVocaForm.do">
       					<c:param name="cNo" value="${ cNo }"/>
       				</c:url>
       				<button class="btn btn-secondary" style="float:right; margin:20px 30px 0 0;" onclick="location.href='${ goInsert}'">단어장 만들기</button>
       			</c:if>
       		</c:forEach>
       </div>
    <!--  로딩창 -->
    
       	
		       	
			
	
	<div id="vocalist" style="width: 100%; display:none; ">
	
	</div>
	
	
	<!--  단어장 나옴  -->
	<div id="list" style="width:100%;">
			
	</div>
	<button id="asd" style="display:none;"></button>
</div>

<% 
	int row = 4;
   int rowCount = 0;
%>
<script>
	$(function(){
		$("#asd").click(function(){
			var div = $("#list");
			$("#createDiv").css("display","block");
			$('.spinner-border').hide();
			if(turnturn){
				$('.b').hide();
				var count2 = $("#title" + (listCount-1)).attr('id').replace('title','');
				var count = count2 * 1;
				var rowCount = 0;
				var userName = $(".userName").val();
		
				var liss = "<%= list %>";
				var lissSplit = liss.split(',');
				var length = lissSplit.length;
				var changeName;
				
				var lastIndex = lissSplit[length-1];
				var InsertLast = lastIndex.substring(0,lastIndex.length - 1);
				
				lissSplit.pop(); // 마지막값 제거
				lissSplit.push(InsertLast);
				
				for(var i = count; i >= 1 ; i--){
					var title = $("#title" + i).val(); // 제목
					var vocaCount = $("#voca"+ i).val(); // 사이즈갯수
					var cid = $("#creator" + i).val(); // 만든사람
					
					if( rowCount % 4  == 0 && rowCount != 0 ){
						div.append("<div class='row'></div>");
					}
					
					// 체인지 사진
					for(var c = 0 ; c <= length-1; c++){
						if(lissSplit[c].search(cid) != -1){
							//console.log("이거 : " + lissSplit[c]);
							//console.log(lissSplit[c].indexOf(cid));
							
							var stringSize = cid.length; // 찾는 아이디의 사이즈
							var startIndex = lissSplit[c].indexOf(cid); // 찾기시작하는부분
							
							if(startIndex == 1){
								changeName = lissSplit[c].substring(stringSize+startIndex+1);
							}else if(startIndex == 0){
								changeName = lissSplit[c].substring(stringSize+startIndex);
							}
							
						}
					}
					
					div.append("<div class='voca'><div class='titleSpan'>"+ title +"</div><span class='vocaSpan'>" + (vocaCount - 1) +" 단어</span><img class='proimg' src='${ contextPath }/resources/profileimg/" +
							changeName  + "'><span class='name'>"+ cid + "</span></div>");
					rowCount++;
				}
			}else{
				div.append("<div class='novoca'>아직 존재하는 단어장이 없습니다.</div>");
				$('.spinner-border').hide();
				
			}
			
		});
	});
	
	setTimeout(function() {
		$("#asd").click();
	}, 4000);
</script>

<script>
	var listCount = 1; // 단어장 번호
	
	var vocaCount = 1; // 단어 갯수 번호 
	var vocaItemCount = 0; // 단어  갯수
	var lastTitle;
	var turnturn = false;
	var creatorCount = 1;
	
	$(function(){
		var searchInput = $("#cNo").val();
		//getAllData(searchInput);
		
		// 클래스에 단어장이 있는지 없는지 확인
		var cflag = "true";
		var userID = $("#cNo").val();
	    var userName = "${ loginMember.mId }";
	    

	   
	      console.log("hello"); 
	      $.ajax(
	        {
	          type: "POST",
	          dataType: "json",
	          contentType: "application/json; charset=utf-8",
	          data: JSON.stringify( {userID : userID}),
	          url: 'http://192.168.10.13:1222/checkClass',
	          success: function (data) {
	            if(data.taco == "taco")
	            {
	            	// 단어장이 없으면 새로운 단어장을 생성한다.
	            	 $.ajax(
	           		      {
	           		        type: "POST",
	           		        dataType: "json",
	           		        contentType: "application/json; charset=utf-8",
	           		        data: JSON.stringify({
	                               userID: userID,
	                               userName: userName,
	                           }),
	           		        url: 'http://192.168.10.13:1222/createNewClass',
	           		        success: function (data) {
	           		        	
	           		        	// 단어장 리스트를 불러온다
	           		        	getAllData(searchInput);
	           		        },
	           		        error: function () {
	           		          alert("데이타베이스 연결에 실패하여씁니다!");
	           		          console.log("error has occured retriving data from MongoServer");
	           		        }
	           		      });
	            }
	            else
	            {	
	            	// 단어장이 이미 있으면..
	            	// 단어장 리스트를 불러온다.
	            	getAllData(searchInput);
	            }
	          },
	          error: function () {
	            alert("데이타베이스 연결에 실패하여씁니다!");
	            console.log("error has occured retriving data from MongoServer");
	          }
	        });
	    
	    

		var div = $("#list");
		// 여기서 부터 div
		
	});
     	
      	function getAllData(searchInput) {
      		 var send = JSON.stringify({
      	         'search' : searchInput
      	      });
     		console.log(searchInput);
             $.ajax({
                type : "POST",
                dataType : "json",
                contentType : "application/json; charset=utf-8",
                data : send,
                url : 'http://192.168.10.13:1222/getAllDataPlusUserName',
                success : function(data) { 
                	//console.log(data);
                	
                	var div = $("#vocalist");
                	
                	
                	var i = 1;
                	// 여기는 단어장만든사람 리스트가져오는 부분
                	
                	
                	var userInput = "<input type='text' class='userName' value ='" + data[0].username + "'>";
                	div.append(userInput);
                	
                	// 여기는 단어장 제목이랑 , 단어갯수 가져오는 부분
                	for(var key in data[1]){
                		var obj = data[1][key];
                		
	                   	for (var key in obj) {
	                   			
	                   		
	                   		var input2 = "<input type='text' class='titleCount' value='"+key + "' id='title" + (listCount++) + "'>";
	                   		div.append(input2);
	                   		lastTitle = input2;
	                   		
	                   		var obj2 = obj[key];
	                   		var seCount = 0;
	                   		
	                   		var creatorId = obj2[0]["creatorId"]; 
	                   		 //console.log(obj2[0]["creatorId"]); 얘가 아이디가져옴
	                   		 //console.log(creatorId);
                   			var input3 = "<input type='text' class='creatorId' value='"+ creatorId + "' id='creator" + (creatorCount++) + "'>";
                   			div.append(input3);
	                   		for(var key in obj2[0]){
	                   			// 여기는 단어 하나하나 나오는 부분임
	                   			seCount++;
	                   			turnturn = true;
	                   			
	                   		}
	                   		
	                   		var input = "<input type='text' value='"+seCount + "' id='voca" + (vocaCount++) + "'>";
                   			div.append(input);
                   			vocaItemCount = 0;
                   			seCount = 0;
	                	}
                	}
                   	/* $('.spinner-border').hide(); */
                   	 getCsid()
                   	
                },
                error : function() {
                   console.log("error has occured retriving data from MongoServer")
                }
             });
         }
      </script>
   <!--  csid 가져오기 -->
      <script>
      		function getCsid(){
      	
      		var searchInput = $("#cNo").val();
      		//var input = $("#csid");
      		var send = JSON.stringify({
   	         'search' : searchInput
	   	    });
      		$.ajax({
                type : "POST",
                dataType : "json",
                contentType : "application/json; charset=utf-8",
                data : send,
                url : 'http://192.168.10.13:1222/getClassCSID',
                success : function(data) {
                	 // input.val(data);
                	 var key = "csid";
                     var value = data;

                     sessionStorage.setItem(key, value);
                     //printSessionStorage();
                },
                error : function() {
                   console.log("error has occured retriving data from MongoServer")
                }
             });
      		}      	
      
      </script>
</body>
</html>