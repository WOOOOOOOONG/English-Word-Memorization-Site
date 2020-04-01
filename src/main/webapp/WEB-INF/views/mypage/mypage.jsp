<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>SEW</title>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
   
   <link rel="shortcut icon"
   href="${pageContext.request.contextPath}/resources/images/shotcuticon.png"
   type="image/x-icon">
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
        crossorigin="anonymous">
    <style>
.mypageicon{ 
   float:left; 
   border-top-left-radius: 10%;
   border-top-right-radius: 10%;
   border-bottom-left-radius: 10%;
   border-bottom-right-radius: 10%;
  
   
   box-shadow: 5px 5px 5px;
   width:150px;
   height:150px;
   margin-left:10%;
   margin-top:16%;
   float:left;
 }

body {
  margin: 0px;
}

.mypageicon >img:hover{
  cursor: pointer;
}
 .mypagecontent{
  display:none;
  width:100%;
  height:100%;
} 
#myintroduce{
    width:100%;
    height:80%;
    margin-left:2%;
    resize: none;
}
.myicon{
  width:100%; 
  height:150px;
 
   border-top-left-radius: 10%;
   border-top-right-radius: 10%;
   border-bottom-left-radius: 10%;
   border-bottom-right-radius: 10%;
}

 #profilephoto{
  width:50%; 
  height:40%;
  margin:2.5%;
  text-align: center;
} 
#profilecontent{
   width:95%;
   height:95%;
   margin:2.5%;
}
.profilespan{
  width:15%; 
  margin:5%;
  margin-left:20%;
}
#profilechangebtn{
  width:30%;
  height:40px;
  margin-right:35%;
  margin-top:20px;
}
#photoinput{
  height: 100%; width:100%;
  display:none;
}
#myphoto{
 height:100%;
 width: auto;
 max-width: 100%;
 border-top-left-radius: 10px 10px;
 border-top-right-radius:10px 10px;
 border-bottom-left-radius: 10px 10px;
 border-bottom-right-radius: 10px 10px;
}
#myphoto:hover{
  cursor: pointer;
}

.profilelabel{
  width:20%;
  margin-left:5%;
  float: left;
  margin-right: 5%;
  font-size: 2em;
  line-height:40px;
}
*, *:before, *:after {
-moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box;
}


#calendar {
  -webkit-transform: translate3d(0, 0, 0);
  -moz-transform: translate3d(0, 0, 0);
  transform: translate3d(0, 0, 0);
  width: 95%;
  margin: 2.5% auto;
  height:100%;
  
}

.header {
  height: 50px;
  width: 100%;
  background: rgb(219, 192, 228);
  text-align: center;
  position:relative;
  z-index: 100;
  border-top-left-radius: 10px 10px;
  border-top-right-radius: 10px 10px;
}

.header h1 {
  margin: 0;
  padding: 0;
  font-size: 20px;
  line-height: 50px;
  font-weight: 100;
  letter-spacing: 1px;
}

.left, .right {
  position: absolute;
  width: 0px;
  height: 0px;
  border-style: solid;
  top: 50%;
  margin-top: -7.5px;
  cursor: pointer;
}
.left {
  border-width: 7.5px 10px 7.5px 0;
  border-color: transparent rgba(160, 159, 160, 1) transparent transparent;
  left:10px;
}

.right {
  border-width: 7.5px 0 7.5px 10px;
  border-color: transparent transparent transparent rgba(160, 159, 160, 1);
  right:10px;
}

.month {
  /*overflow: hidden;*/
  opacity: 0;
}

.month.new {
  -webkit-animation: fadeIn 1s ease-out;
  opacity: 1;
}

.month.in.next {
  -webkit-animation: moveFromTopFadeMonth .4s ease-out;
  -moz-animation: moveFromTopFadeMonth .4s ease-out;
  animation: moveFromTopFadeMonth .4s ease-out;
  opacity: 1;
}

.month.out.next {
  -webkit-animation: moveToTopFadeMonth .4s ease-in;
  -moz-animation: moveToTopFadeMonth .4s ease-in;
  animation: moveToTopFadeMonth .4s ease-in;
  opacity: 1;
}

.month.in.prev {
  -webkit-animation: moveFromBottomFadeMonth .4s ease-out;
  -moz-animation: moveFromBottomFadeMonth .4s ease-out;
  animation: moveFromBottomFadeMonth .4s ease-out;
  opacity: 1;
}

.month.out.prev {
  -webkit-animation: moveToBottomFadeMonth .4s ease-in;
  -moz-animation: moveToBottomFadeMonth .4s ease-in;
  animation: moveToBottomFadeMonth .4s ease-in;
  opacity: 1;
}

.week {
 background: rgb(219, 192, 228);
 width:100%;
 height:15%;
}

.day {
  display: inline-block;
  width: 14.28%;
  padding: 10px;
  text-align: center;
  vertical-align: top;
  cursor: pointer;
  background: rgb(219, 192, 228);
  position: relative;
  z-index: 100;
}

.day.other {
 color: rgba(255, 255, 255, .3);

}

.day.today {
  color: rgba(72, 163, 228, 1);;
}

.day-name {
  font-size: 9px;
  text-transform: uppercase;
  margin-bottom: 5px;
  color: rgba(0, 0, 0, 0.5);
  letter-spacing: .7px;
}

.day-number {
  font-size: 24px;
  letter-spacing: 1.5px;
}


.day .day-events {
  list-style: none;
  margin-top: 3px;
  text-align: center;
  height: 10px;
  line-height: 6px;
  overflow: hidden;
}

.day .day-events span {
  vertical-align: top;
  display: inline-block;
  padding: 0;
  margin: 0;
  width: 5px;
  height: 5px;
  line-height: 5px;
  margin: 0 1px;
}

.red { background: red; }
.orange { background: orange; }
.yellow { background: yellow; }
.green { background: green; }
.blue { background: blue; }
.purple{background:purple;}
.white{background:white;}
.black{background:black;}

.details {
  position: relative;
  width: 100%;
  height: 80px;
  background: rgb(207, 175, 220);
  
}

.details.in {
  -webkit-animation: moveFromTopFade .5s ease both;
  -moz-animation: moveFromTopFade .5s ease both;
  animation: moveFromTopFade .5s ease both;
}

.details.out {
  -webkit-animation: moveToTopFade .5s ease both;
  -moz-animation: moveToTopFade .5s ease both;
  animation: moveToTopFade .5s ease both;
}

.arrow {
  position: absolute;
  top: -5px;
  left: 50%;
  margin-left: -2px;
  width: 0px;
  height: 0px;
  border-style: solid;
  border-width: 0 5px 5px 5px;
  border-color: transparent transparent rgb(60, 255, 0) transparent;
  transition: all 0.7s ease;
}

.events {
  height: 75px;
  padding: 7px 0;
  overflow-y: auto;
  overflow-x: hidden;
}
.events.in {
  -webkit-animation: fadeIn .3s ease both;
  -moz-animation: fadeIn .3s ease both;
  animation: fadeIn .3s ease both;
}

.events.in {
  -webkit-animation-delay: .3s;
  -moz-animation-delay: .3s;
  animation-delay: .3s;
}

