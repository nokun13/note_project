package webproject.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.NamingException;

import templatedbcp.DbcpTemplate;
import webproject.dto.AccountDTO;

public class WebDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private Statement stmt;
	private ResultSet rs;
	
	public WebDAO() {
	}
	
	private static WebDAO dao = new WebDAO();

	public static WebDAO getInstance() {
		return dao;
	}
	
	public int loginCheck(AccountDTO dto) {
		
		int cnt = 0;
		
		try {
			conn = DbcpTemplate.getInit();
			String sql = "select count(*) from webaccount where account_id=?,account_password=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getAccount_Id());
			pstmt.setString(2, dto.getAccount_Password());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				cnt = rs.getInt(1);
			}
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		} finally {
			DbcpTemplate.close(rs);
			DbcpTemplate.close(pstmt);
			DbcpTemplate.close(stmt);
			DbcpTemplate.close(conn);
		}
		
		return cnt;
		
	} // end loginCheck()
	
	public AccountDTO viewMethod(String fid) {
		
		AccountDTO pdto = new AccountDTO();
		
		try {
			conn = DbcpTemplate.getInit();
			String sql = "select * from webaccount where account_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, fid);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				pdto.setAccount_Num(rs.getInt("account_num"));
				pdto.setAccount_Id(rs.getString("account_id"));
				pdto.setAccount_Password(rs.getString("account_password"));
				pdto.setAccount_Name(rs.getString("account_name"));
				pdto.setAccount_About(rs.getString("account_about"));
				pdto.setAccount_Email(rs.getString("account_email"));
				pdto.setAccount_Img(rs.getString("account_img"));
				pdto.setAccount_Phon_Num(rs.getString("account_phone_num"));
				pdto.setAccount_Flag(rs.getInt("account_flag"));
			}
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		} finally {
			DbcpTemplate.close(rs);
			DbcpTemplate.close(pstmt);
			DbcpTemplate.close(stmt);
			DbcpTemplate.close(conn);
		}
		
		return pdto;
		
	} // end viewMethod()
	
} // end class
