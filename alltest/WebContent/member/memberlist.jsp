<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.*" %>
    
    
    <%@ page import="user.UserDAO" %> <!-- userdao의 클래스 가져옴 -->

<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->
    
<%@page import="user.User"%>

<%@page import="java.util.List"%>

  
    
    
     <%
 Class.forName("com.mysql.jdbc.Driver");

	String url = "jdbc:mysql://localhost:3306/listdb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	String id = "root"; // DB USER명
	String pass = "123456"; // DB 비밀번호
	int total = 0;
	
	try {
		Connection conn = DriverManager.getConnection(url,id,pass);
		Statement stmt = conn.createStatement();
		Statement stmt1 = conn.createStatement();
		String sqlCount = "SELECT * FROM user";
		ResultSet rs = stmt.executeQuery(sqlCount);

	}catch(SQLException e) {
		out.println( e.toString() );
	}
	
%>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script src="../js/script.js?ver=0.2"></script>

<%

	

	

	// DB 객체생성 memberDao

	UserDAO userDAO = new UserDAO();

	List<User> list = null;

	list = userDAO.getMembers();

%>	
<table border="1">

<tr>

	<th>아이디</th>
	<th>패스워드</th>
	<th>이름</th>

	<th>성별</th>
	<th>이메일</th>
	<th>정지</th>
	<th>탈퇴</th>

</tr>

<%

if (list.size() > 0) {

	for (int i=0; i<list.size(); i++) {  // 한 행식 출력

		User User = list.get(i);

	%>
	<tr>
		<td><%=User.getUserID() %></td>
		<td><%=User.getUserPassword() %></td>
		<td><%=User.getUserName() %></td>
		<td><%=User.getUserGender() %></td>
		<td><%=User.getUserEmail() %></td>
		<td><a href="javascript:admin_stop_member('<%=User.getUserID()%>')">정지</a></td>
		<td><a href="javascript:admin_out_member('<%=User.getUserID()%>')">탈퇴</a></td>
	</tr>
	<%

	}

} else {  // list.size() == 0

	%>

	<tr>

		<td colspan="7">데이터가 없습니다</td>

	</tr>

	<%	

}

%>



</table>
<form action="stopmember.jsp" name="modifyFrm" method="post">
		<input type="hidden" name="id">
	</form>
<form action="outmember.jsp" name="modifyFrmm" method="post">
		<input type="hidden" name="id">
	</form>
</body>
</html>