<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">

<meta name="format-detection" content="telephone=no">
<title>반응형웹</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="../js/default.js"></script>
<link rel="stylesheet" href="../css/default.css">
<link rel="stylesheet" href="../css/index.css">
<link rel="stylesheet" media="( min-width:701px ) and ( max-width:1000px )" href="../css/tablet.css">
<link rel="stylesheet" media="( min-width:0px ) and ( max-width:700px )" href="../css/mobile.css">
<!--     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->

</head>



<body>
    
    <header>
        <div class="left">
       <h1>    <a href="../index.jsp"><img src="../images/logo1.png" style="width:140px; height:86px;"></a></h1>
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
    <form action="FileUpload.jsp" method="post" enctype="Multipart/form-data">
        올린 사람 : <input type="text" name="name" /><br/>
        제목        : <input type="text" name="subject" /><br/>
        <!--
            파일 업로드는 input type="file"로 지정한다.
         -->
        파일명1 : <input type="file" name="fileName1" /><br/>
        <input type="submit" value="전송" />  
        <input type="reset" value="취소" />
    </form>

    <span class="wrap"></span>
    </div>
    </div>
    </section>

    
</body>
</html>










