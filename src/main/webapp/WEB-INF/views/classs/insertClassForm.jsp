<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
	
	<!-- include summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script> 
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<div style="background: #ebebeb;" style="height:100vhs">
    <div class="outer" style="width: 800px; height:100vh; margin: 0 auto; padding: 30px 0 36px; background: white;">

        <!-- Insert 부분 1 -->

        <div style="color:#505050; font-size: 16pt; border-bottom: 1px solid #dcdcdc;font-weight: 600; padding:15px;" id="page1_title">
            1. 스터디 사진
        </div>

        <div style="text-align: center; position: relative; margin-top: 20px;" id="page1">

        

           

        <div style="text-align: center; position: relative; margin-top: 20px;">
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
                    <div class="swiper-button-next"></div>
                    <!-- 다음 버튼 (오른쪽에 있는 버튼) -->
                    <div class="swiper-button-prev"></div>
                    <!-- 이전 버튼 -->
                
                    <!-- 페이징 -->
                    <div class="swiper-pagination"></div>
                </div>
        
                <input type="file" name="img1" id="img1" style="display:none;" onchange="inputimg(this,1);">
                <input type="file" name="img2" id="img2" style="display:none;" onchange="inputimg(this,2);">
                <input type="file" name="img3" id="img3" style="display:none;" onchange="inputimg(this,3);">
        
                <div style="text-align: center;  position: relative; padding:40px;">이미지를 넣을곳을 클릭하여 이미지를 넣어주세요! <br> 이미지를 넣지 않으면 사이트에서 제공하는 이미지로 대체됩니다.</div>
        
        </div>

        
        <div style="float:left; position: absolute; width:800px; top:600px; left:200px;">
            <button type="button" class="btn btn-secondary" id="btn1">NEXT</button>
        </div>
        <!-- 혹시몰라1 -->
    </div>

        
    <!-- Insert 부분 2 -->
    
    <div style="color:#505050; font-size: 16pt; border-bottom: 1px solid #dcdcdc;font-weight: 600; padding:15px; display: none;" id="page2_title">
            2. 스터디 상세정보 입력
        </div>
    <div style="text-align: center; position: relative; margin-top: 20px; display: none;" id="page2">
        
        <div style="float:left; font-size: 22pt; width: 800px; height:50px;position: relative;">
            <span style="position:absolute; left:80px; top:30px; font-size:11pt; color:#787878;">스터디 제목</span>
            <input type="text" name="" id="" style="border:none; border-bottom: 1px solid gray; position:absolute; left: 200px; top: 20px; font-size:16pt; width: 200px; height: 30px;">
        </div>

        <div style="float:left; font-size: 22pt; width: 800px; height:50px; position: relative;">
            <span style="position:absolute; left:80px; top:30px; font-size:11pt; color:#787878;">목적</span>
            <!-- <input type="text" name="" id="" style="border:none; border-bottom: 1px solid gray; position:absolute; left: 200px; top: 15px; font-size:16pt;"> -->
            <div class="input-group mb-3" style="width:200px; position: absolute; top:20px; left:200px;">
                <select class="custom-select" id="inputGroupSelect02"
                 style="border: none; border-bottom: 1px solid gray; width:200px; height: 30px; font-size:10pt; border-radius: 0px;">
                  <option selected></option>
                  <option value="1">토익</option>
                  <option value="2">텝스</option>
                  <option value="3">일반 영어</option>
                  <option value="4">편입</option>
                  <option value="5">취업</option>
                  <option value="6">회화</option>
                  <option value="7">스피킹</option>
                  <option value="8">기타</option>
                </select>
            </div>
        </div>

        <div style="float:left; font-size: 22pt; width: 800px; height:50px; position: relative;">
            <span style="position:absolute; left:80px; top:30px; font-size:11pt; color:#787878;">레벨</span>
            <!-- <input type="text" name="" id="" style="border:none; border-bottom: 1px solid gray; position:absolute; left: 200px; top: 15px; font-size:16pt;"> -->
            <div class="input-group mb-3" style="width:200px; position: absolute; top:20px; left:200px;">
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

            <div style="float:left; font-size: 22pt; width: 800px; height:50px; position: relative;">
                <label style="position:absolute; left:80px; top:30px; font-size:11pt; color:#787878;" for="online">온라인</label>
                <input type="radio" name="onoff" id="online" value="온라인" style="position: absolute; left: 150px; top:35px;">

                <label style="position:absolute; left:250px; top:30px; font-size:11pt; color:#787878;" for="offline">오프라인</label>
                <input type="radio" name="onoff" id="offline" value="오프라인" style="position: absolute; left: 340px; top:35px;">
            </div> 


        <div id="off" style="display:none;">
            <div style="float:left; font-size: 22pt; width: 800px; height:50px;position: relative; border-top:1px solid #dcdcdc; margin-top:15px;">
                <span style="position:absolute; left:80px; top:30px; font-size:11pt; color:#787878;">지역</span>
                <input type="text" name="" id="" placeholder="ex) 강남" style="border:none; border-bottom: 1px solid gray; position:absolute; left: 200px; top: 20px; font-size:16pt; width: 200px; height: 30px;">

                <span style="position:absolute; left:450px; top:30px; font-size:11pt; color:#787878;">인원</span>
                <input type="number" name="" id="" min="0"; style="border:none; border-bottom: 1px solid gray; position:absolute; left: 550px; top: 20px; font-size:16pt; width: 50px; height: 30px;">
            </div>

            

            <div style="float:left; font-size: 22pt; width: 800px; height:50px;position: relative;">
                <span style="position:absolute; left:80px; top:30px; font-size:11pt; color:#787878;">시작일</span>
                <input type="date" name="" id="" style="border:none; border-bottom: 1px solid gray; position:absolute; left: 200px; top: 20px; font-size:14pt; width: 200px; height: 30px;">
                <span style="position:absolute; left:450px; top:30px; font-size:11pt; color:#787878;">종료일</span>
                <input type="date" name="" id="" style="border:none; border-bottom: 1px solid gray; position:absolute; left: 550px; top: 20px; font-size:14pt; width: 200px; height: 30px;">
            </div>

            <div style="float:left; font-size: 22pt; width: 800px; height:50px;position: relative; border-bottom: 1px solid #dcdcdc; padding : 40px;">
                <span style="position:absolute; left:80px; top:30px; font-size:11pt; color:#787878;">시간</span>
                <input type="text" name="" id="" placeholder="ex)16:00 - 18:00" style="border:none; border-bottom: 1px solid gray; position:absolute; left: 200px; top: 20px; font-size:16pt; width: 200px; height: 30px;">
            </div>
        </div>


        <!--<div style="float:left; position: relative; width:800px; margin-top:100px;">-->
        <div style="float:left; position: absolute; width:800px; top:600px; left:200px;">
            <button type="button" class="btn btn-secondary" id="btn2">PREVIOUS</button>
            <button type="button" class="btn btn-secondary" id="btn3">NEXT</button>
        </div>
    </div>
