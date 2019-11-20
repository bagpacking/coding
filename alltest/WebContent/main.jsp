<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>
<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
		<meta name="google-signin-client_id" content="1080320778777-b210d836c99dblg2r73ku0i9qj9hs80s.apps.googleusercontent.com">
		<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
		<meta name="google-signin-scope" content="profile email">
		 <meta name="google-signin-client_id" content="1080320778777-b210d836c99dblg2r73ku0i9qj9hs80s.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>









<script>
window.gauth ="";
function init(){
  console.log('init');
  gapi.load('auth2', function() {
    console.log('auth2');
    //window로 사용하면서 전역변수로 선언
    window.gauth = gapi.auth2.init({
      client_id:'1080320778777-b210d836c99dblg2r73ku0i9qj9hs80s.apps.googleusercontent.com'
    });

    gauth.then(function(){
      console.log('googleAuth success');
    }, function(){
      console.log('googleAuth fail');
    });
  });
 
}
</script><!-- end of init -->
<script >
function google_login(){
  gauth.signIn().then(function(){
    console.log('gauth.signIn()');
    sendToDml("google");
  });
}
</script><!-- end of google login script -->

<script>
Kakao.init('00d80e1f8e0ba72a04389239b33d10b8');
function kakao_login() {
	  Kakao.Auth.loginForm({
	    success: function(authObj) {
	      sendToDml("kakao");
	    },
	    fail: function(err) {
	      alert(JSON.stringify(err));
	    }
	  });
	}



</script>

<script>
function sendToDml(type){
  if(type=="google"){
    console.log("보내자");
    if(gauth.isSignedIn.get()){
      profile = gauth.currentUser.get().getBasicProfile(); //프로필 정보를 가져온다.
      document.getElementById("email").value=profile.getEmail();
      document.getElementById("pass").value="asdfasdfasdf";
      document.getElementById("id").value=profile.getEmail();
      document.getElementById("username").value=profile.getName();
      document.getElementById("gender").value="확인불가";
      document.getElementById("gklogin_form").submit();
      gauth.disconnect();
    }
  }
  if (type=="kakao") {
    Kakao.API.request({
       url: '/v1/user/me',
       success: function(res) {
         document.getElementById("email").value=res.kaccount_email;
         document.getElementById("pass").value="asdfasdfasdf";
         document.getElementById("id").value=res.kaccount_email;
         document.getElementById("username").value=res.properties.nickname;
         document.getElementById("gender").value=res.has_gender;
         document.getElementById("gklogin_form").submit();
       },
       fail: function(error) {
          console.log(error);
       }
    });
  }
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 뷰포트 -->

<meta name="viewport" content="width=device-width" initial-scale="1">

<!-- 스타일시트 참조  -->

<link rel="stylesheet" href="css/bootstrap.min.css">

<title>jsp 게시판 웹사이트</title>

</head>

<body>

 <!-- 네비게이션  -->

 <nav class="navbar navbar-default">

  <div class="navbar-header">

   <button type="button" class="navbar-toggle collapsed" 

    data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"

    aria-expaned="false">

     <span class="icon-bar"></span>

     <span class="icon-bar"></span>

     <span class="icon-bar"></span>

    </button>

    <a class="navbar-brand" href="main.jsp">JSP 게시판</a>

  </div>
<% 
if(session.getAttribute("userID") == null){

%>
  <div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">

   <ul class="nav navbar-nav">

    <li><a href="main.jsp">메인</a></li>

    <li><a href="bbs.jsp">게시판</a></li>

   </ul>

    

   <ul class="nav navbar-nav navbar-right">

    <li class="dropdown">

     <a href="#" class="dropdown-toggle"

      data-toggle="dropdown" role="button" aria-haspopup="true"

      aria-expanded="false">접속하기<span class="caret"></span></a>

     <ul class="dropdown-menu">

      <li class="active"><a href="login.jsp">로그인</a></li>

      <li><a href="join.jsp">회원가입</a></li>

      

     </ul>

    </li>

   </ul>

  </div> 

 </nav>

 <!-- 로긴폼 -->

 <div class="container">

  <div class="col-lg-4"></div>

  <div class="col-lg-4">

  <!-- 점보트론 -->

   <div class="jumbotron" style="padding-top: 20px;">

   <!-- 로그인 정보를 숨기면서 전송post -->

   <form method="post" action="loginAction.jsp?login=1">

    <h3 style="text-align: center;"> 로그인화면 </h3>

    <div class="form-group">

     <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">

    </div>

       

    <div class="form-group">

     <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">

    </div>
	
    <input type="submit" class="btn btn-primary form-control" value="로그인">
 <button type="button" id="kloginBtn" class="modal_text" onclick="kakao_login();"/>카카오 로그인</button>
  <button type="button" id="kloginBtn" class="modal_text" onclick="google_login();"/>구글 로그인</button>
  		<a id="kakao-login-btn"></a>
		<a href="http://developers.kakao.com/logout"></a>


   </form>
   
<form id="gklogin_form" action="loginAction.jsp?login=2" method="post">
              <input type="hidden" id="id" name="userID" >
                <input type="hidden" id="pass" name="userPassword" value="asdf">
                 <input type="hidden" id="email" name="userEmail" >
                <input type="hidden" id="username" name="userName" >
                  <input type="hidden" id="gender" name="userGender" >
             
              </form>
  </div>

 </div>

</div>
<%


}else if(session.getAttribute("userID").equals("admin")){
	
	%>
	  <div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">

   <ul class="nav navbar-nav">

    <li><a href="main.jsp">메인</a></li>

    <li><a href="bbs.jsp">게시판</a></li>

   </ul>

    

   <ul class="nav navbar-nav navbar-right">
	<li ><%  out.print(session.getAttribute("userID") + " 님 환영합니다"); %> </li>
    <li class="dropdown">

     <a href="#" class="dropdown-toggle"

      data-toggle="dropdown" role="button" aria-haspopup="true"

      aria-expanded="false">접속하기<span class="caret"></span></a>

     <ul class="dropdown-menu">

      <li class="active"><a href="logoutAction.jsp">로그아웃</a></li>

      <li><a href="member/memberlist.jsp">회원목록</a></li>

      

     </ul>

    </li>

   </ul>

  </div> 

 </nav>


	<%
	
	
	
}else if(session.getAttribute("userID") != null){
	
	
	%>
	<div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">

   <ul class="nav navbar-nav">

    <li><a href="main.jsp">메인</a></li>

    <li><a href="bbs.jsp">게시판</a></li>

   </ul>

    

   <ul class="nav navbar-nav navbar-right">
	<li ><%  out.print(session.getAttribute("userID") + " 님 환영합니다"); %> </li>
    <li class="dropdown">

     <a href="#" class="dropdown-toggle"

      data-toggle="dropdown" role="button" aria-haspopup="true"

      aria-expanded="false">접속하기<span class="caret"></span></a>

     <ul class="dropdown-menu">

      <li class="active"><a href="logoutAction.jsp">로그아웃</a></li>

      <li><a href="join.jsp">회원가입</a></li>

      

     </ul>

    </li>

   </ul>

  </div> 

 </nav>
	<%
	
	
}
%>

   <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>

 <!-- 애니매이션 담당 JQUERY -->

 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 

 <!-- 부트스트랩 JS  -->

 <script src="js/bootstrap.js"></script>

 

</body>

</html>
<!-- init -->


