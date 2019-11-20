<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%@ page import="user.UserDAO" %> <!-- userdao의 클래스 가져옴 -->

<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->



<% request.setCharacterEncoding("UTF-8"); %>



<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->

<jsp:useBean id="user" class="user.User" scope="page" />

<jsp:setProperty name="user" property="userID" />

<jsp:setProperty name="user" property="userPassword" /> 

<jsp:setProperty name="user" property="userName" />
 
<jsp:setProperty name="user" property="userGender" />

<jsp:setProperty name="user" property="userEmail" />

<!DOCTYPE html>

<html>

<head>



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>jsp 게시판 웹사이트</title>

</head>

<body>

	<%
	int result=0;
	int kakao=0;
	int kakaojoin=0;
	String email = request.getParameter("userID");
	String password = request.getParameter("userPassword");
	String userEmail = request.getParameter("userEmail");
	String userName = request.getParameter("userName");
	String userGender = request.getParameter("userGender");
	String login = request.getParameter("login");
	
	System.out.println(email);
	System.out.println(password);
	System.out.println(userEmail);
	System.out.println(userName);
	int login_way=Integer.parseInt(login);

		UserDAO userDAO = new UserDAO(); 

		if(login_way == 1){
			 result = userDAO.login(user.getUserID(), user.getUserPassword());
		}else if(login_way == 2){
			 kakaojoin=userDAO.join1(user);
			 kakao = userDAO.kakao(user.getUserID());
		}
		
		
		

		//로그인 성공

		if(result == 1 || kakao == 10){
			session.setAttribute("userID", user.getUserID()); 

			PrintWriter script = response.getWriter();
			%>
		<script>location.href="main.jsp";</script>	
			
			<%
		

		}

		//로그인 실패

		else if(result == 0){

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('비밀번호가 틀립니다.')");

			script.println("history.back()");

			script.println("</script>");

		}

		//아이디 없음

		else if(result == -1 || kakao == -10){

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('존재하지 않는 아이디 입니다.')");

		script.println("history.back()");

		script.println("</script>");

		}

		//DB오류

		else if(result == -2){

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('DB오류가 발생했습니다.')");

		script.println("history.back()");

		script.println("</script>");

		}		

	

	%>



</body>

</body>

</html>