.details.out .events {
  -webkit-animation: fadeOutShrink .4s ease both;
  -moz-animation: fadeOutShink .4s ease both;
  animation: fadeOutShink .4s ease both;
}

.events.out {
  -webkit-animation: fadeOut .3s ease both;
  -moz-animation: fadeOut .3s ease both;
  animation: fadeOut .3s ease both;
}

.event {
  font-size: 16px;
  line-height: 22px;
  letter-spacing: .5px;
  padding: 2px 16px;
  vertical-align: top;
  text-align: left;
  widtH: 100%;
}

.event.empty {
  color: rgb(0, 0, 0);
}

.event-category {
  height: 10px;
  width: 10px;
  display: inline-block;
  margin: 6px 0 0;
  vertical-align: top;
}

.event span {
  display: inline-block;
  padding: 0 0 0 7px;
}

.legend {
  position: absolute;
  width: 100%;
  background: rgb(230, 193, 247);
  <!--버전1 background : rgb(184, 138, 203);-->
  line-height: 30px;
  bottom:4.1%;
}

.entry {
  position: relative;
  padding: 0 0 0 25px;
  font-size: 13px;
  display: inline-block;
  line-height: 30px;
  background: transparent;
  float: left;
}

.entry:after {
  position: absolute;
  content: '';
  height: 5px;
  width: 5px;
  top: 12px;
  left: 14px;
}
.entry.red:after { background: red; }
.entry.orange:after { background: orange; }
.entry.yellow:after { background: yellow; }
.entry.green:after { background: green; }
.entry.blue:after { background: blue; }
.entry.purple:after{background:purple;}
.entry.white:after {background:white;}
.entry.black:after{background:black;}
/* Animations are cool!  */
@-webkit-keyframes moveFromTopFade {
  from { opacity: .3; height:0px; margin-top:0px; -webkit-transform: translateY(-100%); }
}
@-moz-keyframes moveFromTopFade {
  from { height:0px; margin-top:0px; -moz-transform: translateY(-100%); }
}
@keyframes moveFromTopFade {
  from { height:0px; margin-top:0px; transform: translateY(-100%); }
}

@-webkit-keyframes moveToTopFade {
  to { opacity: .3; height:0px; margin-top:0px; opacity: 0.3; -webkit-transform: translateY(-100%); }
}
@-moz-keyframes moveToTopFade {
  to { height:0px; -moz-transform: translateY(-100%); }
}
@keyframes moveToTopFade {
  to { height:0px; transform: translateY(-100%); }
}

@-webkit-keyframes moveToTopFadeMonth {
  to { opacity: 0; -webkit-transform: translateY(-30%) scale(.95); }
}
@-moz-keyframes moveToTopFadeMonth {
  to { opacity: 0; -moz-transform: translateY(-30%); }
}
@keyframes moveToTopFadeMonth {
  to { opacity: 0; -moz-transform: translateY(-30%); }
}

@-webkit-keyframes moveFromTopFadeMonth {
  from { opacity: 0; -webkit-transform: translateY(30%) scale(.95); }
}
@-moz-keyframes moveFromTopFadeMonth {
  from { opacity: 0; -moz-transform: translateY(30%); }
}
@keyframes moveFromTopFadeMonth {
  from { opacity: 0; -moz-transform: translateY(30%); }
}

@-webkit-keyframes moveToBottomFadeMonth {
  to { opacity: 0; -webkit-transform: translateY(30%) scale(.95); }
}
@-moz-keyframes moveToBottomFadeMonth {
  to { opacity: 0; -webkit-transform: translateY(30%); }
}
@keyframes moveToBottomFadeMonth {
  to { opacity: 0; -webkit-transform: translateY(30%); }
}

@-webkit-keyframes moveFromBottomFadeMonth {
  from { opacity: 0; -webkit-transform: translateY(-30%) scale(.95); }
}
@-moz-keyframes moveFromBottomFadeMonth {
  from { opacity: 0; -webkit-transform: translateY(-30%); }
}
@keyframes moveFromBottomFadeMonth {
  from { opacity: 0; -webkit-transform: translateY(-30%); }
}

@-webkit-keyframes fadeIn  {
  from { opacity: 0; }
}
@-moz-keyframes fadeIn  {
  from { opacity: 0; }
}
@keyframes fadeIn  {
  from { opacity: 0; }
}

@-webkit-keyframes fadeOut  {
  to { opacity: 0; }
}
@-moz-keyframes fadeOut  {
  to { opacity: 0; }
}
@keyframes fadeOut  {
  to { opacity: 0; }
}

@-webkit-keyframes fadeOutShink  {
  to { opacity: 0; padding: 0px; height: 0px; }
}
@-moz-keyframes fadeOutShink  {
  to { opacity: 0; padding: 0px; height: 0px; }
}
@keyframes fadeOutShink  {
  to { opacity: 0; padding: 0px; height: 0px; }
}
.scbtn{
    text-align: center;
    width:38px;
    position:absolute;
    right:5%;
    top:30%;
    border: 1px solid transparent;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: .25rem;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}
.modal-backdrop {
    /* bug fix - no overlay */    
    display: none;    
}

.modal-body > .form-control{
   width:48%;
   float:left;
   text-align:center;
}
.modal-body > label{
   width:20%;
   float:left;
   line-height: 35px;
    font-size: 1.1em;
    margin-right:10px;
    margin-left:16%;
}
.modal-content{
   background:whitesmoke;
}
.changescbtn{
   background-image: url( "resources/images/변경.png" );
   background-repeat: no-repeat;
   background-size: cover;
   width:22px;
   height:22px; 
   float:right;
   margin-right:20px;
   display:none;
}
.deletescbtn{
   background-image: url( "resources/images/삭제.png" );
   background-repeat: no-repeat;
   background-size: cover;
   width:22px;
   height:22px; 
   float:right;
   margin-right:100px;
   display:none;
}

.createBtn{
   text-decoration:none; 
   color:red; 
   float:right;
   font-family:cinzel;
   font-size: 17px;
}
.createBtn:hover{
   text-decoration:none; 
   color: rgb(0,154,200);
   transition: 0.2s ease-in-out;
}

