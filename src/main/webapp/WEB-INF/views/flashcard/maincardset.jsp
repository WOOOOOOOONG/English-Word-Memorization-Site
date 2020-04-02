<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../common/menubar.jsp" />
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">


  <link rel="stylesheet" media="screen" type="text/css" href="colorpicker/css/colorpicker.css" />
  <link rel="stylesheet" href="resources/css/cus_input.css">


  <script src="https://unpkg.com/vanilla-picker@2"></script>

  <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">

  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

  <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">


  <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>



</head>
<style>
  body {
    font-family: Arial, Helvetica, sans-serif;
  }

  .main_side a {

    color: orange;

    width: 75px;
  }

  .nav-pills .nav-link.active,
  .nav-pills .show>.nav-link {
    color: rgb(70, 132, 226);
    background-color: whitesmoke;
  }

  .main_side {
    margin-left: 28%;
    display: inline-block;
    width: fit-content;
    position: absolute;
  }


  .preview_textarea {
    box-shadow: 1px 2px 1px rgba(206, 200, 200, 0.2);
    margin-left: 34%;
    margin-top: 1%;
    width: 600px;
    height: 400px;
    position: fixed;
    z-index: 10;
  }


  .bordRound {
    border-top-left-radius: 12px;
    border-top-right-radius: 12px;
    border-bottom-left-radius: 12px;
    border-bottom-right-radius: 12px;
  }

  .card_list_wrapper {
    background: skyblue;
  }

  .create_new {
    text-align: center;
    background: #c7d1e266;
    height: 50px;
  }

  .textSetting:focus {

    border-bottom: 5px skyblue solid;
  }

  .flip-card {
    background-color: transparent;
    width: 800px;
    height: 400px;
    perspective: 1000px;
  }

  .flip-card-inner {
    position: relative;
    width: 100%;
    height: 100%;
    text-align: center;
    transition: transform 0.6s;
    transform-style: preserve-3d;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  }

  .flip-card-front,
  .flip-card-back {
    position: absolute;
    width: 100%;
    height: 100%;
    backface-visibility: hidden;
  }



  .flip-card-front {
    background-color: burlywood;
    color: white;
  }

  .flip-card-back {
    background-color: burlywood;
    color: white;
    transform: rotateY(180deg);
  }

  .frontCard {
    transform: rotateY(180deg);
  }



  #fullScreen:fullscreen .flip-card-front,

  .carousel-inner {
    width: 80%;
    height: 70%;
  }





  .container {
    width: 630px;
  }

  .cardTextSetting {
    display: inline-block;
    margin-top: 1px;
    margin-top: 5px;
    font-size: 25px;
    font-weight: bold;
  }

  .carousel-inner {

    width: 600px;
    height: 550px;
  }

  .carousel-inner>div {
    margin-top: 50px;
    margin-bottom: 20px;
  }

  .flashCardViewContainer {
    margin-top: 0.5%;
    margin-left: 15%;
    margin-right: 15%;

  }

  .commercial {
    height: 125px;
    border: 1px solid;
    margin-bottom: 10px;
  }

  #titleCard {
    margin-left: 5px;
    margin-bottom: 5px;
  }

  .btnText {
    vertical-align: super;
    margin-left: 11px
  }


  .flashCardEditWrapper {
    height: 170px;
    background-color: white;
    box-shadow: 1px 1px 4px rgb(185, 178, 178);
    display: inline-block;
    width: 100%;
    margin-top: 9px;
  }


  .card_word_wrapper {

    margin-top: 10px;
    height: 170px;
  }



  .toolbarCard {
    display: block;
  }


  .op_h {
    height: 20px;
    text-align: center;
    padding: 4px;
  }

  .flashStep {
    width: 7%;
    text-align: center;
    font-size: 24px;
    font-weight: bold;
    float: left;
  }


  .switchLocation {
    margin-left: 80%;

    float: left;
  }

  .switchLocation>i {
    float: right;
    margin-right: 2px;
  }



  .flashCardEditDef {
    display: flex;
    margin-bottom: 12px;

  }

  .flashOption {

    margin: 0px;

  }


  .defOfWord {
    border: 1px solid lightgrey;
    height: fit-content;
    width: 47%;
    margin: auto;

  }

  .meanOfWord {
    border: 1px solid lightgrey;
    height: fit-content;
    width: 47%;
    margin: auto;

  }

  .textSetting {
    border: none;
    resize: none;
    width: 100%;
    height: 85px;
    font-size: 1.2vw;
    text-align: center;
    outline-width: 0 !important;
  }


  .textSetting2 {
    resize: none;
    width: 50%;
    height: 100%;
  }

  hr {
    margin-top: 0px;

    border-top: 2px solid rgba(0, 0, 0, .2);
  }


  .optionABS {
    width: 42px;
    padding-top: 65px;
    box-shadow: 1px 2px 1px rgba(206, 200, 200, 0.2);
    float: right;


  }



  .but_siz {
    height: 33px !important;
  }



  .optionView {
    margin-top: 8px;
    margin-left: 4px;
    width: 493px;

    font-size: 24px;
    color: white;
    background-color: orange;
    display: inline-block;
    height: 100%;

  }

  .colorOption {
    border: 1px double burlywood;

    margin-top: 20px;

    width: 535px;

  }

  .colorpreview {
    margin: 20px;
    height: 175px;
    width: 493px;
    align-items: center;
    display: flex;
    justify-content: center;
    font-size: 300%;
    color: white;
    background-color: orange;

  }

  .bordRound {
    border-top-left-radius: 12px;
    border-top-right-radius: 12px;
    border-bottom-left-radius: 12px;
    border-bottom-right-radius: 12px;
  }

  .colorSlider {

    width: 505px;

  }

  .accordion {
    margin: 7px;
    height: 80px;

  }

  .textStyle,
  .textStyle:focus,
  .textStyle:hover {
    text-decoration: none;


  }

  .textStyle:focus,
  .textStyle:hover {
    text-decoration: none;
    color: rgb(38, 113, 143);
  }

  .colorSlider>input {
    width: 90px;
    height: 15px;
    margin-left: 4px;


  }

  #slider1,
  #slider2,
  #slider3 {
    width: 350px;

  }

  .colorSlider>* {
    display: inline-block;
  }

  .colorSlider>p {
    width: 23px;
    margin-right: 15px;

  }

  #fullScreen:fullscreen {
    height: 100%;
    width: 100%;
  }

  #fullScreen:fullscreen>#controlBTN {
    display: none;
  }

  #gradPreview>.popup.popup_right {
    left: 40% !important;
    top: -48px !important;
  }

  .text_settings {
    font-size: 500%;
    align-items: center;
    display: flex;
    justify-content: center;
  }

  .text_settings2{
    font-size: 200%;
    align-items: center;
    display: flex;
    justify-content: center;
  }
  .loading_page {
    position: relative;
    left: 1em;
    top: 1em;
  }

  .center_center {
    height: 38px;
    width: 150px;
    align-items: center;
    display: flex;
    background: orange;
    color: white;
    margin-top: 10px;
    justify-content: center;
  }

  .btn :focus {
    border: none;
    outline: 0 !important;
    box-shadow: none;
  }


  .btn:hover {
    color: skyblue !important;
  }











  .save-button {
    display: fixed;
  }












  .center_center2 {

    align-items: center;
    display: flex;
    justify-content: center;
  }





  .questionTextarea {
    border: 1px solid grey;
    background: whitesmoke;
    width: 100%;
    height: 150px;

  }

  .answerButton .btn {
    margin: 20px;
  }

  .answerTextarea {
    border: 1px solid grey;
    background: whitesmoke;
    width: 100%;
    height: 240px;
  }











  #nav_sticky {
    height: 82px;
    background: whitesmoke;
    z-index: 100;

  }




  .sticky {
    position: fixed;
    top: 0;
    width: 100%;

    box-shadow: 0 0.3125rem 1rem 0 rgba(0, 0, 0, .24);
    z-index: 100;
  }

  .sticky+.content {
    padding-top: 100px;
  }



  .navbarOP {
    width: 50px;
  }







