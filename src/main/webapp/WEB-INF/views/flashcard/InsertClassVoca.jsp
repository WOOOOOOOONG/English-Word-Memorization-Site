<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../common/menubar.jsp" />

<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">


  <!--

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>
    
-->



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
    background-color: rgb(132, 182, 74) !important;

  }

  .title_placeholder {

    border-bottom: 4px black solid;
    height: 50px;
    width: 400px;
    background: rgb(179, 221, 207);
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
    display: flex;
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

















  .card_word_wrapper {
    background: burlywood;
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
    height: fit-content;
    width: 47%;
    margin: auto;

  }

  .meanOfWord {
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
    margin-right: 15%;
    margin-left: 15%;
    margin-top: 1%;
  }

  .create_new {
    text-align: center;
    background: cornflowerblue;
    height: 50px;
  }

  .textSetting:focus {

    border-bottom: 5px yellow solid;
  }



  .text_settings {
    font-size: 300%;
    align-items: center;
    display: flex;
    justify-content: center;
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
</style>

<body>
 <script>

    var userID = $("#cNo").val();
    var userName = "${ loginMember.name }";
    var newClas = false;
 

  </script>


<!--  cNo -->
<input type="text" value="${cNo }" style="display:none;" id="cNo">
<input type="text" value="${ loginMember.mId }" style="display:none;" id="mId">

  <!--  sticky top -->
  <div id="nav_sticky">
    <div class="center_center">
      <!-- 카테고리 버트 여기에 -->

     
      <div class=" title_placeholder " contenteditable="true">

      </div>
      <div class="top_op">

        <button class="btn btn-primary" onclick="save()"> 저장  </button>

        <button class="btn btn-primary" style="height: 38px" onclick="openModal(1)"> <i
            class="material-icons">settings</i>
        </button>
      </div>

    </div>
  </div>


  <!--  sticky top -->
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




  <div class="card_list_wrapper " id="v-card-list">



    <!-- *******************************************************-->
    <div class="card_word_wrapper" id="cloneCard">
      <div class=" flashCardEditWrapper">

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
            복사권한 :
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
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>






  <button onclick="test()">
    test
  </button>



</body>









<script>
  // sticky navbar 

  window.onscroll = function () { applySticky() };

  var navbar = document.getElementById("nav_sticky");
  var sticky = navbar.offsetTop;
  var contents = $('.title_placeholder').html();

  function applySticky() {
    if (window.pageYOffset >= sticky) {
      navbar.classList.add("sticky")
    } else {
      navbar.classList.remove("sticky");
    }
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
  $('.visbility').click(function () {
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

      var imag;
      var mean = parent.find('.meanOfWord>textarea').val();
      $(".preview_textarea").find('.flip-card-front').text(def);
      $(".preview_textarea").find('.flip-card-back').text(mean);
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
  var cloned;



  $(function () {
    $("#v-card-list").sortable();

    cloned = $("#cloneCard").clone(true, true);
    $("#cloneCard").removeAttr('id').remove();


    for (var i = 0; i < 6; i++) {
      var newClone = cloned.clone(true, true);

      $("#v-card-list").append(newClone);
      changePlaceholder();
    }

  })

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


	

  // 저장
  function save() {
	  
    var user_id = $("#cNo").val(); // 
    var crea = $("#mId").val(); //현재로그인된 아이디
    var card = $(".card_word_wrapper");
    var title = $('.title_placeholder').text().trim();
    var list = {};

    
   list["creatorId"] = crea;

    if (card.length >= 6) {
      card.each(
        function () {
          var def = $(this).find(".defOfWord>.textSetting").val();
          var mean = $(this).find(".meanOfWord>.textSetting").val();
          list[[def]] = mean; 
        }
      )
 
      var newlist = [];
      newlist.push(list);
      var send = JSON.stringify({
        userID: user_id,
        [title]: newlist
      });
      
      request(send);

      alert("단어장 입력이 완료되었습니다!");
      location.href="myClass.do?cNo="+user_id;

    }
    else {
      alert(
        "카드는 최소 6 장 이상 이여야합니다"
      )
    }



  }

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



  function request(send) {
	  var userID = $("#cNo").val();
	 
		  $.ajax(

			      {
			        type: "POST",
			        dataType: "json",
			        contentType: "application/json; charset=utf-8",
			        data: send,
			        url: 'http://192.168.10.13:1222/findAndUpdateClass',
			        success: function (data) {

			        },
			        error: function () {
			          alert("데이타베이스 연결에 실패하여씁니다!");
			          console.log("error has occured retriving data from MongoServer");
			        }
			      })
	  
  

  }
</script>

</html>