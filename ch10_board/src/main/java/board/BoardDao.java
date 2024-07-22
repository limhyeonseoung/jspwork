package board; 

import java.sql.*;
import java.util.ArrayList;

public class BoardDao {
	private DBConnectionMgr pool;
	Connection con = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public BoardDao() {
		pool = DBConnectionMgr.getInstance();
	}
	
	
	// 게시판 리스트
	public ArrayList<Board> getBoardList() {
		ArrayList<Board> alist = new ArrayList<Board>();
		try {
			con = pool.getConnection();
			sql = "select * from Board";	
			rs = con.createStatement().executeQuery(sql);
			while(rs.next()) {
				Board board = new Board();
				board.setNum(rs.getInt("num"));
				board.setSubject(rs.getString("subject"));
				board.setName(rs.getString("name"));			
				board.setCount(rs.getInt("count"));
				board.setPos(rs.getInt("pos"));
				board.setRef(rs.getInt("ref"));
				board.setDepth(rs.getInt("depth"));
				board.setRegdate(rs.getString("regdate"));
				alist.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return alist;
	}
}
