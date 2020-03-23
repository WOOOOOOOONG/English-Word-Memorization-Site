<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <jsp:include page="../common/menubar.jsp" />
   <!DOCTYPE html>
   <html>
   
   <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
   
     <link rel="stylesheet" media="screen" type="text/css" href="css/colorpicker.css" />
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
     integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
     <script src="https://unpkg.com/vanilla-picker@2"></script>
     <link href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css" rel="stylesheet">
     <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
   
     <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    
   
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
     <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
   
     <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
   
     
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
       integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
       crossorigin="anonymous"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
       integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
       crossorigin="anonymous"></script>
   
   </head>
   <style>
     body {
       font-family: Arial, Helvetica, sans-serif;
     }
    
     .main_side a
     {
      
       color:orange;
     }
     .nav-pills .nav-link.active, .nav-pills .show>.nav-link {
       color: rgb(70, 132, 226);
       background-color:#b2eec6;
   }
     .main_side
     {
       background:#cff0da;
     }
   
   
     .flip-card {
       background-color: transparent;
       width: 600px;
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
       background-color: #bbb;
       color: black;
     }
   
     .flip-card-back {
       background-color: #2980b9;
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
       display: none;
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
       height: 235px;
       background-color: white;
       box-shadow: 1px 1px 4px rgb(185, 178, 178);
       display: inline-block;
       width: 100%;
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
       width: 10%;
   
       float: left;
     }
   
     .switchLocation {
       margin-left: 73%;
   
       float: left;
     }
   
     .switchLocation>i {
       float: right;
       margin-right: 2px;
     }
   
   
   
     .flashCardEditDef {
       display: flex;
   
     }
   
     .flashOption {
   
       margin: 0px;
   
     }
   
     .redB {
       border: 1px solid gainsboro;
     }
   
     .defOfWord {
       height: 150px;
       width: 45%;
       margin-left: 2.5%;
       margin-right: 2.5%;
   
     }
   
     .meanOfWord {
       height: 150px;
       width: 45%;
   
       margin-right: 2.5%;
     }
   
     .textSetting {
       resize: none;
       width: 100%;
       height: 100%;
     }
   
     .textSetting2 {
       resize: none;
       width: 50%;
       height: 100%;
     }
   
     hr {
       border-top: 2px solid rgba(0, 0, 0, .2);
     }
   
     .optionABS {
       width: 42px;
       padding-top: 65px;
       box-shadow: 1px 2px 1px rgba(206, 200, 200, 0.2);
       float: right;
   
   
     }
   
     .preview_textarea {
       box-shadow: 1px 2px 1px rgba(206, 200, 200, 0.2);
     
       margin-left: 38%;
       margin-top: 20%;
       width: 600px;
       height: 400px;
       position: fixed;
       z-index: 10;
     }
   
     .but_siz {
       height: 33px !important;
     }
   
     .margin100px {
       margin-right: 100px;
     }
   
     .optionView {
       margin-top: 8px;
       margin-left: 4px;
       width: 493px;
       
       font-size: 24px;
       color:white;
       background-color: orange;
       display: inline-block;
       height: 100%;
   
     }
   
     .colorOption {
       border: 1px double burlywood;
       margin-left: 200px;
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
       color:white;
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
     .text_settings
     {
       font-size: 300%;
       align-items: center;
       display: flex;
       justify-content: center;
     }
   
     .loading_page
     {
       position: relative;
     left: 1em;
     top: 1em;
     }
     .center_center
     { height: 38px;
       width: 150px;
       align-items: center;
       display: flex;
       background: orange;
       color: white;
       margin-top: 10px;
       justify-content: center;
     }
     .save-button
     {
       display: fixed;
     }
     .center_center
     {
   
       align-items: center;
       display: flex;
    
    
       justify-content: center;
     }
   </style>
   
   <body>
     <div class="preview_textarea text_settings" style="display: none;">
   
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
     <div class="loading_page">
       
     </div>
     <div class="flashCardViewContainer">
       <div class="commercial">
         <h1> 광고 들어갑쇼~ 돈이 들어옵쇼~</h1>
       </div>
   
       <h1 id="titleCard">title</h1>
       <div class="row">
         <div class="col-sm main_side" style="box-shadow:  3px 2px 3px 2px rgba(0, 0, 0, .2); height:400px; padding:10px">
           <div class="navbarOp nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
   
   
             <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab"
               aria-controls="v-pills-home" aria-selected="true">
               <i class="material-icons">home</i><span class="btnText">메인으로</span>
   
             </a>
             <a class="nav-link" id="v-card-list-tab" data-toggle="pill" href="#v-card-list" role="tab"
               aria-controls="v-card-list" aria-selected="false">
               <i class="material-icons">dynamic_feed</i><span class="btnText">세트 리스트</span>
   
             </a>
             <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab"
               aria-controls="v-pills-settings" aria-selected="false">
   
               <i class="material-icons">settings</i><span class="btnText">설정</span>
             </a>
           </div>
         </div>
         <div class="col-10">
           <div class="tab-content" id="v-pills-tabContent">
   
   
             <!-- flash card starts here -->
   
             <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
   
               <div class="container" id="fullScreen">
   
                 <div id = "placetoappend" class="carousel slide" data-ride="carousel" data-interval="false">
   
                   <div class="carousel-inner" >
   
                     <div class="carousel-item  active " id="onstartClone">
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
   
   
                     <!-- 버튼 추가는 여기에 -->
   
                   </div>
   
                 </div>
   
   
                 <div class="row" id="controlBTN">
                   <div class="col text-center">
                     <button class="btn btn-primary carcPrevBtn ">
                       이전</button>
                   </div>
                   <div id="cardCounter" class="col text-center cardTextSetting">
   
                   </div>
                   <div class="col text-center ">
                     <button class="btn btn-primary carcNextBtn">
                       다음</button>
                   </div>
                 </div>
   
               </div>
   
   
   
   
               <!-- flash card starts  ends here -->
   
             </div>
   
   
   
   
   
   
             <div class="tab-pane fade list-group" id="v-card-list" role="tabpanel" aria-labelledby="v-card-list-tab">
   
   
   
               <!-- *******************************************************-->
               <div class="card_pair list-group-item " id="cloneCard">
                 <div class=" flashCardEditWrapper">
   
                   <div class="col toolbarCard">
   
                     <div class="flashStep op_h">1</div>
                     <button class="btn but_siz switchLocation op_h" onclick= "add();">
                       <i class="material-icons">
                         add
                       </i>
                     </button>
                     <button class="btn but_siz flashOption op_h">
   
                       <i class="material-icons">
                         delete
                       </i>
                     </button>
                     <button class="btn but_siz flashOption op_h">
   
                       <i class="material-icons">
                         image
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
   
   
                 <!-- option -->
           
               </div>
   
               <!-- *******************************************************-->
               <div class = "save-button">
                 <button class="btn btn-primary">
                   저장
                 </button>
   
               </div>
   
   
               
   
             </div>
   
   
   
   
   
   
   
   
             <!-- *************************설정**********************-->
   
             <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
               <div class="row">
   
                
             
   
   
               <div class="row colorOption bordRound">
                 <div class="col" id = "load_set">
                   <div class="optionView  bordRound text-center">d-inline</div>
                  
   
               </div>
                 <div class="col" style="padding:0px">
                   <div class="colorpreview bordRound text-center">
                     Preview
                   </div>
   
                   
   
                 </div>
              
               </div>
   
               <div class="col" style="padding-top: 21px; padding-left: 161px; display: block; width: 200px;">
                        <div class="dropdown margin100px" >
                         <button style="background: orange;" class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           시작 카드 세트
                           </button>
       
                         <div class="dropdown-menu text-center" id = "card_set_list"aria-labelledby="dropdownMenuButton" >
                           <button class="dropdown-item" id= "list_D" onclick = "setval(this);">Action</button>
                          
                           
                       </div>
                     </div>
       
                     <div id="user_text_color" class = "bordRound center_center text-center">
                         글 색갈
                     </div>
   
                     <div id="user_text_size" class = "bordRound  center_center text-center">
                        글 크기
                     </div>
                     <div id="user_text_font" class = "bordRound  center_center text-center">
                       글꼴
                    </div>
   
                 
               </div>
        
   
             </div>
             <!--설정 ends here *********************************************-->
             <button onclick="">test </button>
   
   
           </div>
   
   
   
   
         </div>
       </div>
     </div>
     </div>
   
   
   
   
   </body>
   
   <script>
   $(".main_side a").click(function(){
     $('.visbility').each(function () {
           $(this).text("visibility");
         })
     $('.preview_textarea').hide();
   });
   function setval(e)
   {
     var new_title = $(e).text(); 
     $(".optionView").text(new_title);
   }
   </script>
   
   <script>
     
     var cardPairCloned;
     let current = 0;
     let cardSize ;
     let maxView ;
     var cardCounterViewer = 1;
     
     $(function () {
     
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
       
   
   
       var _id = "CSID_44"
      // var send = JSON.stringify({ title: title, id: id, _id, _id });
      getLoading();
       //cardCounter 
       $.ajax({
         type: "POST",
         dataType: "json",
         contentType: "application/json; charset=utf-8",
         data: JSON.stringify({ title : "test1", id : "user1234",_id: "CSID_44" }),
         url: 'http://localhost:1222/getCardSet',
         success: function (data) {
           var key = Object.keys(data[1]);
           console.log(key);
           console.log(key.length);
           if(key.length> 0 && key != "title_list"){
             var title = Object.keys(data[1])
           var set = data[1][title];
           
           for (var i = 0; i < set.length; i++) {
               var temp = cardPairCloned.clone(true,true);
               var temp2 = cloned.clone(true,true);
               
   
               var key = Object.keys(set[i]);
               if(i == 0)
                 temp.addClass('active');
               temp.find('.flip-card-front').text(key);
               temp.find('.flip-card-back').text(set[i][key]);
               
               temp2.find('.defOfWord>.textSetting').val(key);
               temp2.find('.meanOfWord>.textSetting').val(set[i][key]);
             
               $("#v-card-list").append(temp2);
             
               $('#placetoappend .carousel-inner').eq(0).append(temp);
           }
          
           maxView= set.length;
           cardSize = maxView-1;
           cardCounterViewer = current +1;
           $("#titleCard").text(title);
           $('#load_set>.optionView').text(title);
            $("#cardCounter").text(cardCounterViewer + " / " + maxView);
           changePlaceholder();
           set = data[2][Object.keys(data[2])];
           for (var i = 0; i < set.length; i++) {
   
             var temp3 = list_set_clone.clone(true,true);
        
               temp3.text(set[i]);
               $("#card_set_list").append(temp3);
           }
           $(".loading_page").remove();
           $('.flashCardViewContainer').show();
           }
           
           else
           {
   
             //redirect 
             alert("없어")
             $('.loading_page').hide();
           }
         
   
         },
         error: function () {
           alert("데이타베이스 연결에 실패하여씁니다!");
           console.log("error has occured retriving data from MongoServer")
         }
       })
   
   
     })
   
     
     function getLoading()
     {
   
       var imgDir = 'load/';
       var imgArray = ['loading.gif','loading2.gif','loading3.gif','loading4.gif'];
       var imgIndex = 0;
       if(imgArray.length > 1) {
       
       imgIndex = Math.floor(Math.random() * imgArray.length);
      
      
       var imgPath = imgDir + imgArray[imgIndex];
    
       var left_d;
       var top_p;
       if (imgIndex == 0)
       {
         left_d = "54em";
         top_p = "23em";
       }
       else if (imgIndex == 1)
       {
         left_d = "54em";
         top_p = "23em";
       } else if (imgIndex == 2)
       {
         left_d = "40em";
         top_p = "9em";
       } else if (imgIndex == 3)
       {
         left_d= "18em";
         top_p= "-2em";
       }
       $(".loading_page").append("<img src='"+imgPath+"'/>").css({"left":left_d, "top":top_p});
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
         var parent =  $(this).parent().parent().parent();
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
       $(".colorpreview").css( { "background-image":'none'});
     
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
       $(".colorpreview").css({"color":color.rgbaString})
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
   
   
   
     let slidPlayerOp = false;
   
   
     function cycle() {
       $('.carousel').carousel('cycle');
     }
     function pause() {
       $('.carousel').carousel('pause');
     }
   
   
   
   
   
     $(function () {
       
       
       pause();
       $(".carcPrevBtn").attr("disabled", true);
   
   
       //이전 버튼
       $('.carcPrevBtn').click(function () {
         cardHandler(0);
         $('.carousel').carousel('prev');
         if (!slidPlayerOp)
           pause();
   
       });
       // 다음 버튼
       $('.carcNextBtn').click(function () {
           cardHandler(1);
         $('.carousel').carousel('next');
         if (!slidPlayerOp)
           pause();
       });
   
   
   
     });
     function cardHandler(btn) {
       if(btn == 0 && current >= 0)
       { 
         current = current - 1;
         if(current == 0)
           {
             $(".carcPrevBtn").attr("disabled", true);
           }
           else
           {
             $(".carcPrevBtn").attr("disabled", false);
             $(".carcNextBtn").attr("disabled", false);
           }
       }
       else if(btn == 1 && current < cardSize)
       {
         current = current + 1;
         if(current == cardSize)
           {
             $(".carcNextBtn").attr("disabled", true);
          
           }
           else
           {
             $(".carcNextBtn").attr("disabled", false);
             $(".carcPrevBtn").attr("disabled", false);
           }
       }
       cardCounterViewer = current +1;
       $("#cardCounter").text(cardCounterViewer + " / " + maxView);
     }
   </script>
   <script>
   
   
   
   </script>
   
   
   <script>
     var cloned;
     $(function () {
       $("#v-card-list").sortable();
       //$(".optionABS").css({ 'opacity': 0 }).attr('readonly', true);
       cloned = $("#cloneCard").clone(true, true);
       $("#cloneCard").removeAttr('id').remove();
   
     })
   
     $("#v-card-list").on("sortstop", function (event, ui) {
       changePlaceholder();
     });
   
   
   
   
     function changePlaceholder() {
       var list = $('.list-group-item');
       var len = list.length
   
       for (i = 0; i < len; i++) {
         var val = (i + 1);
   
         list.eq(i).find('.flashStep').text(val);
       }
     }
   
   
     function add() {
       var newClone = cloned.clone(true, true);
   
       $("#v-card-list").append(newClone);
       changePlaceholder();
     }
   
   
   </script>
   
   </html>