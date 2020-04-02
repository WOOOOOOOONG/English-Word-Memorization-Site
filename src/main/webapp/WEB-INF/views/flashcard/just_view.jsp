<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="../common/menubar.jsp" />
<!DOCTYPE html>
<html>


<head>

<meta charset="UTF-8">



  <link rel="stylesheet" href="resources/css/cus_input.css">

  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

  <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">


  <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>



<title>Insert title here</title>
<style>
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


  .text_settings {
    font-size: 900%;
    align-items: center;
    display: flex;
    justify-content: center;
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
  
  @-webkit-keyframes fade_next {
  from {opacity: .4} 
  to {opacity: 1}
}

  </style>
</head>
<body>
  <div class="text-center "><h3 class="title_here text_settings" style="font-size: 70px;"></h3></div>
  <div class="container_slide" id = "slide_contained">
    
  </div>
  <div id='edit_button' style="display: none;    margin: auto;
  width: fit-content;">
    <button class="btn btn-primary" style="width: 800px;font-weight: bolder;font-size: 20px;
    border-color: white;background: skyblue;">수정하기</button>
  </div>
  <div style="width: fit-content;
                margin: auto;">
                  <button class="btn myPrev">
                  <i class="material-icons" style="font-size: 48px;width: 48px;">
                    keyboard_arrow_left
                  </i>
                </button>

                <div class="counter" style="    display: inline;
                font-size: 200%;">
                  <span id="counter_cur"></span>   
                  /
                  <span id="counter_max"></span>   
                </div>
                  <button class="btn myNext">
                    <i class="material-icons" style="font-size: 48px;width: 48px;">
                      keyboard_arrow_right
                    </i>
                  </button>
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

</body>

<script>
 

var myCounter = 0;


$(".myPrev").click(function(){

  var setval 

  myCounter = myCounter -1
  if(myCounter < 0)
  {
    setval = $(".cus_slides").length;

    myCounter = $(".cus_slides").length-1;
  }
  else
  {
    setval = myCounter +1;
  }
       
  $("#counter_cur").text(setval)
  $(".cus_slides").each(function () {
      $(this).hide();
    })
    $(".cus_slides").eq(myCounter).show();

   

})

$(".myNext").click(function(){
  var setval 
  myCounter = myCounter +1;
  if(myCounter >= $(".cus_slides").length)
  {
    setval = 1;
    myCounter = 0;
  }else
  {
    setval = myCounter +1;
  }
       
  $("#counter_cur").text(setval)
  
  $(".cus_slides").each(function () {
      $(this).hide();
    })
    $(".cus_slides").eq(myCounter).show();

})
  $(function(){
    var edit = "${edit}"
    console.log(edit);
    if(edit == "true")
    {
      $("#edit_button").show()      
    }

    $("#edit_button").click(function(){
      var new_csid= "${csid}";
      var new_title= "${title}"
  
       var cc = "?csid=" + new_csid + "&title=" + new_title;
      location.href = "http://192.168.10.13:8800/spring/flashcard_edit.fl" +cc
    })
    var clone = $('#onstartClone').clone(true, true).removeAttr('id');
    $('#onstartClone').removeAttr('id').remove();
      var new_csid= "${csid}";
      var new_title= "${title}"
     
      console.log(edit);


      
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
              { var temp = clone.clone(true,true);
                  
               
           
                temp.find('.flip-card-front').text(size[i]);
                temp.find('.flip-card-back').text(defin[size[i]]);
                $("#slide_contained").append(temp);
              }
              $(".cus_slides").eq(0).show();
              $("#counter_cur").text( 1);
              $("#counter_max").text( $(".cus_slides").length);
            },
            error: function () {
              // alert("데이타베이스 연결에 실패하여씁니다!");
              console.log("error has occured retriving data from MongoServer")
            }
          }) 
         
  })


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
</html>