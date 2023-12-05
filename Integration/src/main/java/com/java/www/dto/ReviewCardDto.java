package com.java.www.dto;

import java.sql.Timestamp;

public class ReviewCardDto {
	//hit 제외
	public ReviewCardDto() {};
	
	private String filename;
	private int filesize;
	private Timestamp regdate;
	private int boardid;
	private int storeid;
	private String title;
	private String bcontent;
	private Timestamp createdate;
	private String boardcategory;
	private int step;
	private int bindent;
	private int bgroup;
	private int heart;
	private double rate;
	private int reportcount;
	private String tags;
	private String[] tagarr;
	private String storename;
	private String memberid;
	private String phone;
	private String address;
	private int categoryid;
	private String workingtime;
	private int keywordid;
	private String webaddr;
	private String menu;
	private String menupicture;
	private Timestamp opendate;
	private String storeinfo;
	
	
	
	
	
	
	
	public ReviewCardDto(String filename, int filesize, Timestamp regdate, int boardid, String memberid, int storeid,
			String title, String bcontent, Timestamp createdate, String boardcategory, int step, int bindent,
			int bgroup, int heart, double rate, int reportcount, String tags, String storename, String phone,
			String address, int categoryid, String workingtime, int keywordid, String webaddr, String menu,
			String menupicture, Timestamp opendate, String storeinfo) {
		super();
		this.filename = filename;
		this.filesize = filesize;
		this.regdate = regdate;
		this.boardid = boardid;
		this.memberid = memberid;
		this.storeid = storeid;
		this.title = title;
		this.bcontent = bcontent;
		this.createdate = createdate;
		this.boardcategory = boardcategory;
		this.step = step;
		this.bindent = bindent;
		this.bgroup = bgroup;
		this.heart = heart;
		this.rate = rate;
		this.reportcount = reportcount;
		this.tags = tags;
		this.storename = storename;
		this.phone = phone;
		this.address = address;
		this.categoryid = categoryid;
		this.workingtime = workingtime;
		this.keywordid = keywordid;
		this.webaddr = webaddr;
		this.menu = menu;
		this.menupicture = menupicture;
		this.opendate = opendate;
		this.storeinfo = storeinfo;
		
	}
	
	
	
	
	public ReviewCardDto(String filename, int boardid, int storeid, String title, String bcontent, int heart, double rate,
			String tags, String storename) {
		super();
		this.filename = filename;
		this.boardid = boardid;
		this.storeid = storeid;
		this.title = title;
		this.bcontent = bcontent;
		this.heart = heart;
		this.rate = rate;
		this.tags = tags;
		this.storename = storename;
	}




	public ReviewCardDto(String filename, String memberid, String title, String bcontent, int heart, double rate ,String tags,
			String[] tagarr, String storename ) {
		this.filename = filename;
		this.memberid = memberid;
		this.title = title;
		this.bcontent = bcontent;
		this.heart = heart;
		this.rate = rate;
		this.tags = tags;
		this.tagarr = tagarr;
		this.storename = storename;
	}




	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getFilesize() {
		return filesize;
	}
	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}
	public Timestamp getregdate() {
		return regdate;
	}
	public void setregdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	public int getBoardid() {
		return boardid;
	}
	public void setBoardid(int boardid) {
		this.boardid = boardid;
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
	public int getHeart() {
		return heart;
	}
	public void setHeart(int heart) {
		this.heart = heart;
	}
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
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
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}
	public String getWorkingtime() {
		return workingtime;
	}
	public void setWorkingtime(String workingtime) {
		this.workingtime = workingtime;
	}
	public int getKeywordid() {
		return keywordid;
	}
	public void setKeywordid(int keywordid) {
		this.keywordid = keywordid;
	}
	public String getWebaddr() {
		return webaddr;
	}
	public void setWebaddr(String webaddr) {
		this.webaddr = webaddr;
	}
	public String getmenu() {
		return menu;
	}
	public void setmenu(String menu) {
		this.menu = menu;
	}
	public String getMenupicture() {
		return menupicture;
	}
	public void setMenupicture(String menupicture) {
		this.menupicture = menupicture;
	}
	public Timestamp getOpendate() {
		return opendate;
	}
	public void setOpendate(Timestamp opendate) {
		this.opendate = opendate;
	}
	public String getStoreinfo() {
		return storeinfo;
	}
	public void setStoreinfo(String storeinfo) {
		this.storeinfo = storeinfo;
	}
	public String[] getTagarr() {
		return tagarr;
	}

	public void setTagarr(String[] tagarr) {
		this.tagarr = tagarr;
	}
	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	
	
	
	
	

}//class