.inputdivarea > input {
   padding-left:10px;
   width: 60%;
   height: 100%;
   font-size:1.8em;
   float: left;
    margin-left: 20%;
   border-bottom-color: rgb(206, 212, 218);
   border-bottom-left-radius: 4px;
   border-bottom-right-radius: 4px;
   border-bottom-style: solid;
   border-bottom-width: 1px;
   border-image-outset: 0px;
   border-image-repeat: stretch;
   border-image-slice: 100%;
   border-image-source: none;
   border-image-width: 1;
   border-left-color: rgb(206, 212, 218);
   border-left-style: solid;
   border-left-width: 1px;
   border-right-color: rgb(206, 212, 218);
   border-right-style: solid;
   border-right-width: 1px;
   border-top-color: rgb(206, 212, 218);
   border-top-left-radius: 4px;
   border-top-right-radius: 4px;
   border-top-style: solid;
   border-top-width: 1px;
   
}
#updateArea{
   width:100%;
   height:80%;
   margin-bottom:20px;
}
#updateArea > div{
   margin-top:6px;
}
#updateMemberForm{
   width:90%;
   height:100%;
   margin-left:5%;
}
.textdivarea{
   margin-left:20%;
   font-size:1.55em;
   text-align:left;
}
.inputdivarea{
   height:35px;
}
#updateMemberbtn{
   float: left;
    width: 60%;
    margin-left: 20%;
}
 ul.shelf {
    list-style: none;
    border: 20px solid #82430c;
    background:#92531c;
    border-top: 0px;
    height: 250px;
    width: 760px;
    margin: 15% auto 0;
    padding: 0;
    -webkit-perspective: 2500;
    -webkit-transform-origin: center top 0;
    -webkit-transform: translateY(250px);
    
}
 ul.shelf li {
    width: 80px;
    height: 500px;
    float: left;
    padding: 0;
    position: relative;
    cursor: pointer;
    -webkit-transform: rotateX(0deg) translateY(-250px);
    -webkit-transform-style: preserve-3d;
    -webkit-transition-property: transform;
    -webkit-transition-duration: 100ms;
}
 ul.shelf h2 {
    -webkit-transform-origin: 0 0 0;
    -webkit-transform: rotateZ(90deg) translateY(-80px);
    margin: 0;
    position: absolute;
    line-height: 80px;
    width: 500px;
    height: 80px;
    padding: 0 40px;
    box-sizing: border-box;
}
 ul.shelf li span {
    background-color: rgb(186, 198, 219);
}
 ul.shelf li .booklabel {
    background-color:rgb(215, 229, 253);
}
 ul.shelf li {
    z-index: 1;
}

 ul.shelf li span {
    position: absolute;
    display: block;
    -webkit-backface-visibility: visible;
}
 ul.shelf li span.booklabel {
    opacity: 1;
    width: 80px;
    height: 500px;
    color: #fff;
    -webkit-transform: rotateX(0deg);
}
 ul.shelf li span.booktop {
    opacity: 1;
    width: 80px;
    height: 300px;
    background-color:#e9e6c4;
    border:2px solid rgb(186, 198, 219);
    -webkit-transform: translateY(-150px) translateZ(-150px) rotateX(90deg);
}
 ul.shelf li span.bookleft {
    opacity: 1;
    width: 300px;
    height: 500px;
    -webkit-transform: translateX(-150px) translateZ(-150px) rotateY(90deg);
}
 ul.shelf li span.bookright {
    opacity: 1;
    width: 300px;
    height: 500px;
    -webkit-transform: translateX(-70px) translateZ(-150px) rotateY(-90deg);
}
 ul.shelf li:hover {
    -webkit-transform: rotateX(-15deg) translateY(-250px);
}
 ul.shelf li:active {
    -webkit-transform: rotateX(-20deg) translateY(-250px);
}



 ul.shelf li:nth-child(1) span {
    background-color: rgb(41, 204, 150);
}
ul.shelf li:nth-child(1) span.booktop{
       background-color:#e9e6c4;
       border:2px solid rgb(41, 204, 150);
}

 ul.shelf li:nth-child(1) .booklabel {
    background-color:rgb(46, 231, 170);
}
 ul.shelf li:nth-child(1) {
    z-index: 1;
}

ul.shelf li:nth-child(3) {
    z-index: 1;
}
 ul.shelf li:nth-child(3) span {
    background-color: rgb(185, 114, 117);
}
 ul.shelf li:nth-child(3) .booklabel {
    background-color:rgb(247,151,156);
}
ul.shelf li:nth-child(3) span.booktop{
       background-color:#e9e6c4;
       border:2px solid rgb(185, 114, 117);
}

 ul.shelf li:nth-child(5) {
    z-index: 20;
}
 ul.shelf li:nth-child(5) span {
    background-color: rgb(179, 133, 55);
}
 ul.shelf li:nth-child(5) .booklabel {
    background-color: rgba(245, 182, 75);
}
ul.shelf li:nth-child(5) span.booktop{
       background-color:#e9e6c4;
       border:2px solid rgb(179, 133, 55);
}

ul.shelf li:nth-child(6) {
    z-index: 15;
}
 ul.shelf li:nth-child(7) {
    z-index: 10;
}
 ul.shelf li:nth-child(7) span {
    background-color: rgb(159, 149, 163);
}
 ul.shelf li:nth-child(7) .booklabel {
    background-color: rgb(233, 218,239);
}
ul.shelf li:nth-child(7) span.booktop{
       background-color:#e9e6c4;
       border:2px solid rgb(159, 149, 163);
}

ul.shelf li:nth-child(8) {
    z-index: 8;
}
 ul.shelf li:nth-child(9) {
    z-index: 5;
}
 ul.shelf li:nth-child(9) span {
    background-color: rgb(192, 168, 72);
    z-index: 1;
}
 ul.shelf li:nth-child(9) .booklabel {
    background-color: rgb(245, 215, 92);
}
ul.shelf li:nth-child(9) span.booktop{
       background-color:#e9e6c4;
       border:2px solid rgb(192, 168, 72);
}

 .label > h2{
    width:20px; word-wrap: break-word; text-align:center;
 }

 .book {
  margin: auto;
  margin-top:5%;
  width: 1200px;
  height: 700px;
  perspective: 70rem;
}

.cover {
  width:50.5%;
  height:102%;
  right: 0.27rem;
  margin-right: 250px;
}
.page {
  top: 0.25rem;
  right: 0.27rem;
  margin-right: 255px;
  background-color: #e9e6c4;
  width:50%;
  height:100%;
  text-align: right;
  font-size: 8px;
  color: #777;
}

.cover, .page {
  position: absolute;
  padding: 1rem;
  transform-origin: 100% 0;
  border-radius: 5px 0 0 5px;
  box-shadow: inset 3px 0px 20px rgba(0, 0, 0, 0.2),
    0px 0px 15px rgba(0, 0, 0, 0.1);
  box-sizing: border-box;
}

.cover.turn {
  animation: bookCover 1.0s forwards;
}
.page.turn {
  animation: bookOpen 1.5s forwards;
}

.page:nth-of-type(1) {
  animation-delay: 0.05s;
}
.page:nth-of-type(2) {
  animation-delay: 0.2s
}
.page:nth-of-type(3) {
  animation-delay: 0.35s;
}
.page:nth-of-type(4) {
  animation-delay: 0.5s;
}
.page:nth-of-type(5) {
  animation-delay: 0.65s;
}


@keyframes bookOpen {
  10% { transform-origin:left;  z-index: 10 }
  30%{z-index: 30 }
  50% { z-index: 50 }
  60% { z-index: 100 }
  100% {  transform-origin:left; 
  transform: rotateY(-180deg);
    z-index: 10;}
}
@keyframes bookCover {
  10% {   transform-origin:left; z-index: 900 }
  50% {   z-index: 40 }
  100% {  transform-origin:left; 
           transform: rotateY(-180deg);
          z-index: 1;}
}


