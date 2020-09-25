package com.controler;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.Command;
import com.model.MemberDAO;
import com.model.MemberDTO;


@WebServlet("/LoginService")
public class LoginService implements Command {
		public String execute(HttpServletRequest request, HttpServletResponse response) {

			String email = request.getParameter("email");
			String pw = request.getParameter("password");

			MemberDTO dto=new MemberDTO(email, pw);
			MemberDAO dao=new MemberDAO();
			
			MemberDTO info = dao.login(email, pw);
			

			if(info != null) {
				System.out.println("로그인 성공");
				HttpSession session=request.getSession();
				session.setAttribute("info", info);
			}else {
				System.out.println("로그인 실패");
			}
			return "index.jsp";
		}
	}
