<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- include libraries(jQuery, bootstrap) -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

    <!-- include summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

    <!-- 폰트어썸 -->
    <script src="https://kit.fontawesome.com/97134254f3.js" crossorigin="anonymous"></script>
    
    <!--  스와이퍼  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
    
    <style>
        ul {
            list-style:none;
            
        }
        li {
            text-align: -webkit-match-parent;
        }
    
    
    </style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	
	<script>
        $(function(){
            $("#filterA").click(function(){
                if($("#ldiv").css("display") == "none"){
                    $("#ldiv").css("display","block");
                }else{
                    $("#ldiv").css("display","none");
                }
                //$("#ldiv").css("display","block");
            });

            $("#filterB").click(function(){
                if($("#ldiv").css("display") == "none"){
                    $("#ldiv").css("display","block");
                }else{
                    $("#ldiv").css("display","none");
                }
                //$("#ldiv").css("display","block");
            });

            $("#filterC").click(function(){
                if($("#ldiv").css("display") == "none"){
                    $("#ldiv").css("display","block");
                }else{
                    $("#ldiv").css("display","none");
                }
                //$("#ldiv").css("display","block");
            });
        }); 
        
    </script>

	<!-- 검색란 -->
	<div style="background: #fff; display: block;">
		<div
			style="margin: 0 auto; padding: 30px 0 36px; width: 960px; height: 234px;">
			<!-- 캡션 -->
			<div
				style="color: #505050; font-size: 16pt; width: 960px; height: 29px;">
				Search</div>

			<!-- 셀렉 전체 wrap -->
			<div
				style="position: relative; margin: 30px 0; padding: 15px; background: #f2f2f2; border-radius: 3px; display: block;">
				<!-- 셀렉 1 -->
				<div
					style="display: inline-block; position: relative; z-index: 201; box-sizing: border-box; margin-right: 15px; padding-left: 20px; width: 230px; height: 3pc; line-height: 50px; background: #fff; cursor: pointer; user-select: none; border-radius: 3px;"
					id="filterA">
					<span style="color: #505050; font-size: 14px; font-weight: 700;">지역</span>
				</div>
				<!-- 셀렉 2 -->
				<div
					style="display: inline-block; position: relative; z-index: 201; box-sizing: border-box; margin-right: 15px; padding-left: 20px; width: 230px; height: 3pc; line-height: 50px; background: #fff; cursor: pointer; user-select: none; border-radius: 3px;"
					id="filterB">
					<span style="color: #505050; font-size: 14px; font-weight: 700;">레벨</span>
				</div>
				<!-- 셀렉 3 -->
				<div
					style="display: inline-block; position: relative; z-index: 201; box-sizing: border-box; margin-right: 15px; padding-left: 20px; width: 230px; height: 3pc; line-height: 50px; background: #fff; cursor: pointer; user-select: none; border-radius: 3px;"
					id="filterC">
					<span style="color: #505050; font-size: 14px; font-weight: 700;">온라인/오프라인</span>
				</div>
				<!-- 버튼 -->
				<button
					style="box-sizing: border-box; padding: 0 20px; width: 155px; height: 3pc; text-align: left; font-size: 14px; font-weight: 600; color: #fff; background: #4c8def; border: none; border-radius: 3px;">
					검색 <span style="display: inline-block; width: 24px; float: right;">
						<i class="fas fa-arrow-right"></i>
					</span>
				</button>
				<button onclick="location.href='myClass.do'">임시</button>
				<button onclick="location.href='classPorm.do'">클래스 만들러가기 임시</button>

				<!-- 펼쳐지는거 -->
				<div id="ldiv"
					style="display: none; position: absolute; z-index: 200; top: 0; left: 0; box-sizing: border-box; padding-top: 63px; width: 750px; background: #fff; border: 1px solid #c9c9c9; box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .16)">
					<!-- 리셋 , 취소 부분 -->
					<div style="position: absolute; right: 0; top: -36px;">
						<a href="#"
							style="font-size: 10pt; color: #787878; font-weight: 600; text-decoration: none;">
							<i class="fas fa-undo"
							style="margin-top: 1px; width: 14px; height: 14px; background-position-y: -81pt;"></i>필터초기화
						</a> <span
							style="display: inline-block; vertical-align: top; margin: 3px 1pc 0; width: 1px; height: 9pt; background: #dcdcdc"></span>
						<a href="#"
							style="font-size: 10pt; color: #787878; font-weight: 600; text-decoration: none;">
							<i class="fas fa-times"
							style="margin-top: 1px; width: 14px; height: 14px; background-position-y: -81pt;"></i>취소
						</a>
					</div>
					<!-- 아래 나오는거 -->
					<ul style="width: 45pc; margin: 0 auto;">

						<!-- 지역 -->
						<li
							style="display: inline-block; vertical-align: top; margin-right: 15px; box-sizing: border-box; width: 200px; border-top: 1px solid #dcdcdc;">
							<ul style="padding: 36px 14px;">
								<li style="margin-bottom: 1pc; user-select: none;"><label
									style="display: block; cursor: pointer;"> <input
										type="checkbox" name="" id=""
										style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
										<span
										style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 400;">서울</span>
								</label></li>
								<li style="margin-bottom: 1pc; user-select: none;"><label
									style="display: block; cursor: pointer;"> <input
										type="checkbox" name="" id=""
										style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
										<span
										style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 400;">경기도</span>
								</label></li>
								<li style="margin-bottom: 1pc; user-select: none;"><label
									style="display: block; cursor: pointer;"> <input
										type="checkbox" name="" id=""
										style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
										<span
										style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 400;">인천</span>
								</label></li>
								<li style="margin-bottom: 1pc; user-select: none;"><label
									style="display: block; cursor: pointer;"> <input
										type="checkbox" name="" id=""
										style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
										<span
										style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 400;">대전</span>
								</label></li>
								<li style="margin-bottom: 1pc; user-select: none;"><label
									style="display: block; cursor: pointer;"> <input
										type="checkbox" name="" id=""
										style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
										<span
										style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 400;">대구</span>
								</label></li>
							</ul>
						</li>

						<!-- 레벨 -->
						<li
							style="display: inline-block; vertical-align: top; margin-right: 15px; box-sizing: border-box; width: 200px; border-top: 1px solid #dcdcdc;">
							<ul style="padding: 36px 14px;">
								<li style="margin-bottom: 1pc; user-select: none;"><label
									style="display: block; cursor: pointer;"> <input
										type="checkbox" name="" id=""
										style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
										<span
										style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 400;">Beginner</span>
								</label></li>
								<li style="margin-bottom: 1pc; user-select: none;"><label
									style="display: block; cursor: pointer;"> <input
										type="checkbox" name="" id=""
										style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
										<span
										style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 400;">Normal</span>
								</label></li>
								<li style="margin-bottom: 1pc; user-select: none;"><label
									style="display: block; cursor: pointer;"> <input
										type="checkbox" name="" id=""
										style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
										<span
										style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 400;">Expert</span>
								</label></li>
							</ul>
						</li>

						<!-- 온라인 / 오프라인 -->
						<li
							style="display: inline-block; vertical-align: top; margin-right: 15px; box-sizing: border-box; width: 200px; border-top: 1px solid #dcdcdc;">
							<ul style="padding: 36px 14px;">
								<li style="margin-bottom: 1pc; user-select: none;"><label
									style="display: block; cursor: pointer;"> <input
										type="checkbox" name="" id=""
										style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
										<span
										style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 400;">온라인</span>
								</label></li>
								<li style="margin-bottom: 1pc; user-select: none;"><label
									style="display: block; cursor: pointer;"> <input
										type="checkbox" name="" id=""
										style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
										<span
										style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 400;">오프라인</span>
								</label></li>
							</ul>
						</li>


					</ul>
				</div>
			</div>


		</div>
	</div>

	<!-- 여기부터 리스트 -->
	<div class="outer"
		style="width: 100%; background: #ebebeb; position: relative;">

		<div style="width: 1000px; margin: auto; border: 1px solid #ebebeb;">
			<div
				style="margin: 60px auto 30px; padding-left: 5px; font-size: 16pt; color: #505050">
				<span style="font-weight: 600;">804개의 스터디</span>
			</div>
		</div>


		<!-- row div임 -->
		<div
			style="display: flex; align-items: stretch; padding-bottom: 30px; border-bottom: 1px solid #dcdcdc; width: 1000px; margin: 30px auto;" id="origindiv">


			<!-- 객체 하나 !! -->
			<a
				style="display: inline-block; text-decoration: none; margin: auto;"
				href="classdetail.do">
				<div
					style="position: relative; overflow: hidden; font-size: 14pt; width: 300px; height: 520px; border: 1px solid white;">
					<div
						style="position: relative; overflow: hidden; text-align: center; padding-bottom: 4pc; background: #fff">

						<!-- 기간 -->
						<div
							style="margin: 0 24px; height: 3pc; line-height: 50px; text-align: center; color: #787878; font-size: 14px; border-bottom: 1px solid #ebebeb; font-weight: 700;">
							<span style="color: #4c8def;">3개월, 주 1회</span> 11:00 ~ 13:00 (일)
						</div>

						<!-- 지역 | 레벨-->
						<div
							style="margin-top: 36px; text-align: center; color: #a0a0a0; font-size: 11pt;">
							<span>강남</span> <span>&nbsp; | &nbsp;</span> <span>Beginner</span>
						</div>

						<!-- 제목 -->
						<div
							style="margin: 9pt 0 1pc; text-align: center; color: #3c3c3c; font-size: 14pt; line-height: 1.5em;">
							같이 입문 영어 <br>정복하실분 구합니다!!
						</div>

						<!-- 가격? -->
						<div style="text-align: center;">
							<span style="color: #f48210; font-weight: 700;">토익</span> <span
								style="margin-left: 10px; color: #a0a0a0; font-size: 10pt;">12주</span>
						</div>
					</div>


					<!-- 아이콘 부분 -->
					<img src="${ contextPath }/resources/image/icon1.jpg"
						style="position: absolute; display: inline-block; width: 6pc; height: 6pc; left: 50%; margin: -40px 0 0 -51px; border-radius: 50%; background: #fff; border: 3px solid #fff; z-index: 100;">

					<!-- 밑에 사진 -->
					<div
						style="position: static; width: 100%; height: 15pc; background-size: cover; background-position: 50% 50%; background-image: url('${ contextPath }/resources/image//main1.jpg');">
						<div
							style="background: #cff0da; position: absolute; bottom: 0; width: 100%; height: 3pc; line-height: 50px; text-align: center; color: #fff; font-size: 14px; font-weight: 700">
							신청 하기</div>
					</div>
				</div>
			</a>
			<!-- 여기까지 객체-->

			<!-- 객체 하나 !! -->
			<a
				style="display: inline-block; text-decoration: none; margin: auto;"
				href="#">
				<div
					style="position: relative; overflow: hidden; font-size: 14pt; width: 300px; height: 520px; border: 1px solid white;">
					<div
						style="position: relative; overflow: hidden; text-align: center; padding-bottom: 4pc; background: #fff">

						<!-- 기간 -->
						<div
							style="margin: 0 24px; height: 3pc; line-height: 50px; text-align: center; color: #787878; font-size: 14px; border-bottom: 1px solid #ebebeb; font-weight: 700;">
							<span style="color: #4c8def;">온라인 스터디</span>
						</div>

						<!-- 지역 | 레벨-->
						<div
							style="margin-top: 36px; text-align: center; color: #a0a0a0; font-size: 11pt;">
							<!-- <span>강남</span>
                        <span>&nbsp; | &nbsp;</span> -->
							<span>Beginner</span>
						</div>

						<!-- 제목 -->
						<div
							style="margin: 9pt 0 1pc; text-align: center; color: #3c3c3c; font-size: 14pt; line-height: 1.5em;">
							텝스 단어장 공유하실분 ㅋㅋ <br>없나
						</div>

						<!-- 가격? -->
						<div style="text-align: center;">
							<span style="color: #f48210; font-weight: 700;">텝스</span>
							<!-- <span style="margin-left: 10px; color:#a0a0a0; font-size: 10pt; ">8주</span> -->
						</div>
					</div>


					<!-- 아이콘 부분 -->
					<img src="${ contextPath }/resources/image/icon2.jpg"
						style="position: absolute; display: inline-block; width: 6pc; height: 6pc; left: 50%; margin: -40px 0 0 -51px; border-radius: 50%; background: #fff; border: 3px solid #fff; z-index: 100;">

					<!-- 밑에 사진 -->
					<div
						style="position: static; width: 100%; height: 15pc; background-size: cover; background-position: 50% 50%; background-image: url('${ contextPath }/resources/image//Desert.jpg');">
						<div
							style="background: #cff0da; position: absolute; bottom: 0; width: 100%; height: 3pc; line-height: 50px; text-align: center; color: #fff; font-size: 14px; font-weight: 700">
							신청 하기</div>
					</div>
				</div>
			</a>
			<!-- 여기까지 객체-->

			<!-- 객체 하나 !! -->
			<a
				style="display: inline-block; text-decoration: none; margin: auto;"
				href="#">
				<div
					style="position: relative; overflow: hidden; font-size: 14pt; width: 300px; height: 520px; border: 1px solid white;">
					<div
						style="position: relative; overflow: hidden; text-align: center; padding-bottom: 4pc; background: #fff">

						<!-- 기간 -->
						<div
							style="margin: 0 24px; height: 3pc; line-height: 50px; text-align: center; color: #787878; font-size: 14px; border-bottom: 1px solid #ebebeb; font-weight: 700;">
							<span style="color: #4c8def;">온라인 스터디</span>
							<!-- 11:00 ~ 13:00 (일) -->
						</div>

						<!-- 지역 | 레벨-->
						<div
							style="margin-top: 36px; text-align: center; color: #a0a0a0; font-size: 11pt;">
							<!-- <span>강남</span>
                                <span>&nbsp; | &nbsp;</span> -->
							<span>expert</span>
						</div>

						<!-- 제목 -->
						<div
							style="margin: 9pt 0 1pc; text-align: center; color: #3c3c3c; font-size: 14pt; line-height: 1.5em;">
							해외 거주 8년, 능숙자와 <br>다양한 이슈로 능동적 토론하기!
						</div>

						<!-- 가격? -->
						<div style="text-align: center;">
							<span style="color: #f48210; font-weight: 700;">회화</span>
						</div>
					</div>


					<!-- 아이콘 부분 -->
					<img src="${ contextPath }/resources/image/icon3.jpg"
						style="position: absolute; display: inline-block; width: 6pc; height: 6pc; left: 50%; margin: -40px 0 0 -51px; border-radius: 50%; background: #fff; border: 3px solid #fff; z-index: 100;">

					<!-- 밑에 사진 -->
					<div
						style="position: static; width: 100%; height: 15pc; background-size: cover; background-position: 50% 50%; background-image: url('${ contextPath }/resources/image//Lighthouse.jpg');">
						<div
							style="background: #cff0da; position: absolute; bottom: 0; width: 100%; height: 3pc; line-height: 50px; text-align: center; color: #fff; font-size: 14px; font-weight: 700">
							신청 하기</div>
					</div>
				</div>
			</a>
			<!-- 여기까지 객체-->

		</div>
		<!-- 여기까지 Row -->
		
				<!-- row div임 -->
		<div
			style="display: flex; align-items: stretch; padding-bottom: 30px; border-bottom: 1px solid #dcdcdc; width: 1000px; margin: 30px auto;">


			<!-- 객체 하나 !! -->
			<a
				style="display: inline-block; text-decoration: none; margin: auto;"
				href="#">
				<div
					style="position: relative; overflow: hidden; font-size: 14pt; width: 300px; height: 520px; border: 1px solid white;">
					<div
						style="position: relative; overflow: hidden; text-align: center; padding-bottom: 4pc; background: #fff">

						<!-- 기간 -->
						<div
							style="margin: 0 24px; height: 3pc; line-height: 50px; text-align: center; color: #787878; font-size: 14px; border-bottom: 1px solid #ebebeb; font-weight: 700;">
							<span style="color: #4c8def;">3개월, 주 1회</span> 11:00 ~ 13:00 (일)
						</div>

						<!-- 지역 | 레벨-->
						<div
							style="margin-top: 36px; text-align: center; color: #a0a0a0; font-size: 11pt;">
							<span>강남</span> <span>&nbsp; | &nbsp;</span> <span>Beginner</span>
						</div>

						<!-- 제목 -->
						<div
							style="margin: 9pt 0 1pc; text-align: center; color: #3c3c3c; font-size: 14pt; line-height: 1.5em;">
							같이 입문 영어 <br>정복하실분 구합니다!!
						</div>

						<!-- 가격? -->
						<div style="text-align: center;">
							<span style="color: #f48210; font-weight: 700;">토익</span> <span
								style="margin-left: 10px; color: #a0a0a0; font-size: 10pt;">12주</span>
						</div>
					</div>


					<!-- 아이콘 부분 -->
					<img src="${ contextPath }/resources/image/icon1.jpg"
						style="position: absolute; display: inline-block; width: 6pc; height: 6pc; left: 50%; margin: -40px 0 0 -51px; border-radius: 50%; background: #fff; border: 3px solid #fff; z-index: 100;">

					<!-- 밑에 사진 -->
					<div
						style="position: static; width: 100%; height: 15pc; background-size: cover; background-position: 50% 50%; background-image: url('${ contextPath }/resources/image//main1.jpg');">
						<div
							style="background: rgba(220, 0, 0, .6); position: absolute; bottom: 0; width: 100%; height: 3pc; line-height: 50px; text-align: center; color: #fff; font-size: 14px; font-weight: 700">
							신청 하기</div>
					</div>
				</div>
			</a>
			<!-- 여기까지 객체-->

			<!-- 객체 하나 !! -->
			<a
				style="display: inline-block; text-decoration: none; margin: auto;"
				href="#">
				<div
					style="position: relative; overflow: hidden; font-size: 14pt; width: 300px; height: 520px; border: 1px solid white;">
					<div
						style="position: relative; overflow: hidden; text-align: center; padding-bottom: 4pc; background: #fff">

						<!-- 기간 -->
						<div
							style="margin: 0 24px; height: 3pc; line-height: 50px; text-align: center; color: #787878; font-size: 14px; border-bottom: 1px solid #ebebeb; font-weight: 700;">
							<span style="color: #4c8def;">온라인 스터디</span>
						</div>

						<!-- 지역 | 레벨-->
						<div
							style="margin-top: 36px; text-align: center; color: #a0a0a0; font-size: 11pt;">
							<!-- <span>강남</span>
                        <span>&nbsp; | &nbsp;</span> -->
							<span>Beginner</span>
						</div>

						<!-- 제목 -->
						<div
							style="margin: 9pt 0 1pc; text-align: center; color: #3c3c3c; font-size: 14pt; line-height: 1.5em;">
							텝스 단어장 공유하실분 ㅋㅋ <br>없나
						</div>

						<!-- 가격? -->
						<div style="text-align: center;">
							<span style="color: #f48210; font-weight: 700;">텝스</span>
							<!-- <span style="margin-left: 10px; color:#a0a0a0; font-size: 10pt; ">8주</span> -->
						</div>
					</div>


					<!-- 아이콘 부분 -->
					<img src="${ contextPath }/resources/image/icon2.jpg"
						style="position: absolute; display: inline-block; width: 6pc; height: 6pc; left: 50%; margin: -40px 0 0 -51px; border-radius: 50%; background: #fff; border: 3px solid #fff; z-index: 100;">

					<!-- 밑에 사진 -->
					<div
						style="position: static; width: 100%; height: 15pc; background-size: cover; background-position: 50% 50%; background-image: url('${ contextPath }/resources/image//Desert.jpg');">
						<div
							style="background: rgba(220, 0, 0, .6); position: absolute; bottom: 0; width: 100%; height: 3pc; line-height: 50px; text-align: center; color: #fff; font-size: 14px; font-weight: 700">
							신청 하기</div>
					</div>
				</div>
			</a>
			<!-- 여기까지 객체-->

			<!-- 객체 하나 !! -->
			<a
				style="display: inline-block; text-decoration: none; margin: auto;"
				href="#">
				<div
					style="position: relative; overflow: hidden; font-size: 14pt; width: 300px; height: 520px; border: 1px solid white;">
					<div
						style="position: relative; overflow: hidden; text-align: center; padding-bottom: 4pc; background: #fff">

						<!-- 기간 -->
						<div
							style="margin: 0 24px; height: 3pc; line-height: 50px; text-align: center; color: #787878; font-size: 14px; border-bottom: 1px solid #ebebeb; font-weight: 700;">
							<span style="color: #4c8def;">온라인 스터디</span>
							<!-- 11:00 ~ 13:00 (일) -->
						</div>

						<!-- 지역 | 레벨-->
						<div
							style="margin-top: 36px; text-align: center; color: #a0a0a0; font-size: 11pt;">
							<!-- <span>강남</span>
                                <span>&nbsp; | &nbsp;</span> -->
							<span>expert</span>
						</div>

						<!-- 제목 -->
						<div
							style="margin: 9pt 0 1pc; text-align: center; color: #3c3c3c; font-size: 14pt; line-height: 1.5em;">
							해외 거주 8년, 능숙자와 <br>다양한 이슈로 능동적 토론하기!
						</div>

						<!-- 가격? -->
						<div style="text-align: center;">
							<span style="color: #f48210; font-weight: 700;">회화</span>
						</div>
					</div>


					<!-- 아이콘 부분 -->
					<img src="${ contextPath }/resources/image/icon3.jpg"
						style="position: absolute; display: inline-block; width: 6pc; height: 6pc; left: 50%; margin: -40px 0 0 -51px; border-radius: 50%; background: #fff; border: 3px solid #fff; z-index: 100;">

					<!-- 밑에 사진 -->
					<div
						style="position: static; width: 100%; height: 15pc; background-size: cover; background-position: 50% 50%; background-image: url('${ contextPath }/resources/image//Lighthouse.jpg');">
						<div
							style="background: rgba(220, 0, 0, .6); position: absolute; bottom: 0; width: 100%; height: 3pc; line-height: 50px; text-align: center; color: #fff; font-size: 14px; font-weight: 700">
							신청 하기</div>
					</div>
				</div>
			</a>
			<!-- 여기까지 객체-->

		</div>
		<!-- 여기까지 Row -->

		
		
	</div>
	
	<!-- 스크롤 로딩 -->

</body>
</html>