.container_slide
{
  width: fit-content;
  margin:auto;
}



  .cus_slides
  {
    display: none;
  }


  .mySlides {
    display: none;
  }

  .fade_cus {
    -webkit-animation-name: fade_next;
    -webkit-animation-duration: 1.5s;
    animation-name: fade_next;
    animation-duration: 1.5s;
  }

  @keyframes fade_next {
    from {
      opacity: .4
    }

    to {
      opacity: 1
    }
  }









/* https://css-tricks.com/snippets/css/stack-of-paper/ from this site */
.paper_container
{
  width: 100%;
}
  .paper {
  background: #fff;
  display: inline-block;
  margin-left: 110px;
  margin-top: 30px;
  position: relative;
  width: 250px; height: 150px;
}

.paper,
.paper::before,
.paper::after {
  /* Styles to distinguish sheets from one another */
  box-shadow: 1px 1px 1px rgba(0,0,0,0.25);
  border: 1px solid #bbb;
}

.paper::before,
.paper::after {
  content: "";
  position: absolute;
  height: 95%;
  width: 99%;
  background-color: #eee;
}

.paper::before {
  right: 15px;
  top: 0;
  transform: rotate(-1deg);
  z-index: -1;
}

.paper::after {
  top: 5px;
  right: -5px;
  transform: rotate(1deg);
  z-index: -2;
}


.cus_button{
 font-weight: bolder;
 font-size: 20px;
 border-color:  #77b3cc;;
 background: skyblue;
}
.cus_button:hover{
 font-weight: bolder;
 font-size: 20px;
 border-color:  #77b3cc;
 color: yellow;
 background: skyblue;
}



/*tooltip*/

.tooltip_cus {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted whitesmoke;
}

.tooltip_cus .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;
  
  /* Position the tooltip */
  position: absolute;
  z-index: 1;
  top: 100%;
  left: 50%;
  margin-left: -60px;
}

.tooltip_cus:hover .tooltiptext {
  visibility: visible;
}




.my_list_set
{
  display: none;
  border: 1px solid grey;
  width: 700px;
  height: 350px;
}
.my_list_set p
{
  font-size: 120%;
  position: absolute;
}
.my_list_set hr
{
 margin-top:2rem;
}
</style>

<body>
 
  <div id="nav_sticky">
    <div class="center_center2">
      <!-- 카테고리 버트 여기에   <div class=" title_placeholder category" contenteditable="true">
  
        </div> -->
      <!-- input 디자인 출처 https://codepen.io/fatmali/pen/aboNdra-->
      <!--

              
            -->
      <div style="display: inherit;height: 72px;">
        <div style="display: inherit;" id="display_home">
          <h1 id="titleCard" class="text-center" style="width: fit-content;margin-top: 10px;">title</h1>
          <button class="btn carcPrevBtn "><i class="material-icons" style="font-size: 48px;width: 48px;">
              keyboard_arrow_left
            </i></button>
          <p id="cardCounter" class="col text-center cardTextSetting" style="    margin-top: 14px;"></p>
          <button class="btn  carcNextBtn"> <i class="material-icons" style="font-size: 48px;width: 48px;">
              keyboard_arrow_right
            </i></button>
        </div>

      </div>

      <div id="display_edit" style="display: none;">
        <a class="btn btn-primary" href="http://192.168.10.13:8800/spring/flashcard.fl" style="font-weight: bolder;font-size: 20px;border-color: #2f8bb1;
        border-color: white;background: skyblue;">새로 세트 작성하기</a>
        <button class="btn btn-primary" onclick="checkTitleDuplicate()" style="font-weight: bolder;font-size: 20px;border-color: #2f8bb1;
        border-color: white;background: skyblue;">저장하기</button>
      </div>

    
      <div class=" main_side">

        <div class="navbarOp  nav nav-pills" id="v-pills-tab" role="tablist" aria-orientation="horizontal">

          <a class="nav-link home_view tooltip_cus active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab"
            aria-controls="v-pills-home" aria-selected="true">
            <span class="tooltiptext">내 단어장</span>
            <i class="material-icons" style="font-size: 48px;width: 48px;">
              credit_card
            </i>

          </a>





<!-- 다른사람 단어장 -->

<a class="nav-link  setting_view tooltip_cus list_view_card " id="v-pills-list_card-tab" data-toggle="pill" href="#v-pills-list_card" role="tab"
aria-controls="v-pills-home" aria-selected="true">
<span class="tooltiptext">공유된 단어장</span>
<i class="material-icons" style="font-size: 48px;width: 48px;">
  search
</i>

</a>
<!-- 다른사람 단어장 -->



<!--내 단어장 리스트-->

<a class="nav-link tooltip_cus test_view list_view_card2 " id="v-pills-list_card2-tab" data-toggle="pill" href="#v-pills-list_card2" role="tab"
aria-controls="v-pills-home" aria-selected="true">
 <span class="tooltiptext">단어장 리스트</span>
<i class="material-icons" style="font-size: 48px;width: 48px;">
  person
</i>

</a>


