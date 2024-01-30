package phonebook;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.driver.OracleDriver;

public class PhoneBookDAO {

	private String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Connection getConnection() throws Exception {
		Class.forName(OracleDriver.class.getName());
		Connection conn = DriverManager.getConnection(url, user, password);
		return conn;
	}
	private void close() {
		try {
			if(rs != null) 		rs.close();
			if(pstmt != null) 	pstmt.close();
			if(conn != null) 	conn.close();
		} catch(SQLException e) {}
	}
	
	public List<PhoneBookDTO> selectList() throws Exception {	// 전체 목록 이름순 불러오기
		ArrayList<PhoneBookDTO> list = new ArrayList<PhoneBookDTO>();
		String sql = "select * from phonebook order by name";
		conn = getConnection();
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			PhoneBookDTO dto = new PhoneBookDTO();
			dto.setAge(rs.getInt("age"));
			dto.setFavorite(rs.getString("favorite"));
			dto.setIdx(rs.getInt("idx"));
			dto.setName(rs.getString("name"));
			dto.setPnum(rs.getString("pnum"));
			list.add(dto);
		}
		close();
		return list;
	}
	
	public int insert(PhoneBookDTO dto) {	// 추가 함수
		int row = 0;
		String sql = "insert into phonebook (name, pnum, age, favorite) values (?, ?, ?, ?)";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getPnum());
			pstmt.setInt(3, dto.getAge());
			pstmt.setString(4, dto.getFavorite());
			row = pstmt.executeUpdate();
			
		} catch(SQLIntegrityConstraintViolationException e) {// 무결성 제약조건 위반 예외
			return 0;
		} catch (Exception e) {
			
		} finally {
			close();
		}
		return row;
	}
	
	
	
	
	
	
	
	
	
}