#backicon{
   float:right;
   width:100px;
   height:100px;
}
#backicon:hover{
   cursor:pointer;
}
.goClass{
   background:rgb(247,151,156);
   border:1px solid black;
   width:450px;
   margin:auto;
   height:130px;
   margin-top:15px;
   border-radius:15px;
   font-family: 'Nanum Gothic', sans-serif;
   cursor:pointer;
   box-shadow:3px 3px 3px gray;
   overflow:scroll;
    overflow-x:hidden;
    overflow-y:auto;
}
.contenttitle{

	padding:4px 4px 4px;
	border-bottom:1px solid black;
	width:50%;
	margin:auto;
	font-family:cinzel;
	font-size:40px;
	text-align:center;
	color: #777;
}
#deleteMemberbtn{
	float: left;
    border: 0px;
    background: none;
    margin-left: 70%;
    font-size: 12px;
    color: red;
}
#deleteMemberbtn:hover{
	text-decoration:none; 
	color: red;
	cursor:pointer;
}
.outClass{
	margin-right: 70px;
    margin-top: -20px;
    float: right;
    color: #977e80;
    position: relative;
    cursor:pointer;
}
.commentarea{
	width:50%;
	color:red;
	float: right;
    margin-top: -15px;
    margin-right: 20%;
}
.textdivarea{
	width:20%;
	
}
.entry:hover{
	cursor:pointer;
}
</style>
</head>