<!--내 단어장 리스트-->

        <!--   <a class="nav-link tooltip_cus test_view  " id="v-pills-test-tab" data-toggle="pill" href="#v-pills-test" role="tab"
            aria-controls="v-pills-test" aria-selected="true" >
              
             <span class="tooltiptext"> 간단 테스트</span>
            <i class="material-icons" style="font-size: 48px;width: 48px;">
              import_contacts
            </i>

          </a> -->


          <a class="nav-link tooltip_cus edit_view" id="v-card-list-tab" data-toggle="pill" href="#v-card-list" role="tab"
            aria-controls="v-pills-list" aria-selected="false">
            <span class="tooltiptext">단어장 수정</span>
            <i class="material-icons" style="font-size: 48px;width: 48px;">
              dynamic_feed
            </i>
          </a>

         <!--  <a class="nav-link tooltip_cus  setting_view" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings"
            role="tab" aria-controls="v-pills-settings" aria-selected="false">
              <span class="tooltiptext">설정</span>
            <i class="material-icons" style="font-size: 48px;width: 48px;">
              settings
            </i>
          </a> -->

        </div>
      </div>


    </div>



  </div>



  <div class="loading_page">

  </div>



  <input type="text" name="" id="csid_val" hidden>
  <input type="text" id="original_title" hidden>

  <div class="preview_textarea text_settings2" style="display: none;">

    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front text_settings2">
          <!-- 단어 -->
        </div>
        <div class="flip-card-back text_settings2">
        

        </div>

      </div>

    </div>
  </div>




  <div class="flashCardViewContainer">



    <div style="margin:auto">




      <div>
        <div class="tab-content" id="v-pills-tabContent">


          <!-- flash card starts here -->

          <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">




           <!--  
            <div class="container" id="fullScreen">
              <div id="placetoappend" class="carousel slide" data-ride="carousel" data-interval="false">
                 <div class="carousel-inner">
                   <div class="carousel-item  active " id="onstartClone">
              -->
               
              <div class="container_slide" id = "slide_contained">
                  <div class = "cus_slides fade_next" id="onstartClone">
                    <div class="flip-card">
                      <div class="flip-card-inner">
                        <div class="flip-card-front text_settings">
                          <!-- 단어 -->
                        </div>
                        <div class="flip-card-back text_settings">
                          <!-- 뜻장-->


                        </div>
                      </div>

                    </div>
                  </div>
                </div>

                  <!-- 버튼 추가는 여기에 -->

               

                <!-- 
                   </div>
              </div>
            </div>-->




            <!-- flash card starts  ends here -->

          </div>




          <div class="tab-pane fade  " id="v-pills-test" role="tabpanel" aria-labelledby="v-pills-test-tab">



            <div class="slide_for_test">



              <div class="container_test mySlides fade_next" id="test_for_cloned">
                <input type="text" class="answer_key" hidden>

                <input type="text" class="user_answer_key" hidden>

                <input type="text" class="question_0 QNA" hidden>
                <input type="text" class="question_1 QNA" hidden>
                <input type="text" class="question_2 QNA" hidden>
                <input type="text" class="question_3 QNA" hidden>




                <div class="answerButton d-flex justify-content-center">
                  <button class="btn pre_btn btn-secondary" onclick="slidControl(-1)">Prev</button>
                  <button class="btn btn-secondary" onclick="setAnswerKey(0)">1</button>
                  <button class="btn btn-secondary" onclick="setAnswerKey(1)">2</button>
                  <button class="btn btn-secondary" onclick="setAnswerKey(2)">3</button>
                  <button class="btn btn-secondary" onclick="setAnswerKey(3)">4</button>
                  <button class="btn nex_btn btn-secondary" onclick="slidControl(1)">Next</button>
                </div>
                <div class="answerTextarea">

                </div>
                <div class="questionTextarea">

                </div>

              </div>


            </div>




          </div>


          <div class="tab-pane fade" id="v-pills-list_card" role="tabpanel" aria-labelledby="v-pills-list_card-tab">
          

            <div class="paper_container">

            </div>

          
            <div class="paper" id="other_user_card">
              <input type="text" name="" class="csid_other_user" hidden>
              <input type="number" class="pri_level"hidden>
              <input type="text" class="title_saved"hidden>
              <p style="position: absolute;" class="title_titied"></p>
        
              <hr style="margin-top:20px;background: red;">
             <p style="position: absolute; " class="id_titied"></p>
             
              <hr style="margin-top:20px">
              <p style="position: absolute; " class="category_titied"></p>
              <hr style="margin-top:20px">
           
              <hr style="margin-top:20px">
              <hr style="margin-top:20px">
              <hr style="margin-top:20px">
              
          </div>


          </div>

          <div class="tab-pane fade" id="v-pills-list_card2" role="tabpanel" aria-labelledby="v-pills-list_card2-tab">
            
            

                <div id="myset_container"style="    margin: auto;
                width: fit-content;">

