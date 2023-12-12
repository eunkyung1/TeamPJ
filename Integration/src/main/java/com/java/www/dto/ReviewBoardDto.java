package com.java.www.dto;

import java.sql.Timestamp;

public class ReviewBoardDto {
	public ReviewBoardDto() {};
	
	private int boardid;
	private String memberId;
	private int storeid;
	private String title;
	private String bcontent;
	private Timestamp createdate;
	private String boardcategory;
	private int step;
	private int bindent;
	private int bgroup;
	private int hit;
	private int heart;
	private int rate;
	private int reportcount;
	private String tags;
	private String[] tagarr;
	
	
	
	
	public ReviewBoardDto(int boardid, String memberId, int storeid, String title, String bcontent,
			Timestamp createdate, String boardcategory, int step, int bindent, int bgroup, int hit, int heart, int rate,
			int reportcount, String tags, String[] tagarr) {
		super();
		this.boardid = boardid;
		this.memberId = memberId;
		this.storeid = storeid;
		this.title = title;
		this.bcontent = bcontent;
		this.createdate = createdate;
		this.boardcategory = boardcategory;
		this.step = step;
		this.bindent = bindent;
		this.bgroup = bgroup;
		this.hit = hit;
		this.heart = heart;
		this.rate = rate;
		this.reportcount = reportcount;
		this.tags = tags;
		this.tagarr = tagarr;
	}
	
	
	public int getBoardid() {
		return boardid;
	}
	public void setBoardid(int boardid) {
		this.boardid = boardid;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getStoreid() {
		return storeid;
	}
	public void setStoreid(int storeid) {
		this.storeid = storeid;
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
	public Timestamp getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Timestamp createdate) {
		this.createdate = createdate;
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
	public String[] getTagarr() {
		return tagarr;
	}
	public void setTagarr(String[] tagarr) {
		this.tagarr = tagarr;
	}
	
	
	
	

	

	
	
	
	

}
