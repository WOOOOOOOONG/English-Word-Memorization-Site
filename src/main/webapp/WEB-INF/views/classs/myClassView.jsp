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
        	margin:10px;
        	background:white;
        	float:left;
        	font-family: 'Nanum Gothic', sans-serif;
        	border-radius:5px;
        }
        .titleSpan{
        	width:290px;
        	padding:0px 0px 0px 10px;
        	font-size:22px;
        	font-weight:bold;
        	overflow:hidden;
        	white-space:nowrap;
        	text-overflow: ellipsis;
        }
        .vocaSpan{
        	color:#d9d9d9;
        	padding: 0px 0px 0px 10px;
        	width:290px;
        	border-bottom:1px solid gray;
        	border:1px solid red;
        	margin-top:10px;
        }
        .novoca{
        	text-align:center;
        	font-family: 'Nanum Gothic', sans-serif;
        	margin:auto;
        }
    

    </style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="../common/classSideMenubar.jsp"/>
	<jsp:include page="../classs/fontStore.jsp"/>
	<jsp:include page="../classs/emoticion.jsp"/>
	
	<input type="text" value="${ classs.cNo }" id="cNo" style="display:none;">
	
		
<div style="margin-top :4vh; margin-left: 4vw; width:70%; height:800px; float: left; overflow: auto; position: relative;">
   	<div style="margin:auto; width:50%; text-align:center; border-bottom:1px solid gray; font-family:cinzel;">
       	<h1>VOCA LIST</h1>
       </div><br>
       <div style=" width:100%; margin:auto; text-align:center;"><br>
       
       	<!-- <div class="spinner-border text-center" role="status"><span class="sr-only">Loading...</span></div> -->
       	<div class="b">
			(<span class="b-arm">╯</span>°□°）<span class="b-arm">╯</span> <span class="b-table">┻━┻</span> <span class="b-table">┻━┻</span> <span class="b-table">┻━┻</span> <span class="b-table">┻━┻</span>
			<br>
			┳━┳ &nbsp;&nbsp;&nbsp;&lt;<span class="b-wheel">⊗</span><span class="b-belt"><span class="b-realbelt">===============</span></span><span class="b-wheel">⊗</span>&gt;
		</div>
			
			
	</div>
	<div id="vocalist" style="width: 100%; display:none;">
	
	</div>
	<div id="list" style="width:100%;">
			
	</div>
	<button id="asd" style="display:none;"></button>
</div>
<script>
	$(function(){
		$("#asd").click(function(){
			var div = $("#list");
			if(turnturn){
				$('.b').hide();
				var count2 = $("#title" + (listCount-1)).attr('id').replace('title','');
				var count = count2 * 1;
				
				for(var i = count; i >= 1 ; i--){
					var title = $("#title" + i).val(); // 제목
					var vocaCount = $("#voca"+ i).val(); // 사이즈갯수
					
					div.append("<div class='voca'><div class='titleSpan'>"+ title +"</div><span class='vocaSpan'>" + vocaCount +" 단어</span></div>");
				}
			}else{
				div.append("<div class='novoca'>아직 존재하는 단어장이 없습니다.</div>");
				/* $('.spinner-border').hide(); */
				$('.b').hide();
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
                	//console.log(data);
                	turnturn = true;
                	var div = $("#vocalist");
                	
                	
                	var i = 1;
                	console.log("왔음");
                	console.log(data);
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
                   				//console.log(key); // 영어
                   				//console.log(obj2[key]);// 한글
                   			}
                   			var input = "<input type='text' value='"+vocaItemCount + "' id='voca" + (vocaCount++) + "'>";
                   			div.append(input);
                   			vocaItemCount = 0;
                   		}
                   		i++;
                	}
                   	/* $('.spinner-border').hide(); */
                   	
                },
                error : function() {
                   console.log("error has occured retriving data from MongoServer")
                }
             });
         }
      </script>

</body>
</html>