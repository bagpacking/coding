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
<script src="js/default.js"></script>
<link rel="stylesheet" href="css/default.css">
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" media="( min-width:701px ) and ( max-width:1000px )" href="css/tablet.css">
<link rel="stylesheet" media="( min-width:0px ) and ( max-width:700px )" href="css/mobile.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
</head>
<body>
    
    <header>
        <div class="left">
       <h1><!--      <a href="#a">Hdac</a> --><img src="./images/logo1.png" style="width:140px; height:86px;" href="/index.jsp"></h1>
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
        <li class="join"><a href="./member/login.jsp">Sign In</a></li>
        </ul>
    </header>
    <div class="dim" ></div>
      <div id="main" class="scroll-container">
     <section class="section1"> 
    <div class="main">
      <h1 >
  <p  style ="color: white;"class="typewrite" data-period="2000" data-type='[ "Hi, Im Lee.", "I am Creative.", "I Love Design.", "I Love to Develop." ]'>
    <span class="wrap"></span>
    
    </div>
    </section>
<!--     <div class="about"> 
    
    
  </div> -->

  <section class="section2">
       <div class="skill">
    <h2>Skills</h2>
    <p>분야별 기술 소개</p>
      <div class="skill_div">
    <div class="font">
    <img src="./images/webskill.png">
    <br>
    <b>Web Skills</b>
    <p>HTML5, CSS JAVASCRIPT, Jquery, AJAX</p>
    </div>
    <div class="back">
     <img src="./images/languge.png">
       <br>
    <b>Language</b>
    <p>JSP, PHP</p>
    </div>
    <div class="etc">
     <img src="./images/server.png">
            <br>
    <b>Server, etc</b>
    <p>linux, AWS 서버구축, Git 형상관리</p>
    </div>
    
     <div class="db">
     <img src="./images/db.png">
            <br>
    <b>Database</b>
    <p>MYSQLDB, ORACLEDB</p>
    </div>
    
   </div>
    </div>
  </section>
  	<section class="section3">
  
     <div class="project">
    	 <h2>Project</h2>
<div>
<ul class="bxslider">
	<%
	int i=0;
	for(i=0; i<3; i++){
		%>
		<li><a href="#"><div style="width:100%; height:100%; display:inline-flex">

		
		<div style="border:1px solid black; width:50%;">project <%=i %></div><div style="border:1px solid black; width:50%;">project <%=i %>
		<br>asdfsdafsadf<br>asdfsadfsadfsadf<br>asdfasdf</div>
		</div></a></li>  		
<%  		
  		
  	} %>


</ul>
</div>


    
    </div>
    </section>
  <section class="section4">  
     <div class="contact">
     <b>Contact</b>

    </div>
    </section>
    </div>
    
    
</body>
</html>

<script type="text/javascript">
		new fullScroll({
			displayDots: true,
			dotsPosition: 'left',
			animateTime: 0.7,
			animateFunction: 'ease'
		});
		
		
		
		$(document).ready(function(){
			$('.slider').bxSlider();
			
		});
	</script>














