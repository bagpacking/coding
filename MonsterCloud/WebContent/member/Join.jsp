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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

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
     <form method="post" action="JoinAction.jsp">
                <h3 style="text-align:center">회원 가입</h3>
                <div class="form-group">
						<input type ="text"  name="id" id="id" placeholder="아이디" style="width:290px;"> <br>
						<input type ="password" placeholder="패스워드" name="password" id="password" mexlength="20" style="width:290px;"><br>
				<input type="text" name="email1" id="email1" style="width:168px"> @ <input type="text" name="email2" id="email2" style="width:100px;" readonly value="naver.com">
<br>

				<select style="width:100px;margin-right:10px" name="selectEmail" id="selectEmail">
					 <option value="1">직접입력</option>
					 <option value="naver.com" selected>naver.com</option>
					 <option value="hanmail.net">hanmail.net</option>
					 <option value="hotmail.com">hotmail.com</option>
					 <option value="nate.com">nate.com</option>
					 <option value="yahoo.co.kr">yahoo.co.kr</option>
					 <option value="empas.com">empas.com</option>
					 <option value="dreamwiz.com">dreamwiz.com</option>
					 <option value="freechal.com">freechal.com</option>
					 <option value="lycos.co.kr">lycos.co.kr</option>
					 <option value="korea.com">korea.com</option>
					 <option value="gmail.com">gmail.com</option>
					 <option value="hanmir.com">hanmir.com</option>
					 <option value="paran.com">paran.com</option>
				</select>
						<input type ="hidden" class="form-control"  name="state" id="state" value="Y">
                      
                </div>
                
                <input type="submit" class="btn btn-primary form-control"  value="확인" style="width:143px;">
               
            </form>    
    <span class="wrap"></span>
    </div>
    </div>
    </section>

    
</body>
</html>




<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script> 
<script type="text/javascript"> //이메일 입력방식 선택 
$('#selectEmail').change(function(){ $("#selectEmail option:selected").each(function () {
	if($(this).val()== '1'){ //직접입력일 경우 
		$("#email2").val(''); //값 초기화
		$("#email2").attr("readonly",false); //활성화 
		}else{ //직접입력이 아닐경우
			$("#email2").val($(this).text()); //선택값 입력
		$("#email2").attr("readonly",true); //비활성화
		} }); }); 
		</script>













