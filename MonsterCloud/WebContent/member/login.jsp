<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">	
<meta name="format-detection" content="telephone=no">
<title>반응형웹</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="../js/default.js"></script>
<link rel="stylesheet" href="../css/default.css">
<link rel="stylesheet" href="../css/index.css">
<link rel="stylesheet" media="( min-width:701px ) and ( max-width:1000px )" href="../css/tablet.css">
<link rel="stylesheet" media="( min-width:0px ) and ( max-width:700px )" href="../css/mobile.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<meta name="google-signin-client_id" content="1080320778777-b210d836c99dblg2r73ku0i9qj9hs80s.apps.googleusercontent.com">
		<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
		<meta name="google-signin-scope" content="profile email">
		 <meta name="google-signin-client_id" content="1080320778777-b210d836c99dblg2r73ku0i9qj9hs80s.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
</head>



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
      document.getElementById("useremail").value=profile.getEmail();
      document.getElementById("userpassword").value="asdfasdfasdf";
      document.getElementById("userid").value=profile.getEmail();
 /*      document.getElementById("username").value=profile.getName();
      document.getElementById("gender").value="확인불가"; */
      document.getElementById("gklogin_form").submit();
      gauth.disconnect();
    }
  }
  if (type=="kakao") {
    Kakao.API.request({
       url: '/v1/user/me',
       success: function(res) {
         document.getElementById("useremail").value=res.kaccount_email;
         document.getElementById("userpassword").value="asdfasdfasdf";
         document.getElementById("userid").value=res.kaccount_email;
/*          document.getElementById("username").value=res.properties.nickname;
         document.getElementById("gender").value=res.has_gender; */
         document.getElementById("gklogin_form").submit();
       },
       fail: function(error) {
          console.log(error);
       }
    });
  }
}
</script>

<body>
    
    <header>
        <div class="left">
        <h1><!--      <a href="#a">Hdac</a> --><a href="../index.jsp"><img src="../images/logo1.png" style="width:140px; height:86px;" href=""></a></h1>
            <a href="#a" class="all">all Menu</a>
            <div class="nav">
                <h2>Menu</h2>
                <nav>
                    <ul>
                    <li><a href="#a">Pic</a></li>
                    <li><a href="#a">Media</a></li>
                    <li><a href="#a">File</a></li>
                    <li><a href="https://github.com/bagpacking">github</a></li>
                    <li><a href="#a">Q&A</a></li>
                    </ul>
                </nav>
                <div>
<!--                <a href="#a">White Paper</a>  -->
                    <a href="#a">FAQ</a>
                </div>
                <a href="#a" class="close">Close</a>
            </div>
        </div>
        <ul>
<!--         <li><a href="#a">White Paper</a></li> -->
        <li><a href="#a">FAQ</a></li>
        
        </ul>
    </header>
    
    

    
    
    <div class="dim" ></div>
      <div id="main" class="scroll-container">
     <section class="section1"> 
    <div class="main">
    <div style="border: 1px solid gray; width:40%; heigt:50%; margin:0 auto;">
     <form method="post" action="LoginAction.jsp?login=1">
                <h3 style="text-align:center">로그인 화면</h3>
                <div class="form-group">
                    <input type ="text" class="form-control" placeholder="아이디"  name="id" mexlength="20" style="width:290px;">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="비밀번호" name="password" mexlength="20" style="width:290px;">
                </div>
                 <button type="button" id="kloginBtn" class="modal_text" onclick="kakao_login();"/>카카오 로그인</button>
  <button type="button" id="kloginBtn" class="modal_text" onclick="google_login();"/>구글 로그인</button>
                <input type="submit" class="btn btn-primary form-control"  value="로그인" style="width:143px;">
               
            </form>     <a href="./Join.jsp"><button style="width:143px;">회원가입</button></a>
            <form id="gklogin_form" action="LoginAction.jsp?login=2" method="post">
              <input type="hidden" id="userid" name="id" >
                <input type="hidden" id="userpassword" name="password" value="asdf">
                 <input type="hidden" id="useremail" name="email" >
               	<input type ="hidden" class="form-control"  name="state" id="state" value="Y">
                        
              </form>
    <span class="wrap"></span>
    </div>
    </div>
    </section>

    
</body>
</html>
 <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>














