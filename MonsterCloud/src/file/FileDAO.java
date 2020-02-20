package file;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import utill.DatabaseUtil;

public class FileDAO {

		
		Connection conn = DatabaseUtil.getConnection();
		PreparedStatement pstmt = null;
		
		
	
	public int upload(String fileName, String fileRealName) {
		String SQL="INSERT INTO file VALUES (?, ?, 0)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, fileName);
			pstmt.setString(2, fileRealName);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	

	public int hit(String fileRealName) {
		
		String SQL = "UPDATE file SET downloadCount = downloadCount +1 WHERE fileRealName = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
		    pstmt.setString(1, fileRealName);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
		
	}

	public ArrayList<FileDTO> getlist(){
		String SQL="SELECT * FROM file";
		ArrayList<FileDTO> list=new ArrayList<FileDTO>();
		
		try {
			pstmt = conn.prepareStatement(SQL);
	ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				FileDTO file=new FileDTO(rs.getString(1),rs.getString(2),rs.getInt(3));
				list.add(file);
				
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
		
		
	}



}
