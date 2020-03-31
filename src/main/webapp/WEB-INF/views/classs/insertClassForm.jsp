<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String realday = sdf.format(today);
	%>
	
	

	<!-- 스와이프 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script> 
    

</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="../classs/summerNote.jsp" />
	<jsp:include page="../classs/fontStore.jsp"/>
	
	<form action="insertClass.do" method="post" enctype="multipart/form-data">
	<div style="background: #ebebeb;" style="height:100vhs">
    <div class="outer" style="width: 800px; height:100vh; margin: 0 auto; padding: 30px 0 36px; background: white;">

        <!-- Insert 부분 1 -->

        <div style="color:#505050; font-size: 16pt;font-weight: 600; padding:15px;" id="page1_title">
        	<div style="display:table; border-radius:50px;  width:100px; height:100px; background:#5CD1E5;text-align:center; float:left;">
        		<p style="display:table-cell; vertical-align:middle; font-family: 'Staatliches', cursive; color:white; font-size:50px;">1</p>
        	</div>
        	<div style="border:1px solid #D4F4FA; float:left; width:30px; margin-top:50px;">
        	</div>
        	<div style="display:table; border-radius:50px;; width:100px; height:100px; background:#D4F4FA;text-align:center; float:left;">
        		<p style="display:table-cell; vertical-align:middle; font-family: 'Staatliches', cursive; color:white; font-size:50px;">2</p>
        	</div>
        	<div style="border:1px solid #D4F4FA; float:left; width:30px; margin-top:50px;"></div>
        	<div style="display:table; border-radius:50px;  width:100px; height:100px; background:#D4F4FA;text-align:center; float:left;">
        		<p style="display:table-cell; vertical-align:middle; font-family: 'Staatliches', cursive; color:white; font-size:50px;">3</p>
        	</div>
            <div style="width:100%; float:left; text-align:center; margin-top:15px;">
            	<p style="font-family:cinzel; font-size:30px;">STUDY IMAGE</p>
            </div>
        </div>

        <div style="text-align: center; position: relative; margin-top: 10px;" id="page1">

        <div style="text-align: center; position: relative; margin-top: 10px;">
                <div class="swiper-container swiper1" style="width:700px; height:360px; position: relative; top:30px; border: 1px solid gray; cursor: pointer;">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide" id="swiper1">
                            <!--<img src="${ contextPath }/resources/image//icon1.jpg" style="width:300px; height:300px"> -->
                            <img src="" style="max-width: 700px; height: 360px; cursor: pointer;" id="img_swiper1">
                        </div>
                        <div class="swiper-slide" id="swiper2">
                            <img src="" style="max-width: 700px; height: 360px; cursor: pointer;" id="img_swiper2">
                        </div>
                        <div class="swiper-slide" id="swiper3">
                            <img src="" style="max-width: 700px; height: 360px; cursor: pointer;" id="img_swiper3">
                        </div>
                    </div>
                
                    <!-- 네비게이션 버튼 -->
                    <div class="swiper-button-next" style="margin-top:0; right:0; width:40px; top:0; height:100%;"></div>
                    <!-- 다음 버튼 (오른쪽에 있는 버튼) -->
                    <div class="swiper-button-prev" style="margin-top:0; left:0; width:40px; top:0; height:100%;"></div>
                    <!-- 이전 버튼 -->
                
                    <!-- 페이징 -->
                    <div class="swiper-pagination"></div>
                </div>
        
                <input type="file" name="img1" id="img1" style="display:none;" onchange="inputimg(this,1);">
                <input type="file" name="img2" id="img2" style="display:none;" onchange="inputimg(this,2);">
                <input type="file" name="img3" id="img3" style="display:none;" onchange="inputimg(this,3);">
        
                <div style="text-align: center;  position: relative; padding:40px; font-family: 'Nanum Gothic', sans-serif;">이미지를 넣을곳을 클릭하여 이미지를 넣어주세요! <br> 이미지가 없으면 사이트에서 제공하는 이미지로 대체됩니다.</div>
        
        </div>

        
        <div style="float:left; position: absolute; width:800px; top:700px; left:300px;">
            <button type="button" class="btn btn-secondary" id="btn1">NEXT</button>
        </div>
        <!-- 혹시몰라1 -->
    </div>

        
    <!-- Insert 부분 2 -->
    
  <div style="color:#505050; font-size: 16pt;font-weight: 600;  height:180px; padding:15px; display: none;" id="page2_title">
		<div style="display: table; border-radius: 50px; width: 100px; height: 100px; background: #D4F4FA; text-align: center; float: left;">
			<p style="display: table-cell; vertical-align: middle; font-family: 'Staatliches', cursive; color: white; font-size: 50px;">1</p>
		</div>
		<div style="border: 1px solid #D4F4FA; float: left; width: 30px; margin-top: 50px;">
		</div>
		<div style="display: table; border-radius: 50px;; width: 100px; height: 100px; background: #5CD1E5; text-align: center; float: left;">
			<p style="display: table-cell; vertical-align: middle; font-family: 'Staatliches', cursive; color: white; font-size: 50px;">2</p>
		</div>
		<div style="border: 1px solid #D4F4FA; float: left; width: 30px; margin-top: 50px;"></div>
		<div style="display: table; border-radius: 50px; width: 100px; height: 100px; background: #D4F4FA; text-align: center; float: left;">
			<p style="display: table-cell; vertical-align: middle; font-family: 'Staatliches', cursive; color: white; font-size: 50px;">3</p>
		</div>
		<div style="width: 100%; float: left; text-align: center; margin-top: 15px;">
			<p style="font-family: cinzel; font-size: 30px;">STUDY DETAIL</p>
		</div>
	</div>
    <div style="width:100%; text-align: center; position: relative; margin-top: 20px; display: none;" id="page2"> 
        <div style=" font-size: 22pt; width: 800px; height:50px;position: relative;">
            <span style="position:absolute; left:80px; top:30px; font-size:11pt; color:#787878;">TITLE</span>
            <input type="text" name="title" id="title" maxlength="40" style="border:none; border-bottom: 1px solid gray; position:absolute; left: 200px; top: 20px; font-size:16pt; width: 500px; height: 30px; font-size:12px;">
        </div>

        <div style=" font-size: 22pt; width: 800px; height:50px; position: relative;">
            <span style="position:absolute; left:80px; top:30px; font-size:11pt; color:#787878;">TYPE</span>
            <!-- <input type="text" name="" id="" style="border:none; border-bottom: 1px solid gray; position:absolute; left: 200px; top: 15px; font-size:16pt;"> -->
            <input type="text" name="cateId" id="cateId" style="display:none;" value="no">
            
            <!--  셀렉트 체크시 cateId에 밸류값 넘어가도록 -->
            <script>
            	$(function(){
            		$("#inputGroupSelect03").change(function(){
            			var value = $("#inputGroupSelect03 option:selected").val();
            			$("#cateId").val(value);
            		});
            	});
            </script>
            
            <div class="input-group mb-3" style="width:200px; position: absolute; top:20px; left:200px;">
                <select class="custom-select" id="inputGroupSelect03"
                 style="border: none; border-bottom: 1px solid gray; width:200px; height: 30px; font-size:10pt; border-radius: 0px;">
                  <option selected></option>
                  <option value="1">TOEIC</option>
                  <option value="2">TOEFL</option>
                  <option value="3">TEPS</option>
                  <option value="4">G-TELP</option>
                  <option value="5">FLEX</option>
                  <option value="6">중등</option>
                  <option value="7">고등</option>
                  <option value="8">수능</option>
                  <option value="9">9급 공무원 시험</option>
                  <option value="10">경찰공무원 영어 시험</option>
                  <option value="11">편입</option>
                  <option value="12">프로그래머</option>
                  <option value="13">기타</option>
                </select>
            </div>
        </div>

        <div style=" font-size: 22pt; width: 800px; height:50px; position: relative;">
            <span style="position:absolute; left:80px; top:30px; font-size:11pt; color:#787878;">LEVEL</span>
            <!-- <input type="text" name="" id="" style="border:none; border-bottom: 1px solid gray; position:absolute; left: 200px; top: 15px; font-size:16pt;"> -->
            <div class="input-group mb-3" style="width:200px; position: absolute; top:20px; left:200px;">
            	
            <input type="text" name="level" id="level" style="display:none;" value="no">
            <!--  셀렉트 체크시 cateId에 밸류값 넘어가도록 -->
            <script>
            	$(function(){
            		$("#inputGroupSelect02").change(function(){
            			var value = $("#inputGroupSelect02 option:selected").text();
            			$("#level").val(value);
            		});
            	});
            </script>
            
                <select class="custom-select" id="inputGroupSelect02"
                 style="border: none; border-bottom: 1px solid gray; width:200px; height: 30px; font-size:10pt; border-radius: 0px;">
                  <option selected></option>
                  <option value="1">Beginner</option>
                  <option value="2">Normal</option>
                  <option value="3">Expert</option>
                </select>
            </div>
        </div>
           <!-- 오프라인 메뉴 -->

            <div style=" font-size: 22pt; width: 600px; height:70px; position: relative; border-bottom:1px solid #dcdcdc; margin:auto; text-align:center;">
                <label style="position:absolute; left:80px; top:30px; font-size:11pt; color:#787878;" for="online">ONLINE</label>
                <input type="radio" name="onoff" id="online" value="온라인" style="position: absolute; left: 150px; top:35px;">

                <label style="position:absolute; left:250px; top:30px; font-size:11pt; color:#787878;" for="offline">OFFLINE</label>
                <input type="radio" name="onoff" id="offline" value="오프라인" style="position: absolute; left: 340px; top:35px;">
            </div> 


        <div id="off" style="display:none;">
            <div style="float:left; font-size: 22pt; width: 800px; height:50px;position: relative;  margin-top:15px;">
                <span style="position:absolute; left:80px; top:30px; font-size:11pt; color:#787878;">AREA</span>
                <input type="text" name="local" value="" id="local" placeholder="ex) 강남" style="border:none; border-bottom: 1px solid gray; position:absolute; left: 200px; top: 20px; font-size:16pt; width: 200px; height: 30px; font-size:12px;">

                <span style="position:absolute; left:450px; top:30px; font-size:11pt; color:#787878;">정원</span>
                <input type="number" value="1000" name="memberCount" id="memberCount" min="0" style="border:none; border-bottom: 1px solid gray; position:absolute; left: 550px; top: 20px; font-size:16pt; width: 50px; height: 30px; font-size:12px;">
            </div>

            

            <div style="float:left; font-size: 22pt; width: 800px; height:50px;position: relative;">
               <%--  <span style="position:absolute; left:80px; top:30px; font-size:11pt; color:#787878;">시작일</span>
                <input type="date" name="startday" id="startday" min="<%= realday %>"  style="border:none; border-bottom: 1px solid gray; position:absolute; left: 200px; top: 20px; font-size:14pt; width: 200px; height: 30px; font-size:12px;">
                <span style="position:absolute; left:450px; top:30px; font-size:11pt; color:#787878;">종료일</span>
                <input type="date" name="endday" id="endday" style="border:none; border-bottom: 1px solid gray; position:absolute; left: 550px; top: 20px; font-size:14pt; width: 200px; height: 30px; font-size:12px;" disabled> --%>
                <input type="text" name="schedule" id="schedule" style="display:none;" value="" >
                <!--  
                시작일 끝나는일  스트링 합치기
                <script>
                	var schedule;
                	
                	$(function(){
                		$("#startday").change(function(){
                			var sday = $(this).val();
                			var y = sday.split("-")[0];
                			var m = sday.split("-")[1];
                			var d = sday.split("-")[2];
                			var day = y + "년 " + m + "월 " + d + "일";
                			schedule = day;
                			$("#endday").removeAttr("disabled");
                			document.getElementById("endday").min = sday;
                			
                		});
                		
                		$("#endday").change(function(){
                			var sday = $(this).val();
                			var y = sday.split("-")[0];
                			var m = sday.split("-")[1];
                			var d = sday.split("-")[2];
                			var day = y + "년 " + m + "월 " + d + "일";
                			schedule += " - " + day;
                			$("#schedule").val(schedule);
                		});
                	});
                </script> -->
                
            </div>

            <div style="float:left; font-size: 22pt; width: 800px; height:50px;position: relative; padding : 40px;">
               <!--  <span style="position:absolute; left:80px; top:30px; font-size:11pt; color:#787878;">시간</span>
                <input type="text" name="time" id="time" value="" placeholder="ex)16:00 - 18:00" style="border:none; border-bottom: 1px solid gray; position:absolute; left: 200px; top: 20px; font-size:12px; width: 200px; height: 30px;"> -->
            </div>
        </div>


        <!--<div style="float:left; position: relative; width:800px; margin-top:100px;">-->
        <div style="float:left; position: absolute;  width:800px; top:540px; left:250px;">
            <button type="button" class="btn btn-secondary" id="btn2">PREVIOUS</button>
            <button type="button" class="btn btn-secondary" id="btn3">NEXT</button>
        </div>
    </div>
