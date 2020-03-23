<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">




  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

  <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">


 <!----> <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>


  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>

  <title>Document</title>
</head>

<style>
  #nav_sticky {
    height: 110px;
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
    padding-top: 60px;
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
    border-style: ridge;
    border-radius: 25px;
    width: 400px;
    background: rgb(179, 221, 207);
    font-size: 3vw;
    margin-top: 7px;
    display: inline-block;
    text-align: center;

    outline-width: 0;
  }

  .center_center {

    align-items: center;
    display: flex;
    justify-content: center;
  }
  .titleplacehodler
  {
  
    left: 33%;
    position: absolute;
    font-size: 2vw;
    color:grey;
  }
  #tempPlachodler
  {
    position:absolute;
    user-select: none;
    font-size: 2vw;
    left:38%;
    color:grey;
  }
  .top_op .btn
  {
    width:110px
  }
  .top_op_2
  {
      display: none;;
  }
  .top_op_2 .btn
  {
    width:110px;
    background-color: red!important;
  }

.card_word_wrapper
{
  background:white;
  height: 240px;
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
  .card_list_wrapper
  {
    margin-right:15%;
    margin-left:15%;
    margin-top:1%;
  }

  .create_new
  {
    text-align: center;
    background:cornflowerblue;
    height: 50px;
  }
</style>

<body>
  <jsp:include page="../common/menubar.jsp" />

  <div class="modal fade bd-example-modal-sm" id = "myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
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

  <div class="modal" id = "myPublicOp" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header" style="background: rgb(43, 228, 235);color:white; ">
          <h5 class="modal-title" style="    font-size: 25px;">공개 옵션</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">



          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>


<!--  sticky top -->
  <div id="nav_sticky">
    <div class="center_center">
      
      <div id = "tempPlachodler"> 제목을 입력해주세요</div>
      <div class=" title_placeholder " contenteditable="true"   >

      </div>
     <div class="top_op">
  
        <button class="btn btn-primary"> 저장 </button>
        <br>
        <button class="btn btn-primary" style ="height: 38px"
        onclick="openOp2()"> <i class="material-icons">settings</i> </button>
    </div>
    <div class="top_op_2">
        <div ><button class = "btn" onclick="openModal(1)">권한/공개</button></div>
        <div >단어 뜻 위치 변경</div>
    </div>
  </div>
</div>


<!--  sticky top -->





<div class ="card_list_wrapper "id="v-card-list"  >



  <!-- *******************************************************-->
  <div class = "card_word_wrapper" id="cloneCard">
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
  </div>
  <!--****************************************************-->
</div>
<div class ="card_list_wrapper create_new">


asdasd
</div>




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
  $('#tempPlachodler').click(function(){
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
    $(this).css({ "overflow": "hidden", "height": "92px" });
   
  });
  $('.title_placeholder').focusin(function () {
    $(this).css({ "overflow": "visible", "height": "100%" });
  });
  function openOp2()
  {
    $(".top_op").hide();
    $(".top_op_2").fadeIn();
  }
  function closeOp2()
  {
    $(".top_op").fadeIn();
    $(".top_op_2").hide();
  }

  function openModal(num)
  {
    if(num ==1)
    $("#myPublicOp").modal('show')
  }
</script>

</html>