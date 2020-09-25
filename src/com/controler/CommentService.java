package com.controler;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.front.Command;
import com.model.BoardDTO;
import com.model.CommentDAO;
import com.model.CommentDTO;
import com.model.MemberDTO;

@WebServlet("/CommentService")
public class CommentService implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session =request.getSession();
		MemberDTO info=(MemberDTO)session.getAttribute("info");
		String name = info.getName();
		String content2 = request.getParameter("wr_content");
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
				
		CommentDTO dto = new CommentDTO(name, content2);
		BoardDTO dto2 = new BoardDTO(boardNum);
		
		CommentDAO dao = new CommentDAO();
		
		int cnt = dao.commupload(dto, dto2);
		
		if(cnt>0) {
			dao.comNumUpdate(boardNum);
			System.out.println("´ñ±Û ¼º°ø");
		}else {
			System.out.println("´ñ±Û ½ÇÆÐ");
		}
		
		String view_url = "board_view.jsp?boardNum="+boardNum ;
		
		return view_url;

}
}