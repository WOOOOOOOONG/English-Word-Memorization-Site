<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="../common/classSideMenubar.jsp"/>
	
	<button onclick="getData('CSID_45')">DD</button>
	<script>
	function getData(searchInput) {
	      var send = JSON.stringify({
	         'search' : searchInput
	      });

	      $
	            .ajax({
	               type : "POST",
	               dataType : "json",
	               contentType : "application/json; charset=utf-8",
	               data : send,
	               url : 'http://localhost:1222/getData',
	               success : function(data) {
	                  console.log(data);
	                  console.log(data.card_word[0].word_holder);
	               },
	               error : function() {
	                  console.log("error has occured retriving data from MongoServer")
	               }
	            });
	   }
	</script>
</body>
</html>