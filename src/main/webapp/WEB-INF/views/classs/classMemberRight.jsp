<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <h1>스터디 멤버 (5)</h1><br><br>
    <table class="table table-hover" style="width:80%; text-align: center; margin:auto; margin-left:10%; ">
        <thead>
            <tr>
                <th scope="col" style="width:8%;"></th>
                <th scope="col" style="width:20%;">아이디</th>
                <th scope="col" style="width:12%;">최근 접속일</th>
                <th scope="col" style="width:20%;">단어 추가 권한</th>
                <th scope="col" style="width:20%;">단어장 추가 권한</th>
                <th scope="col" style="width:20%;">강퇴</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row"><img src="${ contextPath }/resources/image//icon1.jpg"style="width:100%;"></th>
                <td style="line-height:4;">ajoa2012</td>
                <td style="line-height:4;">2020-01-27</td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;" ></td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;"></td>
                <td><span class="xbtn" style="line-height:2;">x</span></td>
            </tr>
            <tr>
                <th scope="row"><img src="${ contextPath }/resources/image//icon2.jpg"style="width:100%;"></th>
                <td style="line-height:4;">jjang1</td>
                <td style="line-height:4;">2020-01-28</td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;" ></td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;"></td>
                <td><span class="xbtn" style="line-height:2;">x</span></td>
            </tr>
            <tr>
                <th scope="row"><img src="${ contextPath }/resources/image//icon3.jpg"style="width:100%;"></th>
                <td style="line-height:4;">sin0102</td>
                <td style="line-height:4;">2020-01-27</td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;" ></td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;"></td>
                <td><span class="xbtn" style="line-height:2;">x</span></td>
            </tr>
            <tr>
                <th scope="row"><img src="${ contextPath }/resources/image//icon1.jpg"style="width:100%;"></th>
                <td style="line-height:4;">ajoa2012</td>
                <td style="line-height:4;">2020-01-27</td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;" ></td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;"></td>
                <td><span class="xbtn" style="line-height:2;">x</span></td>
            </tr>
            <tr>
                <th scope="row"><img src="${ contextPath }/resources/image//icon2.jpg"style="width:100%;"></th>
                <td style="line-height:4;">ajoa2012</td>
                <td style="line-height:4;">2020-01-27</td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;" ></td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;"></td>
                <td><span class="xbtn" style="line-height:2;">x</span></td>
            </tr>
            <tr>
                <th scope="row"><img src="${ contextPath }/resources/image//icon3.jpg"style="width:100%;"></th>
                <td style="line-height:4;">ajoa2012</td>
                <td style="line-height:4;">2020-01-27</td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;" ></td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;"></td>
                <td><span class="xbtn" style="line-height:2;">x</span></td>
            </tr>
            <tr>
                <th scope="row"><img src="${ contextPath }/resources/image//icon1.jpg"style="width:100%;"></th>
                <td style="line-height:4;">ajoa2012</td>
                <td style="line-height:4;">2020-01-27</td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;" ></td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;"></td>
                <td><span class="xbtn" style="line-height:2;">x</span></td>
            </tr>
            <tr>
                <th scope="row"><img src="${ contextPath }/resources/image//icon2.jpg"style="width:100%;"></th>
                <td style="line-height:4;">ajoa2012</td>
                <td style="line-height:4;">2020-01-27</td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;" ></td>
                <td><input type="checkbox" name="" id="" style="height: 25px; width: 25px; margin-top:18px;"></td>
                <td><span class="xbtn" style="line-height:2;">x</span></td>
            </tr>
            
            
        </tbody>
    </table>
    </div>
	
</body>
</html>