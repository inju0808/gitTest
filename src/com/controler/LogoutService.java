package com.controler;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.Command;

@WebServlet("/LogoutService")
public class LogoutService implements Command{
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session =request.getSession();
		session.removeAttribute("info");
		return "index.jsp";
	}
	
}
