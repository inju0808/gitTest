package com.controler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.Command;
import com.model.BoardDAO;

public class RemoveBoard implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		BoardDAO dao = new BoardDAO();
		int cnt = dao.removeBoard(board_num);
		if(cnt>0) {
			System.out.println("게시글 삭제 완료");
		}else {
			System.out.println("게시글 삭제 실패");
		}
		
		return "board.jsp";
	}

}
