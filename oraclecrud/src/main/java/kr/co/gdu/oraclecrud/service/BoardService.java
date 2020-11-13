package kr.co.gdu.oraclecrud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.gdu.oraclecrud.mapper.BoardMapper;
import kr.co.gdu.oraclecrud.vo.Board;

@Service
@Transactional
public class BoardService {
	@Autowired BoardMapper boardMapper;
	
	public int getDeleteBoardList(int boardId) {
		return boardMapper.deleteBoardList(boardId);
	}
	
	public int getUpdateBoardList(Board board) {
		return boardMapper.updateBoardList(board);
	}
	
	public int getInsertBoardList(Board board) {
		return boardMapper.insertBoardList(board);
	}
	
	public Board getOneBoardList(int boardId) {
		return boardMapper.selectOneBoardList(boardId);
	}
	
	public List<Board> getBoardList(){
		return boardMapper.selectBoardList();
	}
}