<div class="my_list_set"  id ="first_cloned_mylist_clone">

  <P class="title" style="font-size: 30px;"></P>
  <hr style="opacity: 0;">
 
  <hr style="background: red; margin-top:0px";>
  <hr>
  <hr>
                        <hr>
                        <hr>
                        <hr>
                        <hr>
                        
  

                        <hr>
                        <hr>
    </div>
 


               


                <div class="controller" style="width: fit-content; margin: auto;display: none;" id= "controller_copy">
                  <div class="dropdown  " style="width: fit-content; margin: auto;
                  display: inline-block;"> 


                    <button style="background: white;color:black;
                    width: 200px;" class="btn btn-secondary oneWithAuto dropdown-toggle" type="button"
                      id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      현재 권한 있는 아이디
                                               </button>
                                          <div class="dropdown-menu text-center card_set_list_2" aria-labelledby="dropdownMenuButton">
                                       
                                        </div>
                      </div>
                                        <button class="btn btn-primary cus_button"
                                     
                                          
                                          onclick="deleteMyPer()">삭제하기</button> 
                                      <button 
                                    
                                      
                                      class="btn btn-primary cus_button" onclick="deleteMySet()">단어장 삭제하기</button>
                                      <button 
                                      
                                    
                                      
                                      class="btn btn-primary cus_button" onclick="goToMyset()">단어장 보기/수정</button>
              
                </div>
                
              </div>
                
                   
  
                
                <div  style="width: fit-content;
                margin: auto;">
                
                  <div class="omrs-input-group" style="margin: 5px;margin-right: 17px; width: 32.4375rem;">
                    <label class="omrs-input-underlined">
                      <input style="    height: 50px;
                    background: whitesmoke; text-align: center;
                    width: 340px;
                 " id="add_permisson_2">
                 <div class="dropdown " style="width: fit-content;
                 display: inline;
               width: 261px;
            
               ">
                 <button style="background: white;color:black;" class="btn btn-secondary dropdown-toggle set_autho" type="button"
                   id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   읽기만
                                            </button>
                                       <div class="dropdown-menu text-center " aria-labelledby="dropdownMenuButton">
           
           
                                         <button class="dropdown-item" onclick="setval2(this);">
                                             읽기만
                                         </button>
                                         <button class="dropdown-item" onclick="setval2(this);">
                                             읽기/수정
                                         </button>
                                        
                                     </div>
                                 </div>
                 
                 <button class="btn btn-primary reqest_aud  cus_button"
                                 style="
                                margin-top:4px;
                                 width: 100%;
                                ;"
                 
                 > 추가하기</button>
                      <span class="omrs-input-label">권한 추가하기</span>
                    </label>
                  </div>
                </div>
                <div style="width: fit-content;
                margin: auto;">
                  
                  <button class="btn myPrev">
                  <i class="material-icons" style="font-size: 48px;width: 48px;">
                    keyboard_arrow_left
                  </i>
                </button>
                  <button class="btn myNext">
                    <i class="material-icons" style="font-size: 48px;width: 48px;">
                      keyboard_arrow_right
                    </i>
                  </button>
                </div>






            <!-- <div class="paper" id="my_list_set">
              <input type="text" name="" class="csid_other_user" hidden>
              <input type="number" class="pri_level"hidden>
              <p style="position: absolute;" class="title_titied"></p>
        
              <hr style="margin-top:20px;background: red;">
             <p style="position: absolute; " class="id_titied"></p>
             
              <hr style="margin-top:20px">
              <p style="position: absolute; " class="category_titied"></p>
              <hr style="margin-top:20px">
           
              <hr style="margin-top:20px">
              <hr style="margin-top:20px">
              <hr style="margin-top:20px">
              
          </div> -->
          </div>
          <button class="dropdown-item" id="list_D222" onclick="setval3(this);">Action</button>
          <div class="tab-pane fade  list-group" id="v-card-list" role="tabpanel" aria-labelledby="v-card-list-tab">

            <div class="center_center2">
              <div class="omrs-input-group" style="margin: 5px;margin-right: 17px;">
                <label class="omrs-input-underlined">
                  <input style="height: 50px;
                background: whitesmoke; text-align: center;
                width: 340px;
             " id="title_val">
                  <span class="omrs-input-label">제목</span>
                </label>
              </div>
            </div>
            <!-- *******************************************************-->
            <div class="card_list_wrapper" id="v-card-list_to">
              <div class="card_word_wrapper" id="cloneCard">
                <div class=" flashCardEditWrapper">
                  <input type="file" class="imgupload" accept="image/*" style="display:none" />
                  <div class="col toolbarCard">

                    <div class="flashStep op_h">1</div>
                    <button class="btn but_siz switchLocation op_h" onclick="add();">
                      <i class="material-icons">
                        add
                      </i>
                    </button>
                    <button class="btn but_siz flashOption op_h" onclick="deleteWord(this)">

                      <i class="material-icons">
                        delete
                      </i>
                    </button>
                 
                    <button class="btn but_siz flashOption op_h">
                      <i class=" visbility material-icons">
                        visibility
                      </i>
                    </button>

                    <hr>



                  </div>



                  <div class=" flashCardEditDef">
                    <div class="defOfWord redB">
                      <textarea class="textSetting  "></textarea>

                    </div>
                    <div class="meanOfWord redB">
                      <textarea class="textSetting "></textarea>
                    </div>



                  </div>


                </div>

              </div>
            </div>


            <div class="card_list_wrapper create_new" style="margin-top: 83px;">
              <button class="btn" onclick="add();">
                <i class="material-icons">
                  add
                </i>
              </button>
            </div>





            <!-- *******************************************************-->







          </div>








          <!-- *************************설정**********************-->

          <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
            <div>





              <div class="row colorOption bordRound" style="margin: auto;">


                <div class="col" id="load_set">
                  <div class="optionView  bordRound text-center">d-inline</div>

                  <div class="dropdown " style="width: fit-content;
                  position: absolute;
                  top: 12px;
                  right: -158px;">
                    <button style="background: orange;" class="btn btn-secondary dropdown-toggle" type="button"
                      id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      시작 카드 세트
                    </button>

                    <div class="dropdown-menu text-center" id="card_set_list" aria-labelledby="dropdownMenuButton">
                      <button class="dropdown-item" id="list_D" onclick="setval(this);">Action</button>


                    </div>
                  </div>

                </div>

                <div class="col" style="padding:0px;    ">
                  <div class="colorpreview bordRound text-center">
                    Preview
                  </div>



                </div>


              </div>

              <div class="row">

                <btu div class="col center_center2">
                  <div id="user_text_color" class="bordRound center_center text-center">
                    글 색갈
                  </div>

                  <button id="user_text_size" class="bordRound center_center btn">
                    글 크기
                  </button>
                  <button id="user_text_font" class="bordRound center_center btn">
                    글꼴
                  </button>
              </div>

            </div>


          </div>
          <!--설정 ends here *********************************************-->


        </div>




      </div>
    </div>
  </div>
  <!--  </div> -->




</body>
<!---->


<script>

function goToMyset()
{
  { 
    var mycsid = $("#csid_val").val();
    var mytitle = $(".my_list_set").eq(myCounter).find(".title").text().trim();
    var cc = "?csid=" + mycsid + "&title=" +mytitle;

    location.href = "http://192.168.10.13:8800/spring/flashcardMine.fl" + cc

  }
}
function deleteMyPer()
{
  var title = $(".my_list_set").eq(myCounter).find(".title").text();
  var per = $(".controller").eq(myCounter).find(".oneWithAuto").text();
  var unset = {}

  $.ajax(
      {
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify({
          userID: per,
          _id: $("#csid_val").val(),
          unset : {["privilege."+title+"."+per]  : ""}
      }),
        url: 'http://192.168.10.13:1222/deleteRequest',
        success: function (data) {
          if(data ==true)
          {
            console.log("삭제가 완료되었습니다.")
            $(".controller").eq(myCounter).find(".dropdown-item").each(
              function(){
                if($(this).text() == per)
                {
                  console.log($(this).text())
                  $(this).remove();
                }
              })
              $(".controller").eq(myCounter).find(".oneWithAuto").text("현재 권한 있는 아이디");
          }  
          else
          {
            console.log("삭제가 실패.")
          }
       

        },
        error: function () {
          //alert("데이타베이스 연결에 실패하여씁니다!");
          console.log("error has occured retriving data from MongoServer")
        }
      })

}
function deleteMySet()
{
 
  var title = $(".my_list_set").eq(myCounter).find(".title").text();
  var per = $(".controller").eq(myCounter).find(".oneWithAuto").text();
  if(title != "")
  {
    var unset = {
    ["card_word."+title]   : "",
    ["category."+title]   : "",
    ["privilege."+title]  : ""}
  $.ajax(
      {
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify({
          _id: $("#csid_val").val(),
          unset: unset
        
         
      }),
        url: 'http://192.168.10.13:1222/deleteRequest',
        success: function (data) {
          if(data ==true)
          location.href = "http://192.168.10.13:8800/spring/flashcard2.fl";

        },
        error: function () {
          //alert("데이타베이스 연결에 실패하여씁니다!");
          console.log("error has occured retriving data from MongoServer")
        }
      })
  }
  
}



