package kr.co.gdu.oraclecrud.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.gdu.oraclecrud.vo.Board;

@Mapper
public interface BoardMapper {
	List<Board> selectBoardList();
	Board selectOneBoardList(int boardId);
	Integer insertBoardList(Board board);
	Integer updateBoardList(Board board);
	Integer deleteBoardList(int boardId);
}
