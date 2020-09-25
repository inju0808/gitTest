package com.controler;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.front.Command;
import com.model.BoardDAO;
import com.model.BoardDTO;
import com.model.MemberDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UploadService implements Command{
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//������ ��� ������ ������ ��θ� ����
		// webcontent -> img ����
		HttpSession session =request.getSession();
		MemberDTO info=(MemberDTO)session.getAttribute("info");
		String saveDri = request.getServletContext().getRealPath("img");
		System.out.println(saveDri);
		// �̹����� �ִ� �ѵ�(�뷮ũ��) ���� -> 5MB
		int maxSize = 50*1024*1024;
		// �̹��� ���ϸ� �ѱۿ� ���� ���ڵ�
		String encoding="EUC-KR";
		// �̹����� �����ϰ� client�� ��û�� �����͸� �����ϰ� �ִ� MultipartRequest ��ü ����
		try {
			MultipartRequest multi = new MultipartRequest(request, saveDri, maxSize, encoding, new DefaultFileRenamePolicy());
			String title=multi.getParameter("wr_subject");
			String name=info.getName();
			String email=info.getEmail();
			String fileName=multi.getFilesystemName("bf_file");
			String content=multi.getParameter("wr_content");
			//System.out.println(title+name+email+fileName+content);
			if(fileName!=null) {
				fileName=URLEncoder.encode(fileName, "EUC-KR");
			}
			
			BoardDTO dto=new BoardDTO(title, name, email, fileName, content);
			BoardDAO dao=new BoardDAO();
			int cnt = dao.upload(dto);
			
			if(cnt>0) {
				System.out.println("���ε强��");
			}else {
				System.out.println("���ε����");
			}
				
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "board.jsp";
	}
	
}