$(".my_list_set").click(function(){
  var title= $(".my_list_set").eq(myCounter).find(".title").text();
/*   if($("#csid_val").val() != null)
  { 
    var mycsid = $("#csid_val").val();
    var mytitle = $(".my_list_set").eq(myCounter).find(".title").text().trim();
    var cc = "?csid=" + mycsid + "&title=" +mytitle;

    location.href = "http://192.168.10.13:8000/spring/flashcardMine.fl" + cc

  } */

})



var clone_mylist = $("#first_cloned_mylist_clone").clone(true, true).removeAttr('id');
$("#first_cloned_mylist_clone").removeAttr('id').remove();
var clone_myControl = $("#controller_copy").clone(true, true).removeAttr('id');
$("#controller_copy").removeAttr('id').remove();
var list_set_clone2 = $("#list_D222").clone(true, true).removeAttr('id');
$("#list_D222").removeAttr('id').remove();
function getMyList(){
  console.log("get my list")
  $.ajax(
      {
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify({ _id:   $("#csid_val").val() }),
        url: 'http://192.168.10.13:1222/mySet',
        success: function (data) {

        
          var key = Object.keys(data.card_word);
          title = Object.keys(data.card_word);
          var authority =data.privilege;
        
     
       
          for(var i = 0 ; i < key.length; i ++)
          {
            var temp = clone_mylist.clone(true,true);
            var temp_2 = clone_myControl.clone(true,true);
            
            temp.find(".title").text(key[i])
            if(authority.hasOwnProperty(key[i]) )
            {
              
              var list = Object.keys(data.privilege[key[i]]);
            
              for(var j = 0; j < list.length; j ++)
              {
                var aut = list_set_clone2.clone(true,true);
                aut.text(list[j]);
                temp_2.find(".card_set_list_2").append(aut);
              }
            
            }
           


            $("#myset_container").append(temp_2);
            $("#myset_container").append(temp);
          }
          
          
          $(".my_list_set").eq(0).show();
          $(".controller").eq(0).show();
        },
        error: function () {
          //alert("데이타베이스 연결에 실패하여씁니다!");
          console.log("error has occured retriving data from MongoServer")
        }
      })

}
/*

    $(".mySlides").each(function () {
      $(this).hide();
    })
    $(".mySlides").eq(curr_test_pos).show();

*/
function setval3(value)
{
    $(value).text()
   $(".controller").eq(myCounter).find(".oneWithAuto").text( $(value).text());
}
var myCounter = 0;

$(".myPrev").click(function(){
  myCounter = myCounter -1
  if(myCounter < 0)
        myCounter = $(".my_list_set").length-1;

  $(".my_list_set").each(function () {
      $(this).hide();
      $(".controller").hide();
    })
    $(".my_list_set").eq(myCounter).show();
    $(".controller").eq(myCounter).show();
   

})

$(".myNext").click(function(){
  myCounter = myCounter +1
  if(myCounter >= $(".my_list_set").length)
         myCounter = 0;
  
  $(".my_list_set").each(function () {
      $(this).hide();
      $(".controller").hide();
    })
    $(".my_list_set").eq(myCounter).show();
    $(".controller").eq(myCounter).show();

})

$(".reqest_aud").click(function(){
  
   var id = $("#add_permisson_2").val().trim()
  console.log(id);
  searchUser(id)
 
   
})
function setval2(e) {
    var new_title = $(e).text();
    $(".set_autho").text(new_title)
  }
function addAuthor(userval)
{

    console.log(userval);
    console.log($("#csid_val").val());
    var this_title = $(".my_list_set").eq(myCounter).find(".title").text();
    console.log(this_title +" is your title");
    var pri;
    if ($(".set_autho").text() == "읽기만")
    {
      pri =2;
    }
    else
    pri = 3;
    $.ajax(
      {
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify({
           _id: $("#csid_val").val(),
          userID: userval,
          title : this_title,
          pril : pri
         
      }),
        url: 'http://192.168.10.13:1222/addAuthor',
        success: function (data) {
            if(data == true)
            {
              var exist = false
              var temp = list_set_clone2.clone(true,true);
              console.log(temp.html())
              temp.html(userval);
              console.log(temp.html())
              
            $(".controller").eq(myCounter).find('.dropdown-item').each(function(){
              
               console.log();
               if(userval == $(this).text())
                exist = true
              })
              if( exist == false)
              $(".controller").eq(myCounter).find(".card_set_list_2").append(temp)

   
            }
      
        },
        error: function () {
          //alert("데이타베이스 연결에 실패하여씁니다!");
          console.log("error has occured retriving data from MongoServer")
        }
      })
  
 
}
function searchUser(search)
{
  $.ajax(
      {
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify({
           userID : search
      }),
        url: 'http://192.168.10.13:1222/checkUser',
        success: function (data) {
          console.log(data);
          if(data.taco == "taco")
          {
           alert("해당 유저는 존재하지 않습니다.")
         
          }
          else
          {
         
            addAuthor(search)
          }

        },
        error: function () {
          //alert("데이타베이스 연결에 실패하여씁니다!");
          console.log("error has occured retriving data from MongoServer")
        }
      })
}
</script>






<script>
  var title_vertified = false;
  var cloned;
  var slide_clone;


  $(function () {
    $("#v-card-list_to").sortable();
    //$(".optionABS").css({ 'opacity': 0 }).attr('readonly', true);
    cloned = $("#cloneCard").clone(true, true).removeAttr('id');
    slide_clone = $("#test_for_cloned").clone(true, true).removeAttr('id');
  
    $("#test_for_cloned").removeAttr('id').remove();
    $("#cloneCard").removeAttr('id').remove();

  })

  $("#v-card-list_to").on("sortstop", function (event, ui) {
    changePlaceholder();
  });




  function changePlaceholder() {
    var list = $('.card_word_wrapper');
    var len = list.length

    for (i = 0; i < len; i++) {
      var val = (i + 1);

      list.eq(i).find('.flashStep').text(val);
    }
  }


  function add() {
    var newClone = cloned.clone(true, true);

    $("#v-card-list_to").append(newClone);
    changePlaceholder();
  }


