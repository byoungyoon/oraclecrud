package kr.co.gdu.oraclecrud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.gdu.oraclecrud.service.BoardService;
import kr.co.gdu.oraclecrud.vo.Board;

@Controller
public class BoardController {
	@Autowired BoardService boardService;
	
	@GetMapping("/deleteBoardList/{boardId}")
	public String deleteBoardList(@PathVariable(name = "boardId") int boardId) {
		boardService.getDeleteBoardList(boardId);
		return "redirect:/boardList";
	}
	
	@GetMapping("/updateBoardList/{boardId}")
	public String updateBoardList(Model model,
			@PathVariable(name = "boardId") int boardId) {
		Board board = boardService.getOneBoardList(boardId);
		model.addAttribute("board", board);
		
		return "updateBoardList";
	}
	
	@PostMapping("/updateBoardList")
	public String updateBoardList(Board board) {
		System.out.println(board);
		boardService.getUpdateBoardList(board);
		return "redirect:/boardList";
	}
	
	@GetMapping("/boardList")
	public String boardList(Model model) {
		List<Board> boardList = boardService.getBoardList();
		
		model.addAttribute("boardList", boardList);
		
		return "boardList";
	}
	
	@GetMapping("/addBoardList")
	public String addBoardList() {
		return "addBoardList";
	}
	
	@PostMapping("/addBoardList")
	public String addBoardList(Board board) {
		
		boardService.getInsertBoardList(board);
		System.out.println(board);
		
		return "redirect:/boardList";
	}
	
	@GetMapping("/boardOneList/{boardId}")
	public String boardOneList(Model model,
							@PathVariable(name = "boardId") int boardId) {
		Board board = boardService.getOneBoardList(boardId);
		
		model.addAttribute("board", board);
		
		return "boardOneList";
	}
}
