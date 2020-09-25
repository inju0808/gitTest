package com.front;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controler.CommentService;
import com.controler.JoinService;
import com.controler.LoginService;
import com.controler.LogoutService;
import com.controler.UploadService;


@WebServlet("*.do")
public class FController extends HttpServlet {
	private HashMap<String, Command>map;
	
	@Override
	public void init() throws ServletException {
		map=new HashMap<String, Command>();
		map.put("JoinService.do", new JoinService());
		map.put("LoginService.do", new LoginService());
		map.put("LogoutService.do", new LogoutService());
		map.put("UploadService.do", new UploadService());
		map.put("CommentService.do", new CommentService());

	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("프론트 컨트롤러 실행");
		//
		String requestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String resultURL=requestURI.substring(contextPath.length()+1);
		System.out.println(resultURL);
		request.setCharacterEncoding("euc-kr");
		Command command=map.get(resultURL);
	
		String moveURL=command.execute(request, response);
		response.sendRedirect(moveURL);
	}
}