<!-- 여기까지 2 -->


    <!-- Insert 부분 3 -->
    <div style="color:#505050; font-size: 16pt; font-weight: 600; padding:15px; display: none;" id="page3_title">
		<div style="display: table; border-radius: 50px; width: 100px; height: 100px; background: #D4F4FA; text-align: center; float: left;">
			<p style="display: table-cell; vertical-align: middle; font-family: 'Staatliches', cursive; color: white; font-size: 50px;">1</p>
		</div>
		<div style="border: 1px solid #D4F4FA; float: left; width: 30px; margin-top: 50px;">
		</div>
		<div style="display: table; border-radius: 50px;; width: 100px; height: 100px; background: #D4F4FA; text-align: center; float: left;">
			<p style="display: table-cell; vertical-align: middle; font-family: 'Staatliches', cursive; color: white; font-size: 50px;">2</p>
		</div>
		<div style="border: 1px solid #D4F4FA; float: left; width: 30px; margin-top: 50px;"></div>
		<div style="display: table; border-radius: 50px; width: 100px; height: 100px; background: #5CD1E5; text-align: center; float: left;">
			<p style="display: table-cell; vertical-align: middle; font-family: 'Staatliches', cursive; color: white; font-size: 50px;">3</p>
		</div>
		<div style="width: 100%; float: left; text-align: center; margin-top: 15px;">
			<p style="font-family: cinzel; font-size: 30px;">STUDY INTRODUCE</p>
		</div>
    </div>
    <div style="text-align: center; position: relative; margin-top: 20px; display: none;" id="page3">
        

        
        <!-- 썸머 노트 -->
        <div style="float:left; position: relative; height:600px; width:100px; margin-top:20px;">
            <div>
                <textarea name="comment" id="summernote"></textarea>
            </div>
        </div>

        <!-- <div style="float:left; position: relative; width:800px; margin-top:100px;"> -->
        <div style="float:left; position: absolute;  width:800px; top:690px; left:250px;">
            <button type="button" class="btn btn-secondary" id="btn4">PREVIOUS</button>
            <button type="submit" class="btn btn-secondary" id="btn5">완료</button>
        </div>
    </div>

            
        <!-- insert 끝-->
        </div>


          <!-- 스와이퍼 부분 -->
        <!-- 스크립트 -->
        <script>
            $(function(){
                new Swiper('.swiper1', {
                    loop : true, // 반복
                    pagination : { // 페이징 설정
                    el : '.swiper-pagination',
                    clickable : true,
                    },
                    navigation : { // 네비게이션 설정
                    nextEl : '.swiper-button-next', // 다음 버튼 클래스명
                    prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
                    },
                });
            });
        </script>
        <script>
            $(function(){
                $("#swiper1").click(function(){
                    console.log("1 클릭");
                    $("#img1").click();
                });
                $("#swiper2").click(function(){
                    console.log("2 클릭");
                    $("#img2").click();
                });
                $("#swiper3").click(function(){
                    console.log("3 클릭");
                    $("#img3").click();
                });
            });

            function inputimg(input,index){
                if(input.files && input.files[0]){
                    var reader = new FileReader();

                    reader.onload = function(e){
                        if(index == 1){
                            $("#img_swiper1").attr('src',e.target.result);
                        }else if(index == 2){
                            $("#img_swiper2").attr('src',e.target.result);
                        }else{
                            $("#img_swiper3").attr('src',e.target.result);
                        }
                    };
                    reader.readAsDataURL(input.files[0]);
                }
            }
        </script>

        <!-- 오프라인 온라인 항목 스크립트 -->
        <script>
            $(function(){
                $("#offline").click(function(){
                    $("#off").css("display","block");
                });

                $("#online").click(function(){
                    $("#off").css("display","none");
                });
            });
        </script>

        <!-- 썸머 노트 -->
        <script>
        /* $(document).ready(function() {
            $('#summernote').summernote({
                    height: 500,                 // set editor height
                    width: 800,
                    minHeight: null,             // set minimum height of editor
                    maxHeight: null,             // set maximum height of editor
                    focus: true                  // set focus to editable area after initializing summernote
            });
       }); */
		$("#summernote")
		.summernote(
				{
					"height" : 400,
					"width" : "800px",
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
					
					"placeholder" : "클래스 소개를 작성해주세요"
				});
        </script>

        <!-- 페이징 -->
        <script>
            $("#btn1").click(function(){
                $("#page1").css("display","none");
                $("#page1_title").css("display","none");
                $("#page2").css("display","block");
                $("#page2_title").css("display","block");
            });
            $("#btn2").click(function(){
                $("#page1").css("display","block");
                $("#page1_title").css("display","block");
                $("#page2").css("display","none");
                $("#page2_title").css("display","none");
            });
            // 2번쨰 페이지에서 넘어가기 클릭시
            $("#btn3").click(function(){
            	if($("#title").val() == ""){
            		alert("제목을 입력하세요.");
            	}else if($("#cateId").val() == "no"){
            		alert("목적을 선택하세요.");
            	}else if($("#level").val() == "no"){
            		alert("레벨을 선택하세요.");
            	}else if(!($("input:radio[name='onoff']").is(":checked"))){
            		alert("온라인 / 오프라인 선택을 해주세요.");
            	}else if($("#offline").is(":checked")){
            		if($("#local").val() == ""){
            			alert("지역을 입력해주세요");
            		}else if($("#memberCount").val() == ""){
            			alert("정원을 입력해주세요.");
            		}else{
            			$("#page2").css("display","none");
    	                $("#page2_title").css("display","none");
    	                $("#page3").css("display","block");
    	                $("#page3_title").css("display","block");
            		}
            	}else{
	                $("#page2").css("display","none");
	                $("#page2_title").css("display","none");
	                $("#page3").css("display","block");
	                $("#page3_title").css("display","block");
            	}
            });
            $("#btn4").click(function(){
                $("#page2").css("display","block");
                $("#page2_title").css("display","block");
                $("#page3").css("display","none");
                $("#page3_title").css("display","none");
            });
            
        </script>
        
        

    
    </div>
</form>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>