<body>
   <jsp:include page="../classs/fontStore.jsp"/>
    <script>
        window.onload = function () {
           scdraw();
            var img = document.getElementById("myphoto");
            if (img.getAttribute("src") == null) {
                img.style.width = '100%';
            }

        };
       function outclasss(cNo){
			if(confirm("선택 스터디를 정말 탈퇴하시겠습니까 ? ")){
				location.href="outClass.do?cNo="+cNo;				
			}
         
      }

    </script>
    
    <c:set var="contextPath" value="${pageContext.request.contextPath}"
   scope="application"/>
    <jsp:include page="../common/menubar.jsp"/>
    <div id="shelfwrapper" style="background-image: url( 'resources/images/벽.jpg');background-size: cover;
    background-repeat: no-repeat; width:100%; height:850px; overflow: hidden;">
    <ul class="shelf">
        <li class="bookmain" id="profile"><span class="booklabel"><h2>Profile</h2></span><span class="booktop"></span><span class="bookleft"></span><span class="bookright"></span></li>
        <li class="bookmain" ><span class="booklabel"><h2></h2></span><span class="booktop"></span><span class="bookleft"></span><span class="bookright"></span></li>
        <li class="bookmain" id="class"><span class="booklabel"><h2>Study</h2></span><span class="booktop"></span><span class="bookleft"></span><span class="bookright"></span></li>
        <li class="bookmain" ><span class="booklabel"><h2></h2></span><span class="booktop"></span><span class="bookleft"></span><span class="bookright"></span></li>
        <!-- id="dan" --><li class="bookmain" ><span class="booklabel"><h2></h2></span><span class="booktop"></span><span class="bookleft"></span><span class="bookright"></span></li>
        <li class="bookmain" ><span class="booklabel"><h2></h2></span><span class="booktop"></span><span class="bookleft"></span><span class="bookright"></span></li>
        <li class="bookmain" id="schedule"><span class="booklabel"><h2>Schedule</h2></span><span class="booktop"></span><span class="bookleft"></span><span class="bookright"></span></li>
        <li class="bookmain" ><span class="booklabel"><h2></h2></span><span class="booktop"></span><span class="bookleft"></span><span class="bookright"></span></li>
        <li class="bookmain" id="info"><span class="booklabel"><h2>Infomation</h2></span><span class="booktop"></span><span class="bookleft"></span><span class="bookright"></span></li>
    </ul> 
    	
    </div>
    <div id="deskwrapper" style="background-image: url( 'resources/images/desk.png'); background-repeat: no-repeat;
     background-size: cover; width:100%; height:0px; overflow: hidden;">
       <img id="backicon" src="${contextPath }/resources/images/리턴.png" >
       <div class="book">
            <div class="page "></div>
            <div class="page "></div>
            <div class="page "></div>
            <div class="page "></div>
            <!-- 왼쪽 페이지 -->
            <div class="page " style="z-index:15;">

            	<!-- 클래스 리스트  -->
			    <div id="classcontent" class="mypagecontent" style="overflow:hidden;" >
			    	
			    <div class="contenttitle">STUDY LIST</div>
			    	<div>
							<a href="classPorm.do" id="createBtn" class="createBtn">Create Study</a>
						</div>
			    	<c:choose>
					<c:when test="${ !empty cmList }">
						
						<div style=" width:104%; height: 85%; padding:10px; 
						overflow:scroll;overflow-x:hidden;overflow-y:auto;">
							<c:choose>
								<c:when test="${ !empty cList }">
									<c:forEach var="i" begin="0" end="${ cList.size() - 1 }">
										<div id="goClass${ cList.get(i).cNo }" class="goClass">
											<div style="width:100%; text-align:center;">
												<c:if test="${cList.get(i).local eq null  }">	
													<span style="font-size:12px; text-align:center; color:#fdcf7b;">OnLine</span>
												</c:if>
												<c:if test="${cList.get(i).local ne null  }">
													<span style="font-size:12px; text-align:center; color:#fdcf7b;">${cList.get(i).local }</span>
												</c:if>
											</div>
											<div style="width:80%; text-align:center; font-size:24px; margin:auto; height:80px; overflow:hidden;">
												${cList.get(i).title }
											</div>
											<div style="width:100%; text-align:center;">
												<c:forEach var="j" begin="0" end="${ cateList.size() - 1 }">
													<c:if test="${ cList.get(i).cateId eq cateList.get(j).cId }">
														<span style="font-family:cinzel; font-size:14px;">${ cateList.get(j).name }</span>
													</c:if>
												</c:forEach>
												<span style="font-family:cinzel; font-size:14px;"> | ${ cList.get(i).level }</span>
												
											</div>
										</div>
										<span class="outClass" onclick="outclasss('${ cList.get(i).cNo }')">탈퇴하기</span>
									</c:forEach>
								</c:when>
							</c:choose>
						</div>
					</c:when>
					<c:otherwise>
						<div style="font-size:15px;margin:auto; text-align:center; margin-top:45px;">현재 가입중인 클래스가 없습니다.</div>
					</c:otherwise>
					</c:choose>
					 
				    <script>
				    	// 클래스 이동 함수
				    	$(function(){
				    		$(".goClass").click(function(){
				    			var cNo = $(this).prop('id').replace("goClass","");
				    			location.href='myClass.do?cNo=' + cNo;
				    		});		
				    	});
				    </script>
			    </div>

            
            </div>   
             <!-- 오른쪽 페이지 -->
            <div class="page" style="z-index:10;">

            	<!-- 프로필 수정 -->
            	<form class="mypagecontent" id="profilecontent"
            	 method="post" action="profile.me" enctype="multipart/form-data">
            	 	<div class="contenttitle">My Profile</div>
        			<input type="text"name="mId" style="display:none;" value="${loginMember.mId }">
        			<div id="profilephoto" style="float:left;">
			        <input type="file" id="photoinput" name="photoinput" accept=".jpg,.jpeg,.png,.gif">
			        <img id="myphoto" src="${contextPath }/resources/profileimg/${loginMember.profileimg}" onclick="$('#photoinput').click();" />
					</div>
			        <div style=" width:40%; margin:2.5%; height:40%; float:left;">
			            <!-- 이름 -->
			            <div class="form-group row" style="margin-top:40%;">
			                <label for="username" class="profilelabel">이름</label>
			                <input type="text" readonly class="form-control" id="username" value="${loginMember.name }"
			                 style="width:55%;  float: left;">
			            </div>
			            <!-- 닉네임 -->
			            <div class="form-group row">
			                <label for="mynickname" class="profilelabel">닉네임</label>
			                <input type="text" class="form-control" id="mynickname" name="nickname"
			                maxlength="7"
			                 value="${loginMember.nickname }" style="width:55%;  float: left;">
			            </div>
			            <script>
			            	// 닉네임 중복체크
			            	$(function(){
			            		
			            		
			            		$("#mynickname").change(function(){
			            			$.ajax({
			            		        url:"mynickname.ck",
			            		        data:{nickname:$(this).val()},
			            		        type:"post",
			            		   		success:function(data){	
			            		   			if(data == "good"){
			            		   				$("#profilechangebtn").attr("disabled",false);
			            		   			}else{
			            		   				alert("중복된 닉네임입니다.");
			            		   				$("#profilechangebtn").attr("disabled",true);
			            		   			}
			            				},error:function(e){
			            					alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
			            				}
			            				
			            			});	
			            		});
			            	});
			            </script>
			        </div>
		  			<!-- 자기 소개 -->
			        <div style=" width:95%; height:30%; margin:2.5%; float:left;">      
			                <div class="form-group row" style="float:left; width:100%; height:250px;">
			                    <textarea class="form-control" id="myintroduce"name="introduce"
			                     placeholder="자기소개" rows="3">${loginMember.introduce}</textarea>
			                </div>
			        </div> 
			        <button class="btn btn-success" id="profilechangebtn">프로필 수정</button>
		    	</form>
            	
            	<!-- 단어장 리스트(미완성) -->
            	<div id="dancontent" class="mypagecontent" >
            	<div class="contenttitle">Dan List</div>
					<button id="mydanlist"class="btn btn-info">햐</button>
			    </div>
			    
            	<!-- 스케쥴  -->
			    <div id="schedulecontent" class="mypagecontent">
			        <div id="calendar"></div>
			        <script src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.5.1/moment.min.js"></script>
			    </div>
			    <!-- 개인정보 수정 -->
			    <div id="infocontent" class="mypagecontent" >

            <form id="updateMemberForm" method="post" onsubmit="return insertcheck();" action='${contextPath}/update.me'>
                <div class="contenttitle">My Info</div>
                <div id="updateArea" style="float:left;">
                    <div class="textdivarea">아이디</div>
                    <div class="commentarea"></div>
                    <div class="inputdivarea">
                        <input type="text" name="mId" readonly value="${loginMember.mId }" >
                    </div>
                   

                    <div class="textdivarea">비밀번호</div>
                    <div class="inputdivarea">
                        <input type="password" name="pwd" placeholder="변경 시에만 적어주세요."  maxlength="25">
                    </div>

					<div class="textdivarea" style="display:none;">비밀번호 확인</div>
					<div class="commentarea" style="margin-top: -15px;"></div>
					<div class="inputdivarea" style="display:none;">
						<input type="password" name="pwdCk"  maxlength="25">
					</div>
					
					
                    <div class="textdivarea">이름</div>
                    <div class="commentarea" style="margin-top: -15px;"></div>
                    <div class="inputdivarea">
                        <input type="text" name="name" required value="${loginMember.name }" maxlength="6">
                    </div>
                   

                    <div class="textdivarea">이메일</div>
                    <div class="commentarea" style="margin-top: -15px;"></div>
                    <div class="inputdivarea">
                        <input type="email" name="email"readonly value="${loginMember.email }">
                    </div>
                    

                    <div class="textdivarea">생년월일</div>
                    <div class="commentarea" style="margin-top: -15px;"></div>
                    <div class="inputdivarea">
                        <input type="text" name="birthDate" required maxlength="8">
                    </div>
                    
                    <div class="textdivarea">주소</div>
                    <div class="inputdivarea" style="width:100%;">
                        <input type="text" id="postcode" name="add1" placeholder="우편번호" style="width: 32%;">
                        <input type="button" class="btn btn-success btn-sm"
                         style="width:135px; height:35px; margin-left:10px; margin-bottom: 6px;"
                            onclick="execDaumPostcode()" value="우편번호 찾기"><br>
                        <input type="text" id="address" name="add2" style="margin-top: 3px; margin-bottom:6px;" placeholder="주소"><br>
                        <input type="text" id="detailAddress" name="add3" placeholder="상세주소">
                    </div>
                </div>
                <button class="btn btn-warning" id="updateMemberbtn" >변경하기</button>
                <br>
                <button type="button" id="deleteMemberbtn">탈퇴하기</button>
            </form>
        </div>
            </div>
            <!-- 뒷 커버 -->
            <div class="cover" style="z-index:1;">
               
            </div>
            <!-- 앞 커버 -->
            <div class="cover" style="z-index:999;">
            <div id="bookcover" class="contenttitle"></div>
            </div>
          </div>

    </div>
        
      
      
    <script>
		 // 개인정보 수정 사전검사
			function insertcheck(){
				var check = $("#updateMemberForm > #updateArea > .commentarea");
				 for(var i =0; i<5; i++){
					if(check[i].innerHTML.length >0){
						check[i].focus();
						return false;
					}
				} 
				 return true;
			}
    
        $(function(){
        	$("#updateMemberForm input[name=pwd]").change(function(){
        		$(this).parent().next().css("display","block");
        		$("#updateMemberForm input[name=pwdCk]").parent().css("display","block");
        		
        	});
        	// 비밀번호 일치여부
    		$("#updateMemberForm input[name=pwdCk]").focusin(function(){
    			$(this).focusout(function(){
    				if($("#updateMemberForm input[name=pwd]").val() != $("#updateMemberForm input[name=pwdCk]").val()){
    					$("#updateMemberForm input[name=pwdCk]").parent().prev().html("비밀번호가 일치하지 않습니다.");
    				}else{
    					$("#updateMemberForm input[name=pwdCk]").parent().prev().html("");
    				}
    			});
    		});
        	
        	// 생년월일 일치여부
    		$("#updateMemberForm input[name=birthDate]").focusin(function(){
    			$(this).focusout(function(){
    				var email = $(this);
    				var idReg = /^[0-9]{8}$/g;
    		        if( !idReg.test( email.val() ) ) {
    		        	$("#updateMemberForm input[name=birthDate]").parent().prev().html("생년월일의 형식이 맞지 않습니다.").css("color","red");
    		        	email.val("");
    		            return;
    		        }else{
    		        	$("#updateMemberForm input[name=birthDate]").parent().prev().html("");
    		        }	
    			
    			});
    		});
    		
        	
           
           // 책 오픈
            $("ul.shelf li").click(function(){
               var j = 5;
               if($(this).attr('id') != null){
                  if($(this).attr('id')=="class"){
                     j=4;
                  }
                  
                $sh = $("#shelfwrapper");
                $sh.height($sh.height()).animate({height: "0px"}, 500);
                $desk = $("#deskwrapper");
                $desk.height($desk.height()).animate({height: "850px"}, 500);
               
                var id = $(this).attr('id') + "content";
                $("#bookcover").html($("#"+$(this).attr('id')+" > .booklabel > h2").html());
                $("#"+id).css("display","block");
                
                $(".cover").css("background",$(this).children(".booklabel").css("background"));
                setTimeout(function() {
                    $($(".book").children(".cover")[1]).addClass("turn");
                    var page = $(".book").children(".page");
                    for(var i=0; i<j; i++){
                      $(page[i]).addClass("turn");
                     }
                }, 1000); 
               }
            });
            // 책 닫음
            $("#backicon").click(function(){
               
               $desk = $("#deskwrapper");
                $desk.height($desk.height()).animate({height: "0px"}, 500);

            	$sh = $("#shelfwrapper");

                $sh.height($sh.height()).animate({height: "850px"}, 500);
                setTimeout(function() {
                   $(".page").removeClass("turn");
                    $(".cover").removeClass("turn");
                    $('.mypagecontent').css("display","none");
                }, 100);  
                
            });
            $("#deleteMemberbtn").click(function(){

            	
            	if(confirm("정말로 탈퇴하시겠습니까?")){
            		location.href="deleteMember.do";
            	}
            });
           	// 사진입력시 미리보기  

            $("#photoinput").change(function () {
                readURL(this);
                $("#myphoto").css("width", "auto");
            });
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#myphoto').attr('src', e.target.result);
                    }
                    reader.readAsDataURL(input.files[0]);
                }
            }
            
        });
        // 단어장 불러오기
        function getAllMyDan(searchInput) {
          //192.168.10.13
            var send = JSON.stringify({
                 'search' : searchInput
              });
          console.log(searchInput);
            $.ajax({
               type : "POST",
               dataType : "json",
               contentType : "application/json; charset=utf-8",
               data : send,
               url : 'http://localhost:1222/getMyList',
               success : function(data) { 
                     console.log("에이작스로 몽고디비 데이터 가져오기")
                     console.log(data);
                     
                     
               },
               error : function() {
                  console.log("error has occured retriving data from MongoServer")
               }
            });
        }
    </script>
