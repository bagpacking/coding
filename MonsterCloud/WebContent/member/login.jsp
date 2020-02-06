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

</head>
<body>
    
    <header>
        <div class="left">
       <h1><!--      <a href="#a">Hdac</a> --><img src="../images/logo1.png" style="width:140px; height:86px;" href="/index.jsp"></h1>
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
     <form method="post" action="loginAction.jsp">
                <h3 style="text-align:center">로그인 화면</h3>
                <div class="form-group">
                    <input type ="text" class="form-control" placeholder="아이디" name="userID" mexlength="20" style="width:290px;">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" mexlength="20" style="width:290px;">
                </div>
                <input type="submit" class="btn btn-primary form-control"  value="로그인" style="width:143px;">
                <a href="join.jsp"><button style="width:143px;">회원가입</button></a>
            </form>    
    <span class="wrap"></span>
    </div>
    </div>
    </section>

    
</body>
</html>
















