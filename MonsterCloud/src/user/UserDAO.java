
package user;




import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import utill.DatabaseUtil;
 



	// mysql에 접속해 주는 부분

	public class UserDAO { // 생성자 실행될때마다 자동으로 db연결이 이루어 질 수 있도록함

		Connection conn = DatabaseUtil.getConnection();
		PreparedStatement pstmt = null;
		private ResultSet rs;
	

		// 로그인을 시도하는 함수****

		public int login(String id, String password) {

			String SQL = "SELECT userPassword FROM USER WHERE id = ?";

			try {

				// pstmt : prepared statement 정해진 sql문장을 db에 삽입하는 형식으로 인스턴스가져옴

				pstmt = conn.prepareStatement(SQL);

				// sql인젝션 같은 해킹기법을 방어하는것... pstmt을 이용해 하나의 문장을 미리 준비해서(물음표사용)

				// 물음표해당하는 내용을 유저아이디로, 매개변수로 이용.. 1)존재하는지 2)비밀번호무엇인지

				pstmt.setString(1, id);

				// rs:result set 에 결과보관

				rs = pstmt.executeQuery();

				// 결과가 존재한다면 실행

				if (rs.next()) {

					// 패스워드 일치한다면 실행

					if (rs.getString(1).equals(password)) {

						return 1; // 라긴 성공

					} else

						return 0; // 비밀번호 불일치

				}

				return -1; // 아이디가 없음 오류



			} catch (Exception e) {

				e.printStackTrace();

			}

			return -2; // 데이터베이스 오류를 의미

		}

		public int kakao(String id) {
			
			String SQL = "SELECT * FROM USER WHERE id = ?";

			try {

				// pstmt : prepared statement 정해진 sql문장을 db에 삽입하는 형식으로 인스턴스가져옴

				pstmt = conn.prepareStatement(SQL);

				// sql인젝션 같은 해킹기법을 방어하는것... pstmt을 이용해 하나의 문장을 미리 준비해서(물음표사용)

				// 물음표해당하는 내용을 유저아이디로, 매개변수로 이용.. 1)존재하는지 2)비밀번호무엇인지

				pstmt.setString(1, id);

				// rs:result set 에 결과보관

				rs = pstmt.executeQuery();

				// 결과가 존재한다면 실행

				if (rs.next()) {
						return 10; // 라긴 성공

				}
				
				return -10; // 아이디가 없음 오류

			} catch (Exception e) {

				e.printStackTrace();
			}

			return -2; // 데이터베이스 오류를 의미
		}
	

	public int join(User user) {
		String aa= user.getEmail1() +  user.getEmail2();
		System.out.println();
		String SQL = "INSERT INTO USER(id,password,email,state) VALUES (?, ?, ?, ?)";

		try {

			PreparedStatement pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, user.getId());

			pstmt.setString(2, user.getPassword());

			pstmt.setString(3, aa);
			
			pstmt.setString(4, user.getState());

			return pstmt.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();

		}

		return -1; // 회원가입 실패

	}
	
	
	
	public int join1(User user) {

		String SQL = "INSERT INTO USER VALUES (?,?,?,?)";

		try {

			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, user.getId());

			pstmt.setString(2, user.getPassword());

			pstmt.setString(3, user.getEmail());

			pstmt.setString(4, user.getState());




			return pstmt.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();

		}

		return -1; // DB 오류

	}

	}

	

	
	
	
	
	