<c:if test="${ loginMember.profileimg =='defaultimg.png' && loginMember.introduce == '자기소개입력' }">
       <script>
          $(function(){
             alert("처음 오셨습니다. 프로필을 작성해주세요 ^^");
             $("#profile").click();
          });
       </script>
    </c:if> 
    <!-- 스케쥴 일정추가 모달 -->
   <!-- Modal -->
   <div class="modal fade" id="scModal" tabindex="-1" role="dialog" aria-labelledby="scModalLabel" aria-hidden="true">
     <div class="modal-dialog" role="document">
       <div class="modal-content">
         <div class="modal-header">
           <h5 class="modal-title" id="exampleModalLabel">일정추가</h5>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
         </div>
         <div class="modal-body" style="text-align:center;">
            <input id="selectedyear" class="form-control" type="text" style="display:none;" > 
           <input id="selectedday"class="form-control" type="date"> <span style="float:left; font-size:1.5em;"> ~ </span>
           <input class="form-control" id="selectedday2" type="date" >
           <br><br>
           <label for="refselect">참조 항목 :</label>
           <select id="refselect" class="form-control">       
           </select><br><br>
           <label for="scTitle">일정 내용 :</label>
           <input class="form-control" type="text" id="scTitle">
             <br><br>
           <label>일정 색깔 :</label> 
           <select id="sccolor" class="form-control" style="background:red;">
            <option value="red" style="background:red;" selected></option>           
            <option value="orange" style="background:orange;"></option>
            <option value="yellow" style="background:yellow;"></option>
            <option value="green" style="background:green;"></option>
            <option value="blue" style="background:blue;"></option>
            <option value="purple" style="background:purple;"></option>
            <option value="white" style="background:white;"></option>
            <option value="black" style="background:black;"></option>
           </select>
           <script>
              $(function(){
                 $("#sccolor").change(function(){
                    $(this).css("background",$(this).val());
                 });
              });
              
           </script>
         </div>
         <div class="modal-footer">
           <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
           <button type="button" id="insertsc" class="btn btn-primary">추가</button>
           <button type="button" id="updatesc" class="btn btn-primary" style="display:none;">변경</button>
         </div>
       </div>
     </div>
   </div>

    
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      
   <script>
   function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
               
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                
                } else {
                    //document.getElementById("extraAddress").value = '';
                    
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr+extraAddr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }
      $(function(){
         var y = " ${loginMember.birthDate }";
         y= y.substr(0,5)+y.substr(6,2)+y.substr(9,2);
         $("input[name=birthDate]").val(y);
         var add = "${loginMember.address}".split('/');
         $("#postcode").val(add[0]);
         $("#address").val(add[1]);
         $("#detailAddress").val(add[2]);
      })
   </script>
  
