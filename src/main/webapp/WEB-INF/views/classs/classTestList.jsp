<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 폰트어썸 -->
    <script src="https://kit.fontawesome.com/97134254f3.js" crossorigin="anonymous"></script>

    <!-- 붙스 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${ contextPath }/resources/css/test.css" type="text/css">
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="../common/classSideMenubar.jsp"/>
<!-- 컨텐트 부분-->
    <div style="margin-top :4vh; margin-left: 4vw; width:70%; float: left;">
        <h1>시험 목록</h1>
    <table class="table table-hover" style="width:80%; text-align: center;">
        <thead>
            <tr>
                <th scope="col" style="width:5%;">No</th>
                <th scope="col" style="width:59%;">시험 제목</th>
                <th scope="col" style="width:20%;">응시일</th>
                <th scope="col" style="width:8%;">점수</th>
                <th scope="col" style="width:8%;">확인</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">10</th>
                <td>2020년 1월 4주차 테스트</td>
                <td>2020-01-27</td>
                <td>65</td>
                <td><button type="button" class="btn btn-secondary" data-toggle="modal" data-target=".bd-example-modal-lg">확인</button></td>
            </tr>
            <tr>
                <th scope="row">9</th>
                <td>2020년 1월 3주차 테스트</td>
                <td>2020-01-20</td>
                <td>45</td>
                <td><button type="button" class="btn btn-secondary" onclick="location.href='goTest.do'">확인</button></td>
            </tr>
            <tr>
                <th scope="row">8</th>
                <td>2020년 1월 2주차 테스트</td>
                <td>2020-01-13</td>
                <td>70</td>
                <td><button type="button" class="btn btn-secondary">확인</button></td>
            </tr>
            <tr>
                <th scope="row">7</th>
                <td>2020년 1월 1주차 테스트</td>
                <td>2020-01-06</td>
                <td>90</td>
                <td><button type="button" class="btn btn-secondary">확인</button></td>
            </tr>
            <tr>
                <th scope="row">6</th>
                <td>2020년 1월 1주차 테스트</td>
                <td>2020-01-06</td>
                <td>90</td>
                <td><button type="button" class="btn btn-secondary">확인</button></td>
            </tr>
            <tr>
                <th scope="row">5</th>
                <td>2020년 1월 1주차 테스트</td>
                <td>2020-01-06</td>
                <td>90</td>
                <td><button type="button" class="btn btn-secondary">확인</button></td>
            </tr>
            <tr>
                <th scope="row">4</th>
                <td>2020년 1월 1주차 테스트</td>
                <td>2020-01-06</td>
                <td>90</td>
                <td><button type="button" class="btn btn-secondary">확인</button></td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td>2020년 1월 1주차 테스트</td>
                <td>2020-01-06</td>
                <td>90</td>
                <td><button type="button" class="btn btn-secondary">확인</button></td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td>2020년 1월 1주차 테스트</td>
                <td>2020-01-06</td>
                <td>90</td>
                <td><button type="button" class="btn btn-secondary">확인</button></td>
            </tr>
            <tr>
                <th scope="row">1</th>
                <td>2020년 1월 1주차 테스트</td>
                <td>2020-01-06</td>
                <td>90</td>
                <td><button type="button" class="btn btn-secondary">확인</button></td>
            </tr>
        </tbody>
    </table>
    
    <!-- 페이징 -->
    <div style="margin-top :1vh;  width:70%; height:50px; float: left;text-align: center; position:relative;">
            <nav aria-label="Page navigation example" style="position:absolute; box-shadow:0px 0px 0px; left:60%;">
                <ul class="pagination">
                    <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                    </li>
                </ul>
            </nav>
        </div>
        
    </div>

