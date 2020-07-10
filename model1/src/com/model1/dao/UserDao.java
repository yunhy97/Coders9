package com.model1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model1.util.ConnectionUtil;
import com.model1.util.QueryUtil;
import com.model1.vo.User;

public class UserDao {

	/**
	 * 회원가입 시 사용자 정보 등록
	 * @param user
	 * @throws SQLException
	 */
	public void insertUser(User user) throws SQLException {
		Connection connection = ConnectionUtil.getConnection();
		PreparedStatement pstmt = connection.prepareStatement(QueryUtil.getSQL("user.insertUser"));
		pstmt.setString(1, user.getId());
		pstmt.setString(2, user.getName());
		pstmt.setString(3, user.getPassword());
		pstmt.setString(4, user.getEmail());
		pstmt.setString(5, user.getGender());
		pstmt.setString(6, user.getTel());
		pstmt.executeUpdate();
		
		pstmt.close();
		connection.close();
	}
	
	/**
	 * 회원가입 시 아이디가 존재하는지 아닌지 검사용
	 * @param userId
	 * @return
	 * @throws SQLException
	 */
	public User getUserById(String userId) throws SQLException {
		User user = null;
		Connection connection = ConnectionUtil.getConnection();
		PreparedStatement pstmt = connection.prepareStatement(QueryUtil.getSQL("user.getUserById"));
		pstmt.setString(1, userId);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			user = new User();
			user.setNo(rs.getInt("user_no"));
			user.setId(rs.getString("user_id"));
			user.setName(rs.getString("user_name"));
			user.setPassword(rs.getString("user_password"));
			user.setEmail(rs.getString("user_email"));
			user.setGender(rs.getString("user_gender"));
			user.setTel(rs.getString("user_tel"));
			user.setCreateDate(rs.getDate("user_create_date"));
		}
		rs.close();
		pstmt.close();
		connection.close();
		
		return user;
	}
}
