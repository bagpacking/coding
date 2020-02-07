<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<%@ page import="user.UserDAO" %> <!-- userdao의 클래스 가져옴 -->

<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->

<% request.setCharacterEncoding("UTF-8"); %>



<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->

<jsp:useBean id="user" class="user.User" scope="page" />

<jsp:setProperty name="user" property="id" />

<jsp:setProperty name="user" property="password" /> 

<jsp:setProperty name="user" property="email1" />


 
<jsp:setProperty name="user" property="email2" />

<jsp:setProperty name="user" property="state" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

			//라긴된 회원들은 페이지에 접속 할 수 없도록

			String userID = null;

			if(session.getAttribute("id") != null ){

				userID = (String) session.getAttribute("id");

			}

			if(userID != null){

				PrintWriter script = response.getWriter();

				script.println("<script>");

				script.println("alert('이미 로그인 되어있습니다.')");

				script.println("location.href = '../index.jsp'");

				script.println("</script>");	

			}

		

	

		if (user.getId() == null || user.getPassword() == null || user.getEmail1() == null

			|| user.getEmail2() == null || user.getState() == null){

				PrintWriter script = response.getWriter();

				script.println("<script>");

				script.println("alert('입력이 안 된 사항이 있습니다.')");

				script.println("history.back()");

				script.println("</script>");

			} else{

				UserDAO userDAO = new UserDAO(); //인스턴스생성

				int result = userDAO.join(user);				

				

				if(result == -1){ // 아이디가 기본키기. 중복되면 오류.

					PrintWriter script = response.getWriter();

					script.println("<script>");

					script.println("alert('이미 존재하는 아이디 입니다.')");

					script.println("history.back()");

					script.println("</script>");

				}

				//가입성공

				else {

					PrintWriter script = response.getWriter();

					script.println("<script>");

					script.println("location.href = '../index.jsp'");

					script.println("</script>");

				}

			}

			%>




</body>
</html>