package com.model;

public class BoardDTO {
	private int boardNum;
	private String title;
	private String name;
	private String email;
	private String content;
	private String fileName;
	private String day;
	private int commentNum;

	public BoardDTO(int boardNum) {
		this.boardNum = boardNum;
	}
	
	public BoardDTO(String title, String content, String fileName) {
		this.title = title;
		this.content = content;
		this.fileName = fileName;
	}

	public BoardDTO(int boardNum, String title, String name, String email, String fileName,
			String content, String day, int commentNum) {
		this.boardNum = boardNum;
		this.title = title;
		this.name = name;
		this.email = email;
		this.fileName = fileName;
		this.content = content;
		this.day = day;
		this.commentNum = commentNum;
	}
	
	
	public BoardDTO(String title, String name, String content, String fileName) {
		this.title = title;
		this.name = name;
		this.content = content;
		this.fileName = fileName;
	}

	public BoardDTO(int boardNum, String title, String name, String email, String day, String fileName,
			String content) {
		this.boardNum = boardNum;
		this.title = title;
		this.name = name;
		this.email = email;
		this.fileName = fileName;
		this.content = content;
		this.day = day;
	}
	public BoardDTO(int boardNum, String title, String name, String day) {
		this.boardNum = boardNum;
		this.title = title;
		this.name = name;
		this.day = day;
	}
	


	public BoardDTO(String title, String name, String email, String content, String fileName) {
		this.title = title;
		this.name = name;
		this.email = email;
		this.content = content;
		this.fileName = fileName;
	}

	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}	
	public int getCommentNum() {
		return commentNum;
	}
	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}
	
}
	