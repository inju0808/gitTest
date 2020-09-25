package com.model;

public class MemberDTO {
	private int memberNum;
	private String name;
	private String email;
	private String pw;
	private String join_day;
	
	public MemberDTO(int memberNum, String name, String email, String pw, String pwc, String join_day) {
		this.memberNum = memberNum;
		this.name = name;
		this.email = email;
		this.pw = pw;
		this.join_day = join_day;
	}
	public MemberDTO(String name, String email, String pw) {
		this.name = name;
		this.email = email;
		this.pw = pw;
	}
	public MemberDTO(String email, String pw) {
		this.email = email;
		this.pw = pw;
	}
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
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
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getJoin_day() {
		return join_day;
	}
	public void setJoin_day(String join_day) {
		this.join_day = join_day;
	}
}