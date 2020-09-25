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
		//파일을 어디에 저장할 것인지 경로를 설정
		// webcontent -> img 폴더
		HttpSession session =request.getSession();
		MemberDTO info=(MemberDTO)session.getAttribute("info");
		String saveDri = request.getServletContext().getRealPath("img");
		System.out.println(saveDri);
		// 이미지의 최대 한도(용량크기) 설정 -> 5MB
		int maxSize = 50*1024*1024;
		// 이미지 파일명 한글에 대한 인코딩
		String encoding="EUC-KR";
		// 이미지를 저장하고 client의 요청한 데이터를 저장하고 있는 MultipartRequest 객체 생성
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
				System.out.println("업로드성공");
			}else {
				System.out.println("업로드실패");
			}
				
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "board.jsp";
	}
	
}
