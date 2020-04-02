<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fnc" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 <style>
        .xbtn{
			font-size: 25px;
			color: #000;
			display: block;
			transition: 0.2s ease-in-out;
        }
        .xbtn:hover {
			color: #fff;
            cursor:pointer;
		}
    </style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="../common/classSideMenubar.jsp"/>
	<!-- 컨텐트 부분-->
    <div style="margin-top :4vh; margin-left: 4vw; width:70%; height:800px; float: left; overflow: auto; position: relative;">
    	<div style="margin:auto; width:50%; text-align:center; border-bottom:1px solid gray; font-family:cinzel;">
        <h1>MEMBER MANAGEMENT (${ cmList.size() })</h1>
        </div><br>
    <table class="table table-hover" style="width:80%; text-align: center; margin:auto; margin-left:10%; ">
        <thead style="font-family: 'Nanum Gothic', sans-serif;">
            <tr>
                <th scope="col" style="width:8%;"></th>
                <th scope="col" style="width:15%;">아이디</th>
                <th scope="col" style="width:15%;">닉네임</th>
                <th scope="col" style="width:12%;">최근 접속일</th>
                <th scope="col" style="width:15%;">공지사항 추가 권한</th>
                <th scope="col" style="width:15%;">단어장 추가 권한</th>
                <th scope="col" style="width:20%;">강퇴</th>
            </tr>
        </thead>
        <tbody stlye="font-family: 'Nanum Gothic', sans-serif;">
        	<c:forEach var="i" begin="0" end="${ cmList.size()-1 }">
	            <tr>
	                <%-- <th scope="row"><img src="${ contextPath }/resources/image//icon1.jpg"style="width:100%;"></th> --%>
	                <!-- 아이콘 부분 -->
						<c:set var="imgFlag2" value="true"/>
						<c:forEach var="q" begin="0" end="${ userList.size() - 1 }" >	 <!--  ajoa2012 -->
							<c:if test="${ cmList.get(i).id eq userList.get(q).refId && imgFlag2 }">
								 <th scope="row">
								 	<img src="${ contextPath }/resources/profileimg/${ userList.get(q).changeName }" style="width:100%; height:50px; border-radius:50px;">
								 </th>
								<c:set var="imgFlag2" value="false"/>
							</c:if>
						</c:forEach>
						<c:if test="${ imgFlag2 }">
							<th scope="row">
								<img src="${ contextPath }/resources/profileimg/defaultimg.png" style="width:100%;">
							</th>										
							<c:set var="imgFlag2" value="false"/>
						</c:if>
						
						
	                <td style="line-height:4;" id="findId${ i }">${ cmList.get(i).id }</td>
	                <c:forEach var="t" begin="0" end="${ allMember.size() - 1 }">
						<c:if test="${ cmList.get(i).id eq allMember.get(t).mId }">
							<td style="line-height:4;" id="findId${ i }">${ allMember.get(t).nickname }</td>
						</c:if>
	                </c:forEach>
	                <td style="line-height:4;">${ cmList.get(i).lastday }</td>
	                <c:choose>
		                <c:when test="${ cmList.get(i).wRight eq 'Y' }">
		                	<td><input type="checkbox" name="" id="wRight${ i }" class="wRight" style="height: 25px; width: 25px; margin-top:18px;" checked></td>
		                </c:when>
		                <c:otherwise>
		                	<td><input type="checkbox" name="" id="wRight${ i }" class="wRight" style="height: 25px; width: 25px; margin-top:18px;"></td>
		                </c:otherwise>
	                </c:choose>
	                
	                <c:choose>
		                <c:when test="${ cmList.get(i).vRight eq 'Y' }">
		                	<td><input type="checkbox" name="" id="vRight${ i }" class="vRight" style="height: 25px; width: 25px; margin-top:18px;" checked></td>
		                </c:when>
		                <c:otherwise>
		                	<td><input type="checkbox" name="" id="vRight${ i }" class="vRight" style="height: 25px; width: 25px; margin-top:18px;"></td>
		                </c:otherwise>
	                </c:choose>
	                
	                <td><span class="xbtn" id="xbtn${ i }" style="line-height:2;">x</span></td>
	            </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>
    <!-- 강퇴 -->
    <script>
    	$(function(){
    		$(".xbtn").click(function(){
    			var index = $(this).attr('id').replace("xbtn","");
    			var id = $("#findId" + index).text();
    			var obj = new Object(); // json에 보내기위한 객체
    			if(confirm(id + "님을 정말로 추방하시겠습니까?")){
    				obj.id = id;
					$.ajax({
						url:"classMemberBan.do",
						data : JSON.stringify(obj),
						type:"post",
						contentType:"application/json; charset=utf-8",
						success:function(data){
							if(data >= 1){
								alert(id + "님을 추방하였습니다.");
								location.href="classMemberRight.do";	
							}else{
								alert("클래스 마스터는 추방하실수 없습니다.");
							}
							
						},
						error:function(e){
							alert(e);
						}
					});
    			}
    		});
    	});
    </script>
	<!-- 단어장 추가 권한 스크립트 -->
	<script>
		$(function(){
			$(".vRight").click(function(){
				var what = $(this).is(":checked");
				// 몇번째 td 인지 
				var index = $(this).attr('id').replace("vRight","");
				var id = $("#findId" + index).text(); 
				var obj = new Object(); // json에 보내기위한 객체
				var flag = true; // 권한 부여 해제 또는 체크
				var flag2 = true;
				
				if(what){
					if(confirm(id + "님에게 단어장 추가 권한을 부여하시겠습니까?")){
						obj.id = id;
						obj.flag = flag;
						$.ajax({
							url:"vRightTrue.do",
							data : JSON.stringify(obj),
							type:"post",
							contentType:"application/json; charset=utf-8",
							success:function(data){
								if(data >= 1){
									alert("추가 권한 부여 성공");
								}else{
									alert("클래스 마스터의 권한은 변경하실수 없습니다.");
								}
							},
							error:function(e){
								alert("클래스 마스터의 권한은 변경하실수 없습니다.");
							}
						});
					}else{
						$(this).prop("checked", false);
					}
				}else{
					if(confirm(id + "님에게 단어장 추가 권한을 해제하시겠습니까?")){
						obj.id = id;
						obj.flag = !flag;
						$.ajax({
							url:"vRightTrue.do",
							data : JSON.stringify(obj),
							type:"post",
							contentType:"application/json; charset=utf-8",
							success:function(data){
								if(data >= 1){
									alert("추가 권한 해제 성공");
								}else{
									alert("클래스 마스터의 권한은 변경하실수 없습니다.");
								}
							},
							error:function(e){
								alert("클래스 마스터의 권한은 변경하실수 없습니다.");
							}
						});
					}else{
						$(this).prop("checked", true);
					}
				}
			});
		});
	</script>
	
	<!-- 단어 추가 권한 스크립트 -->
	<script>
		$(function(){
			$(".wRight").click(function(){
				var what = $(this).is(":checked");
				// 몇번째 td 인지 
				var index = $(this).attr('id').replace("wRight","");
				var id = $("#findId" + index).text(); 
				var obj = new Object(); // json에 보내기위한 객체
				var flag = true; // 권한 부여 해제 또는 체크
				var flag2 = true;
				if(what){
					if(confirm(id + "님에게 단어 추가 권한을 부여하시겠습니까?")){
						obj.id = id;
						obj.flag = flag;
						$.ajax({
							url:"wRightTrue.do",
							data : JSON.stringify(obj),
							type:"post",
							contentType:"application/json; charset=utf-8",
							success:function(data){
								if(data >= 1){
									alert("추가 권한 부여 성공");
								}else{
									alert("클래스 마스터의 권한은 변경하실수 없습니다.");
								}
							},
							error:function(e){
								alert("클래스 마스터의 권한은 변경하실수 없습니다.");
							}
						});
					}else{
						$(this).prop("checked", false);
					}
				}else{
					if(confirm(id + "님에게 단어 추가 권한을 해제하시겠습니까?")){
						obj.id = id;
						obj.flag = !flag;
						$.ajax({
							url:"wRightTrue.do",
							data : JSON.stringify(obj),
							type:"post",
							contentType:"application/json; charset=utf-8",
							success:function(data){
								if(data >= 1){
									alert("추가 권한 해제 성공");
								}else{
									alert("클래스 마스터의 권한은 변경하실수 없습니다.");
									flag2 = false;
								}
							},
							error:function(e){
								alert("클래스 마스터의 권한은 변경하실수 없습니다.");
							}
						});
					}else{
						$(this).prop("checked", true);
					}
				}
			});
		});
	</script>
</body>
</html>