</script>
<script>
  var word_list_test = [];
  var word_mean_test = [];
  var current_title_val = "";
  

  var list_set_clone = $('#list_D').removeAttr('id').remove().clone(true, true)

  $(".flip-card").click(function () {
    var card = $(this).children().first();

    var check = card.hasClass("frontCard");
    if (check) {
      card.removeClass("frontCard")
    }
    else {
      card.addClass("frontCard");
    }
  });
  cardPairCloned = $('#onstartClone').clone(true, true).removeClass('active').removeAttr('id');
  $('#onstartClone').remove();



  $(".main_side a").click(function () {
    $('.visbility').each(function () {
      $(this).text("visibility");
    })
    $('.preview_textarea').hide();
  });
  function setval(e) {
    var new_title = $(e).text();
    $(".optionView").text(new_title);
  }
  getLoading();
  var cardPairCloned;
  let current = 0;
  let cardSize;
  let maxView;
  var cardCounterViewer = 1;

  $(function () {
    user_ID = "${ loginMember.mId }";
    if (user_ID.trim() == "")
      location.href = "http://192.168.10.13:8800/spring/login.me";
    $.ajax(
      {
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify({ userID: user_ID }),
        url: 'http://192.168.10.13:1222/csid',
        success: function (data) {

         
          if (data == "EMPTY")
            location.href = "http://192.168.10.13:8800/spring/flashcard.fl";
          $("#csid_val").val(data);
          getit();

        },
        error: function () {
          //alert("데이타베이스 연결에 실패하여씁니다!");
          console.log("error has occured retriving data from MongoServer")
        }
      })

  })

  function getit() {
    console.log($("#csid_val").val());

    if ($("#csid_val").val().trim() == "" || $("#csid_val").val() == null) {
      location.href = "http://192.168.10.13:8800/spring/flashcard.fl";
    }
    $.ajax({
      type: "POST",
      dataType: "json",
      contentType: "application/json; charset=utf-8",
      data: JSON.stringify({ _id: $("#csid_val").val() }),
      url: 'http://192.168.10.13:1222/getCardSet',
      success: function (data) {

        if(data =="NEW")
        {
          location.href = "http://192.168.10.13:8800/spring/flashcard.fl";
        }

        var key = Object.keys(data[1]);
        
        if (data[1][key].length > 0 && data[1][key] != "title_list") {
          console.log("데이타 불러오기 성공")
          var title = Object.keys(data[1])
          var set = data[1][title];
          var size = Object.keys(set[0]);

          for (var i = 0; i < size.length; i++) {
            var temp = cardPairCloned.clone(true, true);
            var temp2 = cloned.clone(true, true);
            var temp3 = slide_clone.clone(true, true);


            var key = Object.keys(set[0]);

            if (i == 0)
            temp.addClass('active');
        
            temp.find('.flip-card-front').text(key[i]);
            temp.find('.flip-card-back').text(set[0][key[i]]);

            temp2.find('.defOfWord>.textSetting').val(key[i]);
            temp2.find('.meanOfWord>.textSetting').val(set[0][key[i]]);

            temp3.find('.questionTextarea').html(key[i]);
            temp3.find('.answer_key').val(set[0][key[i]]);




            word_list_test.push(key[i]);
            word_mean_test.push(set[0][key[i]]);


            $(".slide_for_test").append(temp3);
            $("#v-card-list_to").append(temp2);
            $('#slide_contained').append(temp);
          }

          $('.cus_slides').eq(0).show();
          console.log("get Shared Set")
           getSharedSet();
           console.log("set Test Ques")
         //addTestQuestion();


          $(".mySlides").eq(0).find(".pre_btn").prop('disabled', true);
          $(".mySlides").eq($(".mySlides").length - 1).find(".nex_btn").prop('disabled', true);
          maxView = size.length;
          cardSize = maxView - 1;
          cardCounterViewer = current + 1;
          current_title_val  = title; 
          $("#titleCard").text(title);
          $("#original_title").val(title);
          $("#title_val").val(title);
          $('#load_set>.optionView').text(title);
          $("#cardCounter").text(cardCounterViewer + " / " + maxView);
          $(".carcPrevBtn").attr("disabled", true);

          changePlaceholder();
          set = data[2][Object.keys(data[2])];
          for (var i = 0; i < set.length; i++) {

            var temp3 = list_set_clone.clone(true, true);
            // 자기 세트 추가는 여기서 
            
            temp3.text(set[i]);
            
           // var my_list_cow = my_list_set.clone(true,true);


            $("#card_set_list").append(temp3);
          }
          console.log("get my set")
          getMyList();
          $(".loading_page").remove();
          $("#nav_sticky").show();
          $('.flashCardViewContainer').show();
         

        }
        else {

          location.href = "http://192.168.10.13:8800/spring/flashcard.fl";
        }


      },
      error: function () {
        alert("데이타베이스 연결에 실패하여씁니다!");
        console.log("error has occured retriving data from MongoServer")
      }
    })


  }
  // 다른 사람거 가져 오기 
  function getSharedSet()
  {

    var shared_flashed;

    shared_flashed = $("#other_user_card").clone(true, true).removeAttr('id');
    $("#other_user_card").removeAttr('id').remove();

    $.ajax(
      {
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify({
          search : user_ID
        }),
        url: 'http://192.168.10.13:1222/findPermisson',
        success: function (data) {

          console.log("getSHhared ste")
          if(data == "null")
          {
            console.log("no data");
          }
          else
          {
            var count_my = 0;
            for(var i =0 ; i < data.length;i++)
                 { 
                var temp_of  = shared_flashed.clone(true,true);
                var div = data[i];
                var CSID = data[i].CSID;
                var owner = data[i].ownerID;
                var title = data[i].title;
                var privilege = data[i].privilege;
                var cacy = data[i].category;
                if(CSID != $("#csid_val").val())
              { count_my++;
                temp_of.find(".csid_other_user").val(CSID);
                temp_of.find(".pri_level").val(privilege);
                temp_of.find(".title_saved").val(title);

                temp_of.find(".title_titied").text("제목: "+title);
                temp_of.find(".id_titied").text("작성자ID: "+owner);
                if(cacy == "undefined")
                temp_of.find(".category_titied").text("카테고리: "+cacy);
                else
                temp_of.find(".category_titied").text("카테고리: "+"없음");


                $(".paper_container").append(temp_of );
              }
              
          }
          if(count_my ==0)
            {
              console.log("데이타가 없습니다 from Jae ")
              $(".paper_container").append("<div style = 'width: fit-content;font-size: 500%;margin: auto;'>데이타가 없습니다</div>" );
            }
      
          }
          
        },
        error: function () {
          // alert("데이타베이스 연결에 실패하여씁니다!");
          console.log("error has occured retriving data from MongoServer")
        }
      })

  }




  function getLoading() {
    $("#nav_sticky").hide();
    $("#flashCardViewContainer").hide();
    var imgDir = 'resources/loading/load/';
    var imgArray = ['loading.gif', 'loading2.gif', 'loading3.gif', 'loading4.gif'];
    var imgIndex = 0;
    if (imgArray.length > 1) {

      imgIndex = Math.floor(Math.random() * imgArray.length);


      var imgPath = imgDir + imgArray[imgIndex];

      var left_d;
      var top_p;
      if (imgIndex == 0) {
        left_d = "54em";
        top_p = "23em";
      }
      else if (imgIndex == 1) {
        left_d = "54em";
        top_p = "23em";
      } else if (imgIndex == 2) {
        left_d = "40em";
        top_p = "9em";
      } else if (imgIndex == 3) {
        left_d = "18em";
        top_p = "-2em";
      }
      $(".loading_page").append("<img src='" + imgPath + "'/>").css({ "left": left_d, "top": top_p });
    }
  }