<!-- 여기까지 2 -->


    <!-- Insert 부분 3 -->
    <div style="color:#505050; font-size: 16pt; border-bottom: 1px solid #dcdcdc;font-weight: 600; padding:15px; display: none;" id="page3_title">
            3. 스터디 소개
    </div>
    <div style="text-align: center; position: relative; margin-top: 20px; display: none;" id="page3">
        

        
        <!-- 썸머 노트 -->
        <div style="float:left; position: relative; height:600px; width:100px; margin-top:20px;">
            <div>
                <textarea name="content" id="summernote" value=""></textarea> 
            </div>
        </div>

        <!-- <div style="float:left; position: relative; width:800px; margin-top:100px;"> -->
        <div style="float:left; position: absolute; width:800px; top:600px; left:200px;">
            <button type="button" class="btn btn-secondary" id="btn4">PREVIOUS</button>
            <button type="button" class="btn btn-secondary" id="btn5">완료</button>
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
        $(document).ready(function() {
            $('#summernote').summernote({
                    height: 500,                 // set editor height
                    width: 800,
                    minHeight: null,             // set minimum height of editor
                    maxHeight: null,             // set maximum height of editor
                    focus: true                  // set focus to editable area after initializing summernote
            });
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
            $("#btn3").click(function(){
                $("#page2").css("display","none");
                $("#page2_title").css("display","none");
                $("#page3").css("display","block");
                $("#page3_title").css("display","block");
            });
            $("#btn4").click(function(){
                $("#page2").css("display","block");
                $("#page2_title").css("display","block");
                $("#page3").css("display","none");
                $("#page3_title").css("display","none");
            });
            
        </script>

    
    </div>

</body>
</html>