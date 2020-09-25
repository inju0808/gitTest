package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO {

	private Connection conn = null;
	private PreparedStatement pst = null;
	private ResultSet rs;
	private int cnt;
	
	public void getConn() {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hr";
		String password = "hr";
		try {
			Class.forName(driver);
			
			conn = DriverManager.getConnection(url, user, password);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

}
	public void Close() {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pst != null) {
					pst.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
	}
			public int upload(BoardDTO dto) {
				try {
					getConn();
					
					String sql = "insert into freebulletinboard values(boardNum.nextval, ?, ?, ?, sysdate, ?, ?, 0)";
					pst = conn.prepareStatement(sql);
					pst.setString(1, dto.getTitle());
					pst.setString(2, dto.getName());
					pst.setString(3, dto.getEmail());
					pst.setString(4, dto.getFileName());
					pst.setString(5, dto.getContent());
					cnt = pst.executeUpdate();

				} catch (Exception e) {
					e.printStackTrace();
				} finally{
					Close();
				}
				return cnt;		
	}
			public ArrayList<BoardDTO> viewAll() {
				ArrayList<BoardDTO> list=new ArrayList<BoardDTO>();
				try {
					getConn();
					String sql="select * from freebulletinboard order by day desc";
					pst=conn.prepareStatement(sql);
					rs = pst.executeQuery();
					while(rs.next()) {
						int boardNum = rs.getInt(1);
						String title = rs.getString(2);
						String name = rs.getString(3);
						String email = rs.getString(4);
						String day = rs.getString(5);
						String fileName = rs.getString(6);
						String content = rs.getString(7);
						
						BoardDTO dto = new BoardDTO(boardNum, title, name, email, day, fileName, content);
						list.add(dto);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally {
					Close();
				}
				return list;
			}
			
			public int viewComment(int boardNum) {
				int commentNum = 0 ;
				try {
					getConn();
					BoardDTO dto = new BoardDTO(boardNum);
					
					String sql="select * from freebulletinboard where boardNum = ?";
					pst=conn.prepareStatement(sql);
					pst.setInt(1, dto.getBoardNum());
					rs = pst.executeQuery();
					while(rs.next()) {
						commentNum = rs.getInt(8);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally {
					Close();
				}
				return commentNum ;
			}
			
			public BoardDTO viewOne(int board_Num) {
				BoardDTO dto=null;
				getConn();
				try {
					String sql="select * from freebulletinboard where boardNum=?";
					pst=conn.prepareStatement(sql);
					pst.setInt(1, board_Num);
					rs=pst.executeQuery();
					if(rs.next()) {
						int boardNum = rs.getInt(1);
						String title = rs.getString(2);
						String name = rs.getString(3);
						String email = rs.getString(4);
						String day = rs.getString(5);
						String fileName = rs.getString(6);
						String content = rs.getString(7);
						int commentNum = rs.getInt(8);
						dto = new BoardDTO(boardNum, title, name, email, fileName, content, day, commentNum);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					Close();
				}
				return dto;
			}
			
			public int removeBoard(int boardNum) {
				int cnt = 0;
				getConn();
				try {
					String sql="delete freebulletinboard where boardNum=?";
					pst=conn.prepareStatement(sql);
					pst.setInt(1, boardNum);
					cnt = pst.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					Close();
				}
				return cnt;
			}
			
}