</script>







<script>
  // add flash card 

  $('.visbility').click(function () {
    var curr = $(this).text();
    var pos = $('.preview_textarea');
    console.log(curr);



    if (curr.trim() != "visibility") {
      $(this).text("visibility");

      pos.hide();
    }
    else {
      $('.visbility').each(function () {
        $(this).text("visibility");
      })
      $(this).text("visibility_off");
      var parent = $(this).parent().parent().parent();
      var def = parent.find('.defOfWord>textarea').val();

      var imag;
      var mean = parent.find('.meanOfWord>textarea').val();
      $(".preview_textarea").find('.flip-card-front').text(def);
      $(".preview_textarea").find('.flip-card-back').text(mean);
      pos.show();
    }
  })




</script>












<script>
  function dirText(num) {
    if (num == "1") {
      dir = "to left";
    }
    if (num == "2") {
      dir = "to right";
    }
    if (num == "3") {
      dir = "to top";
    }
    if (num == "4") {
      dir = "to bottom";
    }
    $("#gradPreview").css(
      { "background-image": "linear-gradient(" + dir + "," + color_1 + "," + color_2 });
  }
  function gradSet() {
    color_1 = $('.colorpreview').css('backgroundColor');
    color_2 = $('#gradPreview').css('backgroundColor');

    $(".colorpreview").css(
      { "background-image": "linear-gradient(" + dir + "," + color_1 + "," + color_2 }
    );
  }
  function gradDefault() {
    color_1 = $('.colorpreview').css('backgroundColor');
    console.log(color_1);
    $(".colorpreview").css({ "background-image": 'none' });

  }

  /*
      Create a new Picker instance and set the parent element.
      By default, the color picker is a popup which appears when you click the parent.
  */
  var parent = document.querySelector('.colorpreview');

  /*
      You can do what you want with the chosen color using two callbacks: onChange and onDone.
  */

  var picker2 = new Picker(
    {

      parent: document.querySelector("#user_text_color"),



    });
  var picker = new Picker(parent);
  picker.onDone = function (color) {
    parent.style.background = color.rgbaString;

  };
  picker2.onDone = function (color) {
    $(".colorpreview").css({ "color": color.rgbaString })
  };

</script>



<script>

  function test() {
    // document.getElementById("fullScreen").requestFullscreen();
    add();
  }

</script>


<script>
  //firstCard  secondCard thirdCard


  var curr_test_pos2 = 0;

    //이전 버튼
    $('.carcPrevBtn').click(function () {
     
      cardHandler(0);
    
      if(curr_test_pos2-1 > 0 )
      curr_test_pos2 = curr_test_pos2-1;
      $(".cus_slides").each(function () {
          $(this).hide();
       })
     
       $(".cus_slides").eq(curr_test_pos2).show();
    
    });
    // 다음 버튼
    $('.carcNextBtn').click(function () {
      cardHandler(1);
      console.log(curr_test_pos2)
      if(curr_test_pos2+1 < cardSize )
      curr_test_pos2 = curr_test_pos2+1;
      $(".cus_slides").each(function () {
               $(this).hide();
       })
       console.log(curr_test_pos2)
       $(".cus_slides").eq(curr_test_pos2).show();
    
    });

  function cardHandler(btn) {
    if (btn == 0 && current >= 0) {
      current = current - 1;
      if (current == 0) {
        $(".carcPrevBtn").attr("disabled", true);
      }
      else {
        $(".carcPrevBtn").attr("disabled", false);
        $(".carcNextBtn").attr("disabled", false);
      }
      
    }
    else if (btn == 1 && current < cardSize) {
     
      current = current + 1;
      if (current == cardSize) {
        $(".carcNextBtn").attr("disabled", true);

      }
      else {
        $(".carcNextBtn").attr("disabled", false);
        $(".carcPrevBtn").attr("disabled", false);
      }
    }
    cardCounterViewer = current + 1;
    $("#cardCounter").text(cardCounterViewer + " / " + maxView);
    console.log()
   

  }
</script>









<!---->


<script>
/* 
window.onscroll = function () { applySticky() };

var navbar = document.getElementById("nav_sticky");
var sticky = navbar.offsetTop;
var contents = $('.title_placeholder').html();

function applySticky() {
  if (window.pageYOffset >= sticky) {
    console.log(window.pageYOffset);
    console.log(sticky);
    console.log("sticky add")
    
    navbar.classList.add("sticky")
  } else {
    console.log("remove")
    navbar.classList.remove("sticky");
  }
}
 */

</script>
<script>
  // sticky navbar 



  $(".navbarOp .home_view").click(function () {

    $("#display_home").show();
    $("#display_edit").hide();

  })

  $(".navbarOp .test_view").click(function () {

    $("#display_home").hide();
    $("#display_edit").hide();

  })


  $(".navbarOp .edit_view").click(function () {

    $("#display_home").hide();
    $("#display_edit").show();

  })

  $(".navbarOp .setting_view").click(function () {

    $("#display_home").hide();
    $("#display_edit").hide();

  })

  function deleteWord(word) {
    var card = $(word).parent().parent().parent();
 
  
    if ($(".card_word_wrapper").length > 6) {
      card.remove();
    }
    else {
      alert("카드는 최소 6 장 이상 이여야합니다")
    }

    changePlaceholder();
  }


  function addPicture(add) {
    var addPic = $(add).parent().parent().find(".imgupload");
    addPic.click();


  }
</script>


<script>

$(".paper").click(function(){
  // alert("my level is " + $(this).find(".pri_level").val());
  if($(this).find(".pri_level").val() >2)
  {
    var mycsid = $(this).find(".csid_other_user").val();
    var mytitle = $(this).find(".title_saved").val();
    var cc = "?csid=" + mycsid + "&title=" + mytitle+ "&edit=true";
    console.log(cc);
    location.href = "flashcard_other_RO.fl"+ cc 
    
  }
  else
  {
    var mycsid = $(this).find(".csid_other_user").val();;
    var mytitle = $(this).find(".title_saved").val();
    var cc = "?csid=" + mycsid + "&title=" + mytitle;
    console.log(cc);
    location.href = "flashcard_other_RO.fl"+cc;
  }
 
})

