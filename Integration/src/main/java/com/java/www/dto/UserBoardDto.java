package com.java.www.dto;

import java.sql.Timestamp;

public class UserBoardDto {
	
	public UserBoardDto() {}
	
	private int boardid;
	private String memverId;
	private String title;
	private String bcontent;
	private Timestamp date;
	private String boardcategory;
	private int step;
	private int bindent;
	private int bgroup;
	private int hit;
	private int storeid;
	private int heart;
	private int rate;
	private int reportcount;
	private String tags;
	
	
	
	public UserBoardDto(int boardid, String memverId, String title, String bcontent, Timestamp date,
			String boardcategory, int step, int bindent, int bgroup, int hit, int storeid, int heart, int rate,
			int reportcount, String tags) {
		super();
		this.boardid = boardid;
		this.memverId = memverId;
		this.title = title;
		this.bcontent = bcontent;
		this.date = date;
		this.boardcategory = boardcategory;
		this.step = step;
		this.bindent = bindent;
		this.bgroup = bgroup;
		this.hit = hit;
		this.storeid = storeid;
		this.heart = heart;
		this.rate = rate;
		this.reportcount = reportcount;
		this.tags = tags;
	}
		
	public UserBoardDto(int boardid, String memverId, String title, String bcontent, String boardcategory, int step,
			int bindent, int bgroup, int hit, int storeid, int heart, int rate, int reportcount, String tags) {
		super();
		this.boardid = boardid;
		this.memverId = memverId;
		this.title = title;
		this.bcontent = bcontent;
		this.boardcategory = boardcategory;
		this.step = step;
		this.bindent = bindent;
		this.bgroup = bgroup;
		this.hit = hit;
		this.storeid = storeid;
		this.heart = heart;
		this.rate = rate;
		this.reportcount = reportcount;
		this.tags = tags;
	}






	public int getBoardid() {
		return boardid;
	}
	public void setBoardid(int boardid) {
		this.boardid = boardid;
	}
	public String getMemverId() {
		return memverId;
	}
	public void setMemverId(String memverId) {
		this.memverId = memverId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public String getBoardcategory() {
		return boardcategory;
	}
	public void setBoardcategory(String boardcategory) {
		this.boardcategory = boardcategory;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getBindent() {
		return bindent;
	}
	public void setBindent(int bindent) {
		this.bindent = bindent;
	}
	public int getBgroup() {
		return bgroup;
	}
	public void setBgroup(int bgroup) {
		this.bgroup = bgroup;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getStoreid() {
		return storeid;
	}
	public void setStoreid(int storeid) {
		this.storeid = storeid;
	}
	public int getHeart() {
		return heart;
	}
	public void setHeart(int heart) {
		this.heart = heart;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public int getReportcount() {
		return reportcount;
	}
	public void setReportcount(int reportcount) {
		this.reportcount = reportcount;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}

	
	
	
	
	
	
	
	
	
	
	
}







