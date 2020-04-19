# It-Where-Project
영어를 잘 하기 위해 꼭 필요하지만, 지루하게 느껴질 수 있는 '단어 외우기'를 우리 홈페이지에서 제공하는 암기 기능을 이용하고,
다른 사람과 함께 함으로써 더 재밌게 영단어를 외울 수 있는 페이지

## 개발 환경
* Programming Language    
Java
* DB  
Oracle 11g
* Web  
HTML5, CSS6, Javascript, jQuery
* Server  
Tomcat 8.5, JSP/Servlet
* Framework
Spring, Mybatis

## 주요 기능
* 계정
* 마이페이지
* 단어 저장 및 공유
* 스터디
* 커뮤니티
* 고객센터
* 관리자 전용 페이지

## DB 설계
<div>
  <img width="100%" height="500" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2FbQnR5q%2FbtqCrjXQPco%2F6iZf2FnONwKlVn3UTNHwiK%2Fimg.png">  
</div>

## 담당 역할
> JSP/Servlet, DB 등 해당 내용에 관한 모든 처리
<span>
  <img align="left" width="450" height="400" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2Fb5GrRF%2FbtqCu0b7KzD%2FOTDk4pxtoCuPdVrcixE0Pk%2Fimg.png">
  <b>회원가입</b><br><br>
  ㆍ 회원 가입을 위한 정보에 대한 처리<br><br>
  ㆍ 아이디 중복확인 기능<br><br>
  ㆍ 비밀번호를 비롯한 모든 내용에 정규화<br><br>
  ㆍ 이메일 인증<br><br>
  ㆍ 잘못 기입하거나 기입하지 않은 내용이 있을 경우 '가입하기' 버튼 비활성화
</span>            
<br><br><br><br><br><br><br>

<div>
  <img align="right" width="450" height="400" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2FLm7TV%2FbtqCsHqu4NN%2FKgAUkXsLSvXHwa2GqoOaI1%2Fimg.png">
  <b>ID/PWD 찾기</b><br><br>
  ㆍ 요구사항과 DB에 저장되어있는 정보가 일치한다면 ID 또는 Password 출력
</div>  
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  
<div>
  <img align="left" width="450" height="400" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2FbFHlcF%2FbtqCtW1Zm81%2FDpvKWicogmT9j3yNT7hbbk%2Fimg.png">
  <b style="text-align:center;">Login</b><br><br>
  ㆍ ID/PWD 정보가 일치한다면 로그인<br><br>
  ㆍ 비밀번호 실패에 대한 처리<br><br>
  ㆍ 로그인 후 메인 페이지로 이동 후 로그인 확인에 대한 처리
</div>  
<br><br><br><br><br><br><br><br><br><br><br>
  
<div>
  <img align="right" width="450" height="400" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2Fbrmqut%2FbtqCynKSAjH%2Ft2iGwi8Mt983LLiZK8eXjK%2Fimg.png">
  <b>MyPage</b><br><br>
   -좌측<br><br>
  ㆍ 회원별 프로필 사진과 별명을 화면에 보여주고, 클릭을 통한 프로필 사진 교체 기능  <br><br>
  ㆍ 로그아웃/회원정보 수정/내가 쓴 게시글 확인 등 홈페이지 내 사용자의 활동 내역 확인  <br><br><br>
  -중앙<br><br>
  ㆍ Google의 FullCalendar를 사용<br><br>
  ㆍ DB와 연동하여 저장된 여행 계획을 사용자에게 보여준다.  
</div>  
<br><br><br>

<div>
  <img align="left" width="450" height="400" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2FcFIQH1%2FbtqCrO4n79P%2FVvIqff32jxkjcLC2yYiJQk%2Fimg.png">
  <b style="text-align:center;">여행지 & 축제 불러오기</b><br><br>
  ㆍ 홈페이지에서 제공하는 여행지 및 축제 보여주기 기능<br><br>
  ㆍ <b>'드래그'를 통해 간단하게 여행 일정을 추가</b>하는 기능
</div>  
<br><br><br><br><br><br><br><br><br><br><br><br><br>  

<div>
  <img align="right" width="450" height="400" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2FLoJhk%2FbtqCrlnZEbc%2Fzs1ro7iU51NRYGDl4wN4l1%2Fimg.png">
  <b style="text-align:center;">요일별 일정 List</b><br><br>
  ㆍ Google Calendar API 사용<br><br>
  ㆍ DB와 연동 후 저장된 값을 사용자에게 보여지도록 구현
</div>  
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<div>
  <img align="left" width="450" height="400" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fk.kakaocdn.net%2Fdn%2Fu0Yhy%2FbtqCync4HXa%2FnvMVV3hzK70BpR7u2nNpcK%2Fimg.png">
  <b style="text-align:center;">일정 추가</b><br><br>
  ㆍ 여행에 필요한 정보를 입력받아 DB에 추가 기능<br><br>
  ㆍ Ajax를 통해 Calendar에 값 추가
</div>  
<br><br><br><br><br><br><br><br><br><br><br><br><br>
