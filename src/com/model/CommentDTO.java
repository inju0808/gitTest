package com.model;

public class CommentDTO {
	private int boardNum;
	private String name;
	private String content2;
	private String day2;
	
	public CommentDTO(String name, String content2) {
		this.name = name;
		this.content2 = content2;
	}
	public CommentDTO(int boardNum, String name, String content2) {
		this.boardNum = boardNum;
		this.name = name;
		this.content2 = content2;
	}
	public CommentDTO(String name, String content2, String day2) {
		this.name = name;
		this.content2 = content2;
		this.day2 = day2;
	}
	public CommentDTO(int boardNum, String name, String content2, String day2) {
		super();
		this.boardNum = boardNum;
		this.name = name;
		this.content2 = content2;
		this.day2 = day2;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent2() {
		return content2;
	}
	public void setContent2(String content2) {
		this.content2 = content2;
	}
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getDay2() {
		return day2;
	}
	public void setDay2(String day2) {
		this.day2 = day2;
	}
	
}