<!-- 캘린더 스크립 -->
    <script>
        !function () {

            var today = moment();

            function Calendar(selector, events) {
                this.el = document.querySelector(selector);
                this.events = events;
                this.current = moment().date(1);

                this.draw();
                var current = document.querySelector('.today');
                if (current) {
                    var self = this;
                    window.setTimeout(function () {
                        self.openDay(current);
                    }, 500);
                }
            }
            
         // 캘린더 그리기 시작
            Calendar.prototype.draw = function () {
            
                this.drawHeader();

                this.drawMonth();

                this.drawLegend();
            }

            Calendar.prototype.drawHeader = function () {
                var self = this;
                if (!this.header) {
                    //Create the header elements
                    this.header = createElement('div', 'header');
                    this.header.className = 'header';

                    this.title = createElement('h1');

                    var right = createElement('div', 'right');
                    right.addEventListener('click', function () { self.nextMonth(); });

                    var left = createElement('div', 'left');
                    left.addEventListener('click', function () { self.prevMonth(); });

                    //Append the Elements
                    this.header.appendChild(this.title);
                    this.header.appendChild(right);
                    this.header.appendChild(left);
                    this.el.appendChild(this.header);
                }

                this.title.innerHTML = this.current.format('YYYY MMMM');
                
                $("#selectedyear").val(this.current.format('YYYY-MM'));
            
            }
            // 월그리기
            Calendar.prototype.drawMonth = function () {
                var self = this;

                this.events.forEach(function (ev) {
                    ev.date = self.current.clone().date(Math.random() * (29 - 1) + 1);
                });


                if (this.month) {
                    this.oldMonth = this.month;
                    this.oldMonth.className = 'month out ' + (self.next ? 'next' : 'prev');
                    this.oldMonth.addEventListener('webkitAnimationEnd', function () {
                        self.oldMonth.parentNode.removeChild(self.oldMonth);
                        self.month = createElement('div', 'month');
                        self.backFill();
                        self.currentMonth();
                        self.fowardFill();
                        self.el.appendChild(self.month);
                        window.setTimeout(function () {
                            self.month.className = 'month in ' + (self.next ? 'next' : 'prev');
                        }, 16);
                    });
                } else {
                    this.month = createElement('div', 'month');
                    this.el.appendChild(this.month);
                    this.backFill();
                    this.currentMonth();
                    this.fowardFill();
                    this.month.className = 'month new';
                }
            }

            Calendar.prototype.backFill = function () {
                var clone = this.current.clone();
                var dayOfWeek = clone.day();

                if (!dayOfWeek) { return; }

                clone.subtract('days', dayOfWeek + 1);

                for (var i = dayOfWeek; i > 0; i--) {
                    this.drawDay(clone.add('days', 1));
                }
            }

            Calendar.prototype.fowardFill = function () {
                var clone = this.current.clone().add('months', 1).subtract('days', 1);
                var dayOfWeek = clone.day();

                if (dayOfWeek === 6) { return; }

                for (var i = dayOfWeek; i < 6; i++) {
                    this.drawDay(clone.add('days', 1));
                }
            }

            Calendar.prototype.currentMonth = function () {
                var clone = this.current.clone();

                while (clone.month() === this.current.month()) {
                    this.drawDay(clone);
                    clone.add('days', 1);
                }
            }

            Calendar.prototype.getWeek = function (day) {
                if (!this.week || day.day() === 0) {
                    this.week = createElement('div', 'week');
                    this.month.appendChild(this.week);
                }
            }

            Calendar.prototype.drawDay = function (day) {
                var self = this;
                this.getWeek(day);

                //Outer Day
                var outer = createElement('div', this.getDayClass(day));
                outer.addEventListener('click', function () {
                    self.openDay(this);
                });

                //Day Name
                var name = createElement('div', 'day-name', day.format('ddd'));

                //Day Number
                var number = createElement('div', 'day-number', day.format('DD'));


                //Events
                var events = createElement('div', 'day-events');
                this.drawEvents(day, events);

                outer.appendChild(name);
                outer.appendChild(number);
                outer.appendChild(events);
                this.week.appendChild(outer);
            }
            // 이벤트 그리기 
            Calendar.prototype.drawEvents = function (day, element) {
                if (day.month() === this.current.month()) {
                    var todaysEvents = this.events.reduce(function (memo, ev) {
                        //console.log(day.format('DD'));
                        //console.log(ev.cday);

                        //if (ev.date.isSame(day, 'day')) {
                        if (ev.cday == day.format('DD') && ev.cmonth == day.format('MM')) {

                            memo.push(ev);
                        }

                        return memo;
                    }, []);

                    todaysEvents.forEach(function (ev) {
                        var evSpan = createElement('span');
                        evSpan.style.background=ev.color;
                        element.appendChild(evSpan);
                    });
                }
            }

            Calendar.prototype.getDayClass = function (day) {
                classes = ['day'];
                if (day.month() !== this.current.month()) {
                    classes.push('other');
                } else if (today.isSame(day, 'day')) {
                    classes.push('today');
                }
                return classes.join(' ');
            }

            Calendar.prototype.openDay = function (el) {
                var details, arrow;
                var dayNumber = +el.querySelectorAll('.day-number')[0].innerText || +el.querySelectorAll('.day-number')[0].textContent;
                var day = this.current.clone().date(dayNumber);
                var str = $("#selectedyear").val();
                if(dayNumber < 10){
                	dayNumber = "0" + dayNumber;
                	
                }
                
            $("#selectedday").val(str+"-"+dayNumber);
            $("#selectedday2").val(str+"-"+dayNumber);
            
                var currentOpened = document.querySelector('.details');

                //Check to see if there is an open detais box on the current row
                if (currentOpened && currentOpened.parentNode === el.parentNode) {
                    details = currentOpened;
                    arrow = document.querySelector('.arrow');
                } else {
                    //Close the open events on differnt week row
                    //currentOpened && currentOpened.parentNode.removeChild(currentOpened);
                    if (currentOpened) {
                        currentOpened.addEventListener('webkitAnimationEnd', function () {
                            currentOpened.parentNode.removeChild(currentOpened);
                        });
                        currentOpened.addEventListener('oanimationend', function () {
                            currentOpened.parentNode.removeChild(currentOpened);
                        });
                        currentOpened.addEventListener('msAnimationEnd', function () {
                            currentOpened.parentNode.removeChild(currentOpened);
                        });
                        currentOpened.addEventListener('animationend', function () {
                            currentOpened.parentNode.removeChild(currentOpened);
                        });
                        currentOpened.className = 'details out';
                    }

                    //Create the Details Container
                    details = createElement('div', 'details in');

                    //Create the arrow
                    var arrow = createElement('div', 'arrow');

                    //Create the event wrapper

                    details.appendChild(arrow);
                    el.parentNode.appendChild(details);
                }

                var todaysEvents = this.events.reduce(function (memo, ev) {
                    if (ev.cday == day.format('DD') && ev.cmonth == day.format('MM')) {
                        memo.push(ev);
                    }
                    return memo;
                }, []);

                this.renderEvents(todaysEvents, details);

                arrow.style.left = el.offsetLeft - el.parentNode.offsetLeft + 27 + 'px';
            }

            Calendar.prototype.renderEvents = function (events, ele) {
                //Remove any events in the current details element
                var currentWrapper = ele.querySelector('.events');
                var wrapper = createElement('div', 'events in' + (currentWrapper ? ' new' : ''));
            
                events.forEach(function (ev) {
                    var div = createElement('div', 'event');
                    //div.setAttribute("id",ev.refId);
                    //div.setAttribute("onclick",'myeventclick(\''+ev.refId+'\')');
                    //div.setAttribute("onclick",'myeventclick('+div+')');
                    var square = createElement('div', 'event-category ' + ev.color);
                    var span = createElement('span', '', ev.eventName);
                    span.id = ev.refId;
                    //span.setAttribute('onClick', gomyClass(ev.refId), false);
               var input = createElement('input');
               input.value = ev.sId;
               input.style.display = "none";
               var btn1 = createElement("button",'changescbtn');
                   btn1.setAttribute('data-toggle', 'modal');
                   btn1.setAttribute('data-target', '#scModal');
               var btn2 = createElement("button",'deletescbtn');
                    div.appendChild(square);
                    div.appendChild(span);
                    div.appendChild(input);
                    div.appendChild(btn2);
                    div.appendChild(btn1);
                    wrapper.appendChild(div);
                });

                if (!events.length) {
                    var div = createElement('div', 'event empty');
                    var span = createElement('span', '', '일정이 없습니다.');

                    div.appendChild(span);
                    wrapper.appendChild(div);
                }
                // 일정 추가 버튼
                var btn = createElement("button", "scbtn", '+');
                btn.setAttribute('data-toggle', 'modal');
                btn.setAttribute('data-target', '#scModal');
                btn.setAttribute("onclick","scbtnclick();");
                wrapper.appendChild(btn);
                if (currentWrapper) {
                    currentWrapper.className = 'events out';
                    currentWrapper.addEventListener('webkitAnimationEnd', function () {
                        currentWrapper.parentNode.removeChild(currentWrapper);
                        ele.appendChild(wrapper);
                    });
                    currentWrapper.addEventListener('oanimationend', function () {
                        currentWrapper.parentNode.removeChild(currentWrapper);
                        ele.appendChild(wrapper);
                    });
                    currentWrapper.addEventListener('msAnimationEnd', function () {
                        currentWrapper.parentNode.removeChild(currentWrapper);
                        ele.appendChild(wrapper);
                    });
                    currentWrapper.addEventListener('animationend', function () {
                        currentWrapper.parentNode.removeChild(currentWrapper);
                        ele.appendChild(wrapper);
                    });
                } else {
                    ele.appendChild(wrapper);
                }
            }

            Calendar.prototype.drawLegend = function () {
                var clone = this.current.clone();

                $(".legend").parent().children(".legend").remove();
                var legend = createElement('div', 'legend');

                var calendars = this.events.map(function (e) {

                    return e.calendar + '|' + e.color + '|' + e.cmonth + '|' + e.refId;


                }).reduce(function (memo, e) {
                    if (memo.indexOf(e) === -1) {
                        memo.push(e);
                    }

                    return memo;
                }, []).forEach(function (e) {
                    var parts = e.split('|');

                    if (parts[2] - clone.format("MM") == 0) {
                       var strr = parts[0];
                       if(parts[0].length > 8){
                          strr = parts[0].substr(0,8);
                          strr += "..";
                       }
                        var entry = createElement('span', 'entry '+ parts[1], strr);
                        entry.id = parts[3];
                        legend.appendChild(entry);
                    }

                });
                this.el.appendChild(legend);
            }

            Calendar.prototype.nextMonth = function () {
                this.current.add('months', 1);
                this.next = true;
                this.draw();
            }

            Calendar.prototype.prevMonth = function () {
                this.current.subtract('months', 1);
                this.next = false;
                this.draw();
            }

            window.Calendar = Calendar;

            function createElement(tagName, className, innerText) {
                var ele = document.createElement(tagName);
                if (className) {
                    ele.className = className;
                }
                if (innerText) {
                    ele.innderText = ele.textContent = innerText;
                }
                return ele;
            }
        }();

        function scdraw() {
           var mId= '${loginMember.mId}';
           $.ajax({
              url:"mySchedule.ck",
              data:{mId:mId},
              dataType:"json",
              type:"post",
               success:function(data){   
                  var calendar = new Calendar('#calendar', data);
            },error:function(e){
               alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
            }
            
         });   
              /* 
            function addDate(ev) {

            } */

        };
      $(function(){
         
         $(document).on('click', '.entry', function(){
            
            if($(this).attr("id").includes("cNo")){
               location.href='myClass.do?cNo=' + $(this).attr("id");
            }
         });
         
      });
      

    </script>
   <!-- 일정추가 스크립트 -->
    <script>
       function scbtnclick(){
          $("#exampleModalLabel").html("일정 추가");
          $("#updatesc").css("display","none");
         $("#insertsc").css("display","block");
          var mId = '${loginMember.mId}';
          $("#refselect").html("");
          $("#scTitle").val("");
          $("#selectedday2").val($("#selectedday").val());
          $.ajax({
              url:"getClassnVoca.ck",
              data:{mId:mId},
              type:"post",
               success:function(data){
                  for(var i in data){
                     var $op = $(" <option value='"+data[i].class_no+"'>");
                     $op.html(data[i].class_title);
                     $("#refselect").append($op);
                  }
            },error:function(e){
               alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
            }
            
         });   
       }
       // 일정 변경 / 삭제 버튼
      var sId = 0;
       function changescbtnclick(e){
           sId = $(e.target).parent().children()[2].value;
           if($(e.target).attr("class")=="deletescbtn"){
             // 일정 삭제
             if(confirm("일정을 삭제하시겠습니까?")){
                $.ajax({
                     url:"deleteSchedule.do",
                     data:{sId:sId},
                     type:"post",
                      success:function(data){
                         $("#calendar").html("");   
                            scdraw();
                   },error:function(e){
                      alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
                   }
                   
                });
             }
          }else{
            $("#updatesc").css("display","block");
            $("#insertsc").css("display","none");
             $("#exampleModalLabel").html("일정 변경");
             
             $("#refselect").html("");
             $.ajax({
                  url:"getSchedule.do",
                  data:{sId:sId},
                  dataType: "json",
                  type:"post",
                   success:function(data){
                      $("#selectedday").val(data.startDate);
                      $("#selectedday2").val(data.endDate);
                      $("#scTitle").val(data.sTitle);
                      var $op = $(" <option value='"+data.refId+"'>");
                     $op.html(data.refName);
                     $("#refselect").append($op);
                     
                     for(var i=0; i<$("#sccolor").children().length; i++){
                        
                         if($("#sccolor").children()[i].value == data.color){
                           $("#sccolor").children()[i].setAttribute("selected", "selected");
                           $("#sccolor").css("background",data.color);
                        } 
                     }
                      
                      //$("#calendar").html("");   
                       //scdraw();
                },error:function(e){
                   alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
                }
                
             });
             
          } 
       }
       
       $(function(){
          $(document).on('click', '#updatesc', function(){
             var refId = $("#refselect").val();
             var mId = '${loginMember.mId}';
             var sTitle = $("#scTitle").val();
             var startDate = $("#selectedday").val();
             var endDate = $("#selectedday2").val();
             var color = $("#sccolor").val(); 
             $.ajax({
                  url:"updateSchedule.do",
                  data:{sId:sId,mId:mId,refId:refId,sTitle:sTitle,
                     startDate:startDate,endDate:endDate,color:color},
                  type:"post",
                   success:function(data){
                      
                      if(data=="good"){
                         $(".changescbtn").click();
                         $("#calendar").html("");   
                         scdraw();
                      }
                },error:function(e){
                   alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
                }
                
             });   
             
          });

          
       
          // 일정 기능 보이고 안보이고
          $(document).on('click', '.event', function(e){
             if($(e.target).attr("class") == "deletescbtn" ||$(e.target).attr("class") == "changescbtn"){
                changescbtnclick(e);
                return 0;
             }
             var $et = null;
             if($(e.target).attr("class") != 'event'){
                $et = $(e.target).parent();
             }else{
                $et = $(e.target);
             }   
             if(   $et.children(".deletescbtn").css("display") =="none"){
                $et.children(".changescbtn").css("display","block");
                $et.children(".deletescbtn").css("display","block");
             }else{
                $et.children(".changescbtn").css("display","none");
                $et.children(".deletescbtn").css("display","none");
             }
          });
          
          
          $("#insertsc").click(function(){
             var refId = $("#refselect").val();
             var mId = '${loginMember.mId}';
             var sTitle = $("#scTitle").val();
             var startDate = $("#selectedday").val();
             var endDate = $("#selectedday2").val();
             var color = $("#sccolor").val(); 
             $.ajax({
                  url:"insertSchedule.do",
                  data:{mId:mId,refId:refId,sTitle:sTitle,
                     startDate:startDate,endDate:endDate,color:color},
                  type:"post",
                   success:function(data){
                      if(data=="good"){
                         $(".scbtn").click();
                          $("#calendar").html("");   
                          scdraw();
                      }
                      
                },error:function(e){
                   alert("error code : "+ e.status + "\n"+"message : " + e.responseText);
                }
                
             });   
          });
       });
    </script>
    
    <!-- <jsp:include page="../common/footer.jsp"/> -->
    
</body>

</html>