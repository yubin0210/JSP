package youtube;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
//import oracle.jdbc.driver.OracleDriver;

public class YoutubeDAO {
	
	// 싱글톤
	private static YoutubeDAO instance = new YoutubeDAO();
	
	public static YoutubeDAO getInstance() {
		return instance;
	}
	
	private YoutubeDAO() {}
	

	private String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		return DriverManager.getConnection(url, user, password);
	}
	
	private void close() {
		try {
			if(rs != null) 		rs.close();
			if(pstmt != null) 	pstmt.close();
			if(conn != null) 	conn.close();
		} catch(SQLException e) {}
	}
	
	private YoutubeDTO mapping(ResultSet rs) throws SQLException {	
		// 결과 집합 (select) -> 자바 객체
		YoutubeDTO dto = new YoutubeDTO();
		dto.setChannelName(rs.getString("channelName"));
		dto.setIdx(rs.getInt("idx"));
		dto.setThumbnail(rs.getString("thumbnail"));
		dto.setTitle(rs.getString("title"));
		dto.setVideoTag(rs.getString("videoTag"));
		return dto;
	}
	
	
	// index.jsp 에서 전체 목록을 불러오기 위한 함수
	public List<YoutubeDTO> selectList() {
		ArrayList<YoutubeDTO> list = new ArrayList<>();
		String sql = "select * from youtube order by idx";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(mapping(rs));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	// add-action.jsp 에서 파라미터를 묶어서 객체로 만들고 DB에 추가하는 함수
	public int insert(YoutubeDTO dto) {
		int row = 0;
		String sql = "insert into youtube (title, channelName, thumbnail, videoTag) "
				+ " values (?, ?, ?, ?)";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getChannelName());
			pstmt.setString(3, dto.getThumbnail());
			pstmt.setString(4, dto.getVideoTag());
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}
	
	// view.jsp 에서 파라미터 idx를 받아서 단일 객체를 반환하는 함수
	public YoutubeDTO selectOne(int idx) {
		YoutubeDTO dto = null;
		String sql = "select * from youtube where idx = ?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				dto = mapping(rs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	
	// modify-action.jsp 에서 전달받은 내용으로 DB의 내용을 수정하는 함수
	public int update(YoutubeDTO dto) {
		int row = 0;
		String sql = "update youtube"
				+ "	set"
				+ "		title = ?,"
				+ "		channelName = ?,"
				+ "		thumbnail = ?,"
				+ "		videoTag = ?"
				+ "	where"
				+ "		idx = ?";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getChannelName());
			pstmt.setString(3, dto.getThumbnail());
			pstmt.setString(4, dto.getVideoTag());
			pstmt.setInt(5, dto.getIdx());
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return row;
	}
	
	// delete.jsp 에서 파라미터 idx를 받아서 레코드 하나를 삭제하는 함수
	public int delete(int idx) {
		int row = 0;
		String sql = "delete youtube where idx = ?";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return row;
	}
	
	
	
}
