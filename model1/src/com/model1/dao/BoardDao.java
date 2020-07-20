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
import com.model1.vo.Board;

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
	
	public BoardDto getDetailByNo(int boardNo) throws SQLException {
		BoardDto boardDto = null;
		Connection connection = ConnectionUtil.getConnection();
		PreparedStatement pstmt = connection.prepareStatement(QueryUtil.getSQL("board.getDetailByNo"));
		pstmt.setInt(1, boardNo);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			boardDto = new BoardDto();
			boardDto.setNo(rs.getInt("board_no"));
			boardDto.setUserId(rs.getString("user_id"));
			boardDto.setHit(rs.getInt("board_hit"));
			boardDto.setType(rs.getString("board_type"));
			boardDto.setTitle(rs.getString("board_title"));
			boardDto.setContent(rs.getString("board_content"));
			boardDto.setRegisteredDate(rs.getDate("board_registerd_date"));
		}
		rs.close();
		pstmt.close();
		connection.close();
		return boardDto;
	}
	
	public List<BoardDto> getAllRange(int beginNumber, int endNumber) throws SQLException {
		List<BoardDto> boards = new ArrayList<BoardDto>();
		Connection connection = ConnectionUtil.getConnection();
		PreparedStatement pstmt = connection.prepareStatement(QueryUtil.getSQL("board.getAllRange"));
		
		pstmt.setInt(1,beginNumber);
		pstmt.setInt(2,endNumber);
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
	
	public void insertBoard(Board board) throws SQLException {
		Connection connection = ConnectionUtil.getConnection();
		PreparedStatement pstmt = connection.prepareStatement(QueryUtil.getSQL("board.insertBoard"));
		pstmt.setString(1, board.getTitle());
		pstmt.setString(2, board.getContent());
		pstmt.setInt(3, board.getUserNo());
		pstmt.setString(4, board.getType());
		pstmt.executeUpdate();
		
		pstmt.close();
		connection.close();
	}
	
	public void updateBoardHit(int boardNo) throws SQLException {
		
		
		Connection connection = ConnectionUtil.getConnection();
		PreparedStatement pstmt = connection.prepareStatement(QueryUtil.getSQL("board.updateBoardHit"));
		pstmt.setInt(1, boardNo);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		connection.close();
		
	}
}
