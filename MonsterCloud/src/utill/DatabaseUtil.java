package utill;

import java.sql.DriverManager;

import java.sql.Connection;;

public class DatabaseUtil {

	public static Connection getConnection() {
		
		try {
			String dbURL = "jdbc:mysql://localhost:3306/listdb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"; // localhost:3306 포트는 컴퓨터설치된 mysql주소
			
			String dbID = "root";

			String dbPassword = "123456";
			
			Class.forName("com.mysql.jdbc.Driver");

			return DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch(Exception e){
			e.printStackTrace(); 
		}
		return null;
		
	}
	
	
	
	
	
}
