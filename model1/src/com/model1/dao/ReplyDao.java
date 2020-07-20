package com.model1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model1.dto.ReplyDto;
import com.model1.util.ConnectionUtil;
import com.model1.util.QueryUtil;
import com.model1.vo.Reply;

public class ReplyDao {

	public List<ReplyDto> getReplyByBoardNo(int boardNo) throws SQLException {
		List<ReplyDto> replys = new ArrayList<ReplyDto>();
		Connection connection = ConnectionUtil.getConnection();
		PreparedStatement pstmt = connection.prepareStatement(QueryUtil.getSQL("reply.getReplyByBoardNo"));
		pstmt.setInt(1, boardNo);
		ResultSet rs = pstmt.executeQuery();

		while (rs.next()) {
			ReplyDto dto = new ReplyDto();
			dto.setBoardNo(rs.getInt("board_no"));
			dto.setNo(rs.getInt("reply_no"));
			dto.setUserId(rs.getString("user_id"));
			dto.setContent(rs.getString("reply_content"));
			dto.setRegisteredDate(rs.getDate("reply_registered_date"));
			
			replys.add(dto);
		}
		rs.close();
		pstmt.close();
		connection.close();
		return replys;
	}
	
	public void insertReply(Reply reply) throws SQLException {
		Connection connection = ConnectionUtil.getConnection();
		PreparedStatement pstmt = connection.prepareStatement(QueryUtil.getSQL("reply.insertReply"));
		pstmt.setInt(1, reply.getUserNo());
		pstmt.setString(2, reply.getContent());
		pstmt.setInt(3, reply.getBoardNo());

		pstmt.executeUpdate();
		
		pstmt.close();
		connection.close();
	}
}