<!-- 버튼 클릭시 시험지 나옴 -->
<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <!-- 모달 시작  -->
          <div>
        <div style="display:flex; align-items:center; justify-content: center; overflow: hidden; z-index: 40;">
            <!-- 모달 백그라운드 -->
            <div style="bottom: 0; left: 0; position: absolute; right: 0; top: 0; background-color: rgba(10,10,10,0.86);"></div>

            <div style="width:800px; margin:0; display:flex; box-orient: vertical; box-direction:normal; flex-direction: column; overflow: hidden; background: white; z-index: 41; border-radius: 15px;">
                <!-- 헤드부분 -->
                <header class="modal-card-head" style="text-align:center;">
                    <p style="font-size: 15pt;font-weight: 500; margin: auto;">2020년 1월 4주차 테스트!
                        <a style="float:right; position: absolute; top:10px; right: 60px; font-size:32px;" class="closebtn" href="#">x</a>
                    </p>
                </header>
                <section class="modal-card-body">
                    <div id="quiz-list-form">
                        <section style="color:#484848; margin:0; padding: 0;">

                            <!-- 헤더 시작 -->
                            <div class="quiz-header">
                                <div class="doc-title">단어</div>
                                <div class="doc-sub-title">시험</div>
                                <!-- 추가 필 -->
                                <div class="blank-box-wrapper">
                                    <div class="blank-box">
                                        <h3 style="color: #000; font-size: 14pt; text-align: center;">ajoa2012</h3>
                                    </div>
                                    <div class="blank-box">
                                        <h3 style="color: #000; font-size: 14pt; text-align: center;">2020-02-13</h3>
                                    </div>
                                    <div class="blank-box">
                                        <h3 style="color: red; font-size: 18pt; text-align: center;">80</h3>
                                    </div>
                                </div>
                                <div class="quiz-info-box-wrapper">
                                    <div class="quiz-info-box">
                                        <h5 style="font-size: 3mm; position:absolute; color:#7a7a7a;">총 문제수</h5>
                                        <h3 style="text-align: center; font-size: 3mm; font-weight: 700; position: absolute; left: 30mm;">10</h3>
                                    </div>
                                    <div class="quiz-info-box">
                                        <h5 style="font-size: 3mm; position:absolute; color:#7a7a7a;">맞은 문제</h5>
                                        <h3 style="text-align: center; font-size: 3mm; font-weight: 700; position: absolute; left: 30mm;">8</h3>
                                    </div>
                                    <div class="quiz-info-box">
                                        <h5 style="font-size: 3mm; position:absolute; color:#7a7a7a;">틀린 문제</h5>
                                        <h3 style="text-align: center; font-size: 3mm; font-weight: 700; position: absolute; left: 30mm;">2</h3>
                                    </div>
                                </div>
                            </div>
                            <!-- 헤더 끝-->

                            <!-- 컨텐트 시작 -->
                            <div class="quiz-contents">
                                <div style="position: relative; ">
                                    <!-- 단어 넣기 for문 돌릴 예정 -->
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1
                                            <img src="${ contextPath }/resources/image//ok.png" style="z-index: 50; width:70px; height: 70px; position: absolute; top: -5px; right:-30px;">
                                        </div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box">최에에에그으으은</div>
                                        </div>
                                    </div>
                                    <!-- for문 끝-->
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1
                                            <img src="${ contextPath }/resources/image//nok.png" style="z-index: 50; width:70px; height: 70px; position: absolute; top: -5px; right:-30px;">
                                        </div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box">최근</div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1
                                            <img src="${ contextPath }/resources/image//ok.png" style="z-index: 50; width:70px; height: 70px; position: absolute; top: -5px; right:-30px;">
                                        </div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1
                                            <img src="${ contextPath }/resources/image//ok.png" style="z-index: 50; width:70px; height: 70px; position: absolute; top: -5px; right:-30px;">
                                        </div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1
                                            <img src="${ contextPath }/resources/image//ok.png" style="z-index: 50; width:70px; height: 70px; position: absolute; top: -5px; right:-30px;">
                                        </div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1
                                            <img src="${ contextPath }/resources/image//nok.png" style="z-index: 50; width:70px; height: 70px; position: absolute; top: -5px; right:-30px;">
                                        </div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">1</div>
                                        <div class="filled-box">
                                            <div class="text-box">recently</div>
                                        </div>
                                        <div class="empty-box">
                                            <div class="text-box"></div>
                                        </div>
                                    </div>


                                </div>
                              </div>
                            <!-- 컨텐트 끝 -->


                        </section>
                    </div>
                </section>
            </div>

        </div>
    </div>
      
      <!--  모달 끝 -->
    </div>
  </div>
</div>
 
</body>
</html>