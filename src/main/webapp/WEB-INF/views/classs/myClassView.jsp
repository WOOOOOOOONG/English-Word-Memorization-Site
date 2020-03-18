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
        .setdiv
        {
            height:125px;
            width: 250px;
            background-color: aqua;
            margin:20px;
            display: inline-block;
        }
        .setdiv p
        {
            margin: 0;
        
        }

        .settitle
        {
            font-size:1.7em;
        }
        .setwordCount
        {
           
            margin-top: 3px;
            font-size: 0.7em;
        }
        .setuserid
        {
        
            margin-top: 27px;
            font-size: 1.1em;
        }

        .setcontainer
        {
            
            width:50%;
            height: 100%;
            display: inline-block;
        }
        .setimage
        {
            width:40%;
            height: 60%;
            float:right;
            display: none;
        }

        .setdiv:hover .hightlight
        {
            height:10px;
            background-color: rgb(251, 255, 0);
            position: relative;
        }
        .containertext
        {
            width:1500px;
            height:300px;

        }
    </style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="../common/classSideMenubar.jsp"/>
	<jsp:include page="../classs/fontStore.jsp"/>
	
	<input type="text" value="${ classs.cNo }" id="cNo" style="display:none;">
	
		
<div style="margin-top :4vh; margin-left: 4vw; width:70%; height:800px; float: left; overflow: auto; position: relative;">
   	<div style="margin:auto; width:50%; text-align:center; border-bottom:1px solid gray; font-family:cinzel;">
       	<h1>VOCA LIST</h1>
       </div><br>
       <div style=" width:100%; margin:auto; text-align:center;"><br>
       	<div class="spinner-border text-center" role="status"><span class="sr-only">Loading...</span></div>
	</div>
	<div id="vocalist" style="width: 100%; ">
	
	</div>
	<div id="list" style="width:100%;">
		
	</div>
	<button id="asd" style="display:none;"></button>
</div>
<script>
	$(function(){
		$("#asd").click(function(){
			var div = $("#list");
			var count2 = $("#title" + (listCount-1)).attr('id').replace('title','');
			var count = count2 * 1;
			
			for(var i = 0; i <= count; i++){
				
			}
			
/* 			for(int i = count ; i == 0; i-- ){
				alert(i);
			} */
			
			alert($(".titleCount").last().attr('id'));
			alert(lastTitle);
			
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
	
	$(function(){
		var searchInput = $("#cNo").val();
		getAllData(searchInput);
		
		var div = $("#list");
		// 여기서 부터 div
		
	});
     	// 시험문제 만들기 클릭시
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
                url : 'http://localhost:1222/getAllData',
                success : function(data) { 
                	console.log(data);
                	var div = $("#vocalist");
                	
                	
                	var i = 1;
                	console.log("왔음");
                   	for (var key in data) {
                   		//console.log("키 : " + key);
                   		var input2 = "<input type='text' class='titleCount' value='"+key + "' id='title" + (listCount++) + "'>";
                   		div.append(input2);
                   		lastTitle = input2;
                   		//div.append("<label><input type='checkbox' onchange='qwer(this);' id='chk" + i + "' value='" + key + "'>"+key+"</label><br>");
                   		var obj = data[key];
                   		for(var key in obj){
                   			
                   			var obj2 = obj[key];
                   			//console.log(obj[key]);
                   			for(var key in obj[key]){
                   				vocaItemCount++;
                   				console.log(key); // 영어
                   				console.log(obj2[key]);// 한글
                   			}
                   			var input = "<input type='text' value='"+vocaItemCount + "' id='voca" + (vocaCount++) + "'>";
                   			div.append(input);
                   			vocaItemCount = 0;
                   		}
                   		i++;
                	}
                   	$('.spinner-border').hide();
                },
                error : function() {
                   console.log("error has occured retriving data from MongoServer")
                }
             });
         }
      </script>

</body>
</html>