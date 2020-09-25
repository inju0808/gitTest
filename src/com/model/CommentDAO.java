package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CommentDAO {
	
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
	
		public int commupload(CommentDTO dto, BoardDTO dto2) {
			try {
				getConn();
				String sql = "insert into freebulletincomm values(?, ?, ?, sysdate)";
				pst = conn.prepareStatement(sql);
				pst.setInt(1, dto2.getBoardNum());
				pst.setString(2, dto.getName());
				pst.setString(3, dto.getContent2());
		
				cnt = pst.executeUpdate();
		
				if (conn != null) {
					System.out.println("´ñ±Û ¾÷¼º°ø");
				} else {
					System.out.println("´ñ±Û ½ÇÆÐ");
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally{
				Close();
			}
			return cnt;
		}
		
		
		public ArrayList<CommentDTO> getComList(int boardNum) {
			ArrayList<CommentDTO> list2=new ArrayList<CommentDTO>();
			try {
				getConn();
				String sql="select *from freebulletincomm where boardNum=? order by day2 desc";
				
				pst=conn.prepareStatement(sql);
				pst.setInt(1, boardNum);
				rs = pst.executeQuery();
				while(rs.next()) {
					int boardNum2 = rs.getInt(1);
					String nickName = rs.getString(2);
					String content2 = rs.getString(3);
					String day2 = rs.getString(4);
					
					CommentDTO dto = new CommentDTO(boardNum2, nickName, content2, day2);
					list2.add(dto);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				Close();
			}
			return list2;
		}
		public int comNumUpdate(int boardNum) {
			
			try {
				getConn();
				String sql = "update freebulletinboard set commentNum = commentNum+1 where boardNum = ?";
				pst = conn.prepareStatement(sql);
				pst.setInt(1, boardNum);
				
				cnt = pst.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally{
				Close();
			}
			return cnt;
		}
		
}
		

