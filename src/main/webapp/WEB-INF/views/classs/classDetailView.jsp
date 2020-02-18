<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    }

    dt{
        display:inline-block; width:55px; vertical-align: top; color: #787878;
    }
    dd{
        margin-inline-start: 40px;
        margin: 0;
    padding: 0;
    }
    </style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<!-- 전체 -->
    <div style="box-sizing: border-box; min-height: 100%; padding: 72px 0 408px; margin-top: 0px; background: #ebebeb; display: block;">
        <div style="margin-top: 0px;">

            <!-- 주 내용 시작-->
            <div style="width:60pc; margin:0 auto; overflow:hidden; position:relative;">
                <!-- 찐 내용 시작-->
                <div style=" margin-bottom:60px; width:700px; overflow:hidden; background-color:#fff; margin:auto;">

                    <!-- 사진, 지역 , 제목-->
                    <header>
                        <!-- 사진 -->
                        <div style="position:relative; height:360px;">
                            <div style="flex-shrink: 0; height: 100%; position: relative;">
                                <img src="${ contextPath }/resources/image//main1.jpg" style="width:100%; height:100%;">
                            </div>
                        </div>
                        <!-- 제목 -->
                        <div style="position: relative; padding: 36px 30px;">
                            <div style="position: absolute; top:-54px; z-index: 1; width:81pt; height: 81pt; overflow: hidden; text-align: center; background: #ef6c00; line-height: normal;">
                                <!-- 레벨 -->
                                <div style="margin-top: 26px; color:#ffeb3b; font-weight: 700; font-size: 1pc;">
                                    LEVEL
                                </div>
                                <!-- 레벨 한글 -->
                                <div style="margin-top: 20px;font-size: 1pc;color: #fff;">
                                    Beginner
                                </div>
                            </div>
                            <!-- 지역 -->
                            <span style="display: inline-block; width: 100%; text-align: center; font-weight: 700; color: #ef6c00;">강남</span>
                            <h1 style="margin: 15px 0 0; line-height: 1.5em; text-align: center; font-size: 28pt; color: #3c3c3c;">해외 거주 8년, 능숙자와
                                    <br>다양한 이슈로 능동적 토론하기!</h1>
                        </div>
                    <!-- 머리끝 -->
                    </header>
                    
                    <!-- 스터디 소개 시작 -->
                    <div style="line-height: 1.75em; padding: 0 35px;">
                        <section style="border-top: 1px solid #e6e6e6;">
                            <div style="overflow: hidden;">
                                <h1 style="float:left; clear:right; padding:60px 0 3pc 9pt; width:120px; font-size:14pt; color:#333;">스터디 소개</h1>
                                <!-- 내용 -->
                                <div style="float:right; padding:60px 0; width:455px;">
                                    외국인 친구와 영어로 너무 말해보고 싶은데, 한국말로는 이미 영혼의 베프까지 먹었는데, 정작 문장은 도저히 입 밖으로 나오지 않는 경험.<br>
                                    다들 있으시 죠? 공부를 하려니 막막하고, 흥미도 붙지 않아 늘 흐지부지되던 경험도 많이들 겪으시죠?<br>
                                    외국어가 어려운 가장 큰 이유는 사실, 다름이 아니라 우리가 한국말을 너무 잘 하기 때문이에요.<br>
                                    우리의 한국말 실력과 지식은 너무나도 뛰어난 데, 그것 을 그대로 영어로 translation하려니 힘들 수 밖에요.<br>
                                     그렇지만 좌절하지 마세요.<br>우리가 이미 다 알고 있는 쉬운 표현들만으로 충분히 회화에 활용되는 마법같은 경험을 하시게될 거에요!
                                </div>
                            </div>

                            <!-- 아래 상세정보 -->
                            <div style="overflow:hidden; display: block;">
                                <h2 style="padding:3pc 0 3pc 9pt; font-size:11pt; color:#787878; float:left; clear:right; width: 110px;">상세 정보</h2>
                                <div style="padding:3pc 0; border-top: 1px solid #e6e6e6; float: right; width: 455px;">
                                    <dl style="float:left; width:430px;">

                                        <dt style="color:#787878; width: 55px;">지역:</dt>
                                        <dd style="display: inline-block; width:155px;">강남</dd>

                                        <dt style="width:55px; color:#787878;">인원:</dt>
                                        <dd style="width:145px; display: inline-block;">15 명</dd>
                                        
                                        <dt style="color:#787878; width: 55px;">일정:</dt>
                                        <dd style="display: inline-block; width:355px;">2020-02-06 - 2020-03-01</dd>

                                        <dt style="width:55px; color:#787878;">시간:</dt>
                                        <dd style="width:355px; display: inline-block;">11:00 - 13:00 (일)</dd>

                                        <dt style="width:100px; color:#787878;">문의 아이디:</dt>
                                        <dd style="width:280px; display: inline-block;">ajoa2012</dd>

                                        <dt style="width:100px; color:#787878;">핸드폰 번호:</dt>
                                        <dd style="width:280px; display: inline-block;">010-4187-1160</dd>
                                    </dl>
                                </div>
                            </div>

                            <!-- 버튼 -->
                            <div>
                                <input type="button" id="sinchenog" style="margin-top: 24px; background-color: #ef6c00; color:#fff; border:none;
                                    display:block; width:200px; height:56px; line-height: 56px; text-align: center; font-size: 11pt; margin:auto;" value="참여 신청하기">
                            </div>
                        </section>
                    </div>


                </div>
            </div>
        </div>
    </div>
</body>
</html>