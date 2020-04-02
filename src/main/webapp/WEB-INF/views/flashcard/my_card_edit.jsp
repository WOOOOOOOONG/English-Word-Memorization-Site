<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../common/menubar.jsp" />

<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">


  <link rel="stylesheet" href="resources/css/cus_input.css">

  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

  <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">


  <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>




  <title>Document</title>
</head>

<style>
  #nav_sticky {
    height: 65px;
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

  .save_buttno-color {
    background-color: red;
    margin-right: 10%;
    float: right;
    z-index: 100;
  }

  .btn-primary {
    background-color: none !important;

  }

  .btn_top {
    width: 40px !important;
  }

  .title_placeholder {

    border-bottom: 4px black solid;
    height: 50px;
    width: 400px;
    background: rgba(179, 221, 207, 0.075);
    font-size: 2vw;
    margin-top: 7px;
    display: inline-block;
    text-align: center;
    margin-right: 5px;
    outline-width: 0;
    opacity: 0.5;
  }

  .title_placeholder:focus {
    opacity: 1;
  }

  .center_center {
    
    align-items: center;
    display: inline-block;
    justify-content: center;
  }

  .titleplacehodler {

    left: 33%;
    position: absolute;
    font-size: 2vw;
    color: grey;
  }

  #tempPlachodler {
    position: absolute;
    user-select: none;
    font-size: 2vw;
    left: 38%;
    color: grey;
  }

  .top_op {
    margin-left: 10px;
  }

  .top_op .btn {

    width: 110px
  }

  .top_op_2 {
    margin-left: 10px;
    display: none;
    outline-width: 0;

  }

  .top_op_2 .btn {
    width: 110px;
    font-size: 12px;
    text-align: center;
  }

  .top_op_2 .btn:focus {
    outline: 0;
    box-shadow: none;
  }

  .but_siz:focus {
    outline: none;
    box-shadow: none;
  }

  .btn:focus {
    outline: 0;
    box-shadow: none;
  }















  .card_word_wrapper {
    background: floralwhite;
    margin-top: 10px;
    height: 170px;
  }


  .toolbarCard {
    display: block;

  }

  .flashStep {
    width: 7%;
    text-align: center;
    font-size: 24px;
    font-weight: bold;
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




  .preview_textarea {
    box-shadow: 1px 2px 1px rgba(206, 200, 200, 0.2);
    margin-left: 17%;
    margin-top: 1%;
    width: 800px;
    height: 400px;
    position: absolute;
    z-index: 10;
  }



  .bordRound {
    border-top-left-radius: 12px;
    border-top-right-radius: 12px;
    border-bottom-left-radius: 12px;
    border-bottom-right-radius: 12px;
  }

  .card_list_wrapper {
    margin-right: 15%;
    margin-left: 15%;
    margin-top: 1%;
  }

  .create_new {
    text-align: center;
    background: #c7d1e266;
    height: 50px;
  }

  .textSetting:focus {

    border-bottom: 5px skyblue solid;
  }


  .text_settings {
    font-size: 500%;
    align-items: center;
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
  }
  .text_settings2 {
    font-size: 120%;;
    align-items: center;
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
  }

  .img_added {
    width: 50%;
    height: 100%;
  }

  .img_settings {
    width: 50%;
    height: 100%;
  }

  .imag_settings>img {
    max-width: 100%;
    max-height: 100%;
  }


  .flip-card {
    background-color: transparent;
    width: 800px;
    height: 400px;
    perspective: 1000px;
  }
  .cus_button:hover{
 font-weight: bolder;
 font-size: 20px;
 border-color:  #77b3cc;

 background: skyblue;
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


  .cus_slides
  { margin-top: 100px;
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

  
.cus_button{
 font-weight: bolder;
 font-size: 20px;
 border-color:  #77b3cc;;
 background: skyblue;
}
</style>

<body>
  <input type="text" id="original_title" hidden>

  <input type="text" name="" id="csid_val" hidden>
  <script>



    var userID = "${ loginMember.mId }";
    var userName = "${ loginMember.name }";
    user_ID = "${ loginMember.mId }";
    if (user_ID.trim() == "")
      location.href = "http://192.168.10.13:8800/spring/login.me";
    console.log(userID);
    var userID = "${ loginMember.mId }";
    var userName = "${ loginMember.name }";
    var retrive = false;
    var title_vertified = false;
    var cloned;
    var clone2;



$(function () {
  var new_csid= "${csid}";
      var new_title= "${title}"
      $("#original_title").val(new_title)
    $("#csid_val").val(new_csid)
console.log(new_csid)
console.log(new_title)
  $("#v-card-list").sortable();
  $("#title_val").val(new_title)
  cloned = $("#cloneCard").clone(true, true).removeAttr('id');
  cloned2= $("#onstartClone").clone(true, true).removeAttr('id');
  $("#cloneCard").removeAttr('id').remove();
  $("#onstartClone").removeAttr('id').remove();

  $.ajax(
          {
            type: "POST",
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(
              {
                _id : new_csid,
                card : new_title
              }
            ),
            url: 'http://192.168.10.13:1222/getOhterUser',
            success: function (data) {
              var title = Object.keys(data[1].card);
                
              $(".title_here").text(title[0]);
              var wordlist = data[1].card[title[0]];
              var defin = wordlist[0]
              var size =  Object.keys(defin); // key
              console.log(defin);
              for(var i = 0; i <size.length; i++)
              {    
                
                var newClone = cloned.clone(true, true);
                var newClone2 = cloned2.clone(true,true);
                  
                newClone2.find('.flip-card-front').html(size[i]);
                newClone2.find('.flip-card-back').html(defin[size[i]]);
               
                
                newClone.find('.defOfWord>.textSetting').val(size[i]);
                newClone.find('.meanOfWord>.textSetting').val(defin[size[i]]);
                $("#word_view_container").append(newClone2);
                
                $("#v-card-list").append(newClone);
              }
              $(".cus_slides").eq(0).show();
              changePlaceholder();
            },
            error: function () {
              // alert("데이타베이스 연결에 실패하여씁니다!");
              console.log("error has occured retriving data from MongoServer")
            }
          
           
  })
          


 /*  for (var i = 0; i < 6; i++) {
    var newClone = cloned.clone(true, true);

    $("#v-card-list").append(newClone);
    changePlaceholder();
  }
 */
 
})




    // 새로운 카드 생성 
    

  </script>

  <!--  sticky top -->

  <div class="" id="word_view_container" style="width: fit-content;margin:auto;">
      


  </div>
  <div style="margin:auto;width:fit-content">
    
      <button class="btn carcPrevBtn "><i class="material-icons" style="font-size: 48px;width: 48px;">
          keyboard_arrow_left
        </i></button>
        <span id= "cardCounter"></span>
      <button class="btn  carcNextBtn"> <i class="material-icons" style="font-size: 48px;width: 48px;">
          keyboard_arrow_right
        </i></button>
   
  </div>

 
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
 

<hr style="margin:80px">

  <div style="margin-top:150px;">
<div style = "width: fit-content;margin:auto">
  
  <div class="center_center2" style="    display: inline-block; ">
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
  <button class=  "btn btn-primary cus_button"    onclick="checkTitleDuplicate()">
    저장하기
  </button>
</div>

  <!--  sticky top -->
 




  <div class="card_list_wrapper " id="v-card-list">

    <div class="preview_textarea text_settings" style="display: none;">

      <div class="flip-card">
        <div class="flip-card-inner">
          <div class="flip-card-front text_settings2">
            <!-- 단어 -->
          </div>
          <div class="flip-card-back text_settings2 ">
          
  
          </div>
  
        </div>
  
      </div>
    </div>

    <!-- *******************************************************-->
    <div class="card_word_wrapper" id="cloneCard">
      <div class=" flashCardEditWrapper">
        <input type="file" class="imgupload" accept="image/*" style="display:none" />
        <div class="col toolbarCard">

          <div class="flashStep op_h">1</div>
          <button class="btn but_siz switchLocation op_h" onclick="addBelow();">
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
            <i class="visbility_icon material-icons">
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
    <!--****************************************************-->
  </div>
  <div class="card_list_wrapper create_new">
    <button class="btn" onclick="add();">
      <i class="material-icons">
        add
      </i>
    </button>
  </div>






  <!-- all the modal -->
  <div class="modal fade bd-example-modal-sm" id="myModal" tabindex="-1" role="dialog"
    aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-body">
          <p>제목은 25자 또는 이하여야합니다</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <div class="modal" id="myPublicOp" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header" style="background: rgb(43, 228, 235);color:white; ">
          <h5 class="modal-title" style="    font-size: 25px;">공개 옵션</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">

          <div class="col">
            공개범위 :
            <div class="dropdown" style="width: fit-content;
            display: inline-block;">
              <button class="btn btn-secondary dropdown-toggle" type="button" id="per_public" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                전체공개
              </button>
              <div class="dropdown-menu" aria-labelledby="per_public">
                <button class="dropdown-item" onclick="setPer(this)">개인</button>
                <button class="dropdown-item" onclick="setPer(this)">클래스</button>
                <button class="dropdown-item" onclick="setPer(this)">친구</button>
              </div>
            </div>
            <br>
            <br>
            <!--   복사권한 :
            <div class="dropdown" style="width: fit-content;
            display: inline-block;">
              <button class="btn btn-secondary dropdown-toggle" type="button" id="per_copy" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                전체공개
              </button>
              <div class="dropdown-menu" aria-labelledby="per_copy">
                <button class="dropdown-item" onclick="setCopy(this)">개인</button>
                <button class="dropdown-item" onclick="setCopy(this)">클래스</button>
                <button class="dropdown-item" onclick="setCopy(this)">친구</button>
              </div>
            </div> -->
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>


</div>


</body>









<script>
  // sticky navbar 

 

var curr_test_pos2 = 0;

//이전 버튼
$('.carcPrevBtn').click(function () {
  
  console.log("hello")
  
    
  console.log($(".cus_slides").length )
  if(curr_test_pos2-1 > 0 )
  curr_test_pos2 = curr_test_pos2-1;
  $(".cus_slides").each(function () {
      $(this).hide();
   })
 
   $(".cus_slides").eq(curr_test_pos2).show();

});
// 다음 버튼
$('.carcNextBtn').click(function () {

  console.log(curr_test_pos2)
  if(curr_test_pos2+1 <  $(".cus_slides").length )
  curr_test_pos2 = curr_test_pos2+1;
  $(".cus_slides").each(function () {
           $(this).hide();
   })
 
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
    else if (btn == 1 && current < $(".cus_slides").length) {
     
      current = current + 1;
      if (current == $(".cus_slides").length) {
        $(".carcNextBtn").attr("disabled", true);

      }
      else {
        $(".carcNextBtn").attr("disabled", false);
        $(".carcPrevBtn").attr("disabled", false);
      }
    }
    cardCounterViewer = current + 1;
    $("#cardCounter").text(cardCounterViewer + " / " + $(".cus_slides").length );
    console.log()
   

  }

  var before;
  $('#tempPlachodler').click(function () {
    $(this).hide();
    $('.title_placeholder').focus();
  })
  $('.title_placeholder').on('focus', function () {

    before = $(this).text();


  }).on('blur keyup paste', function () {
    if (before != $(this).text()) {

      if ($(this).text().length >= 25) {

        $(this).trigger('change');
      }

    }
  });

  $('.title_placeholder').on('change', function () {
    $(this).text($(this).text().substr(0, 25));
    $('#myTitlelen').trigger('focus');
    $('#myModal').modal('show')
  }


  );


  $('.title_placeholder').focusout(function () {
    $(this).css({ "overflow": "hidden", "height": "50px" });

  });
  $('.title_placeholder').focusin(function () {
    $(this).css({ "overflow": "visible", "height": "100%" });
  });
  function openOp2() {
    $(".top_op").hide();
    $(".top_op_2").fadeIn();
  }
  function closeOp2() {
    $(".top_op").fadeIn();
    $(".top_op_2").hide();
  }

  function openModal(num) {
    if (num == 1)
      $("#myPublicOp").modal('show')
  }

  function test() {

    console.log($("#tempPlachodler").val());
    console.log($("#tempPlachodler").text());
  }
</script>




<script>
  // 프리뷰 
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
  $('.visbility_icon').click(function () {
    var curr = $(this).text();
    var pos = $('.preview_textarea');
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
      var mean = parent.find('.meanOfWord>textarea').val();

     
        $(".preview_textarea").find('#imageHolder').hide();
        $(".preview_textarea").find('.flip-card-back').removeClass('img_added');
      


      $(".preview_textarea").find('.flip-card-front').html(def);
      $(".preview_textarea").find('.flip-card-back ').html(mean);

      let first = $(".preview_textarea").find('.flip-card-front');
      let second = $(".preview_textarea").find('.flip-card-back');
      console.log(first.innerWidth());



      pos.show();
    }
  })



  //카드 돌리기 돌리기 
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

</script>










<script>
 

  $("#v-card-list").on("sortstop", function (event, ui) {
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

    $("#v-card-list").append(newClone);
    changePlaceholder();
  }
  function addBelow() {


  }


</script>



<script>

  function setPer(permission) {
    var temp = $(permission).text();
    var current = $("#per_public").text().trim("");


    $(permission).text(current);
    $("#per_public").text(temp);
  }

  function per_copy(permission) {
    var temp = $(permission).text();
    var current = $("#per_copy").text().trim("");


    $(permission).text(current);
    $("#per_copy").text(temp);
  }

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
         alert((i+1) + " 번쨰 단어와 " + (j+i) + " 번쨰 단가 중복입니다." );
          duplicate= false;
         
          break;
        }
        
      }
      if(duplicate == false)
          break;
    }
  

    return duplicate;
  }


  // 저장
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
         userID: "${ loginMember.mId }",
         [title]: list
       })
       var send2 = JSON.stringify({
         _id: csid,
         userID: "${ loginMember.mId }",
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


       },
       error: function () {
         // alert("데이타베이스 연결에 실패하여씁니다!");
         console.log("error has occured retriving data from MongoServer")
       }
     })
 }
 
  function addPicture(add) {
    var addPic = $(add).parent().parent().find(".imgupload");
    addPic.click();


  }
  /* function readURL(input)
  {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
       
               
        }

        reader.readAsDataURL(input.files[0]);
    }
  } */
  // 삭제
  function deleteWord(word) {
    var card = $(word).parent().parent().parent();
    console.log(card.html());
    console.log(card.length);
    if ($(".card_word_wrapper").length > 6) {
      card.remove();
    }
    else {
      alert("카드는 최소 6 장 이상 이여야합니다")
    }

    changePlaceholder();
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

</html>