function noDuplicateWord() {
    var duplicate = true;
    var size_of = $(".card_word_wrapper").length;
    console.log(size_of);
    
    for (var i = 0; i < size_of; i++) {
      for (var j = 0; j < size_of; j++) {

        var a = $(".card_word_wrapper").eq(i).find(".defOfWord>.textSetting").val();
        var b = $(".card_word_wrapper").eq(j).find(".defOfWord>.textSetting").val();
       
        if(i !=j && a == b)
        {  
         alert((i+1) + " 번쨰 단어와 " + (j+1) + " 번쨰 단가 중복입니다." );
          duplicate= false;
         
          break;
        }
        
      }
      if(duplicate == false)
          break;
    }
  

    return duplicate;
  }

  function save() {
   
    var card = $(".card_word_wrapper");
    var title = $("#title_val").val().trim();
    var orginal_tt = $("#original_title").val().trim();
    var card_type = $("#per_public").text().trim();
    var list = [];
    var temp = {};
    
    console.log("타이틀 입력")

    
    if ( title != "" ) {
      console.log("title")
      if (card.length >= 6) {
        card.each(
          function () {
            var def = $(this).find(".defOfWord>.textSetting").val();
            var mean = $(this).find(".meanOfWord>.textSetting").val();
            temp[[def]] = mean;
          }
        )
        list.push(temp);
     
        var send;

        var csid = $("#csid_val").val();
        send = JSON.stringify({
          _id: csid,
          userID: user_ID,
          [title]: list
        })
        var send2 = JSON.stringify({
          _id: csid,
          userID: user_ID,
          [title]: list,
          orginal: orginal_tt,
          rename: $("#title_val").val().trim()
        })

      
        if (title != $("#original_title").val().trim()) {
          console.log("동일하지 않은 타일틀")
          rename_request(send2, title);
         

        }
        else if (title == $("#original_title").val().trim()) {
          console.log("동일한 타이틀")
          request(send)
        }


      } else {
        alert(
          "카드는 최소 6 장 이상 이여야합니다"
        )
      }



    }

  }


  function request(data_isSending) {
    $.ajax(
      {
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        data: data_isSending,
        url: 'http://192.168.10.13:1222/findAndUpdate',
        success: function (data) {

            if(data == true)
            {
              location.href = "http://192.168.10.13:8800/spring/flashcard2.fl";
            }
            else
            {
              alert("에러 발생")
            }

        },
        error: function () {
          // alert("데이타베이스 연결에 실패하여씁니다!");
          console.log("error has occured retriving data from MongoServer")
        }
      })
  }
  function deleteOriginal(orginal , new_title_x) {

    $.ajax(
      {
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        data: to_delete,
        url: 'http://192.168.10.13:1222/delete_orginal_title',
        success: function (data) {
          $("#original_title").val(new_title_x);

        },
        error: function () {
          // alert("데이타베이스 연결에 실패하여씁니다!");
          console.log("error has occured retriving data from MongoServer")
        }
      })
  }


  // 리스트 불러오기 
  function checkTitleDuplicate() {
    var title = $("#title_val").val().trim();
    if(noDuplicateWord() == true ) 
    {
      $.ajax(

{
  type: "POST",
  dataType: "json",
  contentType: "application/json; charset=utf-8",
  data: JSON.stringify({
    _id: $("#csid_val").val(),
    newTitle: title
  }),
  url: 'http://192.168.10.13:1222/checkDup',
  success: function (data) {

    if (data.taco == "taco") {
      title_vertified = false;
      if(title == $("#original_title").val())
      {
        title_vertified = true;
        save();
      }
    
      else
      alert("중복되는 타이틀은 입력하실수 없습니다.")
    }
    else {
      {
        title_vertified = true;
        save();
        console.log("사용 가능한 타이틀")
      }
     
    }
  },
  error: function () {
    /// alert("데이타베이스 연결에 실패하여씁니다!");
    console.log("error has occured retriving data from MongoServer")
  }
})
    }
    
  }

  function rename_request(request_send) {
    console.log("rename requesting")
    $.ajax(
      {
        type: "POST",
        dataType: "json",
        contentType: "application/json; charset=utf-8",
        data: request_send,
        url: 'http://192.168.10.13:1222/renameAndUpdate',
        success: function (data) {

            if(data == true)
            {
                location.href = "http://192.168.10.13:8800/spring/flashcard2.fl"
            } 
            else
            {
              alert("failed")
            }
        },
        error: function () {
          // alert("데이타베이스 연결에 실패하여씁니다!");
          console.log("error has occured retriving data from MongoServer")
        }
      })
  }

</script>

<script>

  // slide for test 
  var curr_test_pos = 0;
  var test_slide_size = $(".mySlides").length;
  function slidControl(num) {
    curr_test_pos += num;
    if (curr_test_pos == 0) {
      // disable_prev


    }
    else if (curr_test_pos == test_slide_size) {
      // disable_next and show score_button_enable
    }

    $(".mySlides").each(function () {
      $(this).hide();
    })
    $(".mySlides").eq(curr_test_pos).show();


  }


  function addTestQuestion() {
    var size = $(".mySlides").length;
    var slides = $(".mySlides");
    for (var int = 0; int < size; int++) {

      var answer = slides.eq(int).find(".answer_key").val().trim();
    
      var rand_ans = Math.floor(Math.random() * 4);
      var check_dup = [];
      for (var j = 0; j < 4; j++) {
        if (j == rand_ans) {

          slides.eq(int).find(".question_" + j).val(answer);
          check_dup.push(answer);
        }
        else {
          var rand = Math.floor(Math.random() * word_mean_test.length);
       
          if (word_mean_test[rand] == answer) {
            j--;
          }
          else {
            var dup = false;
            for (var x = 0; x < check_dup.length; x++) {
              if (word_mean_test[rand] == check_dup[x]) {
                dup = true;
                j--;
                break;
              }
            }
            if (dup == false) {
              slides.eq(int).find(".question_" + j).val(word_mean_test[rand]);
              check_dup.push(word_mean_test[rand]);
            }

          }
        }

      }



    }

    $(".container_test").eq(0).show();
  }

  function setAnswerKey(num) {

    var cur = $(".mySlides").eq(curr_test_pos);
    var text = cur.find(".question_" + num).val()
    cur.find(".answerTextarea").html(text)


    cur.find(".user_answer_key").val(text)

    if (cur.find(".user_answer_key").val() == cur.find(".answer_key").val()) {
      console.log("correct answer")
    }
  }


</script>

<script>

  $('.text_view').hover(function(){
    $(this).tooltip('show')
  })
</script>
</html>