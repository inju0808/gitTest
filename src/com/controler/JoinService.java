package com.controler;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.front.Command;
import com.model.MemberDAO;
import com.model.MemberDTO;


@WebServlet("/JoinService")
public class JoinService implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String pwc = request.getParameter("pwc");
		
		MemberDTO dto=new MemberDTO(name, email, pw);
		MemberDAO dao=new MemberDAO();
		int cnt = dao.join(dto);
		
		if(cnt>0) {
			System.out.println("ȸ������ ����");
		}else {
			System.out.println("ȸ������ ����");
		}
		
		return "login.jsp";
	}


}
