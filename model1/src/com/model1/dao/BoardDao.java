package com.model1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model1.dto.BoardDto;
import com.model1.util.ConnectionUtil;
import com.model1.util.QueryUtil;

public class BoardDao {

	public List<BoardDto> getAllBoard() throws SQLException {
		List<BoardDto> boards = new ArrayList<BoardDto>();
		Connection connection = ConnectionUtil.getConnection();
		PreparedStatement pstmt = connection.prepareStatement(QueryUtil.getSQL("board.getAllBoard"));
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			BoardDto dto = new BoardDto();
			dto.setNo(rs.getInt("board_no"));
			dto.setTitle(rs.getString("board_title"));
			dto.setUserId(rs.getString("user_id"));
			dto.setHit(rs.getInt("board_hit"));
			dto.setRegisteredDate(rs.getDate("board_registerd_date"));
			boards.add(dto);
		}
		rs.close();
		pstmt.close();
		connection.close();
		return boards;
	}
}
