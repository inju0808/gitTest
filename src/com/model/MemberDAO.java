package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class MemberDAO {
		private Connection conn = null;
		private PreparedStatement pst = null;
		private ResultSet rs;
		private int cnt = 0;

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
		
		public int join(MemberDTO dto) {
			try {
				getConn();
				String sql = "insert into memberList values(?, ?, ?)";
				pst = conn.prepareStatement(sql);
				pst.setString(1, dto.getName());
				pst.setString(2, dto.getEmail());
				pst.setString(3, dto.getPw());
				cnt = pst.executeUpdate();
				if (conn != null ) {
					System.out.println("연결성공");
				} else {
					System.out.println("연결실패");
				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally{
				Close();
			}
			
			return cnt;
		}

		public MemberDTO login(String session_email, String session_pw) {
			MemberDTO info= null;
			try {
				getConn();
				String sql="select * from memberList where m_Email=? and password=?";
				pst=conn.prepareStatement(sql);
				pst.setString(1,session_email);
				pst.setString(2,session_pw);
				rs=pst.executeQuery();
				
				while(rs.next()) {
					String name = rs.getString(1);
					String email = rs.getString(2);
					String pw = rs.getString(3);
					
					info = new MemberDTO(name, email, pw);
				}
				
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				
				Close();
			}
			return info;
		}
		
		public int update(MemberDTO dto) {
			int cnt=0;
			getConn();
			try {
				String sql="update memberList set pw=?, name=? where m_email=?";
				pst=conn.prepareStatement(sql);
				pst.setString(1, dto.getPw());
				pst.setString(2, dto.getName());
				pst.setString(3, dto.getEmail());
				cnt=pst.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				Close();
			}
			return cnt;
		}
		
}