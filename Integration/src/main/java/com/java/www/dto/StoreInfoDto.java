package com.java.www.dto;

import java.sql.Timestamp;

public class StoreInfoDto {
	
	public StoreInfoDto() {};
	
	private int storeid;
	private String storename;
	private String memberid;
	private String phone;
	private String address;
	private int categoryid;
	private String workingtime;
	private int keywordid;
	private String webaddr;
	private String manu;
	private String menupicture;
	private Timestamp opendate;
	private String storeinfo;
	private int rate;
	private int hit;
	
	
	
	
	
	
	
	
	
	public StoreInfoDto(int storeid, String storename, String memberid, String phone, String address, int categoryid,
			String workingtime, int keywordid, String webaddr, String manu, String menupicture, String storeinfo,
			int rate, int hit) {
		super();
		this.storeid = storeid;
		this.storename = storename;
		this.memberid = memberid;
		this.phone = phone;
		this.address = address;
		this.categoryid = categoryid;
		this.workingtime = workingtime;
		this.keywordid = keywordid;
		this.webaddr = webaddr;
		this.manu = manu;
		this.menupicture = menupicture;
		this.storeinfo = storeinfo;
		this.rate = rate;
		this.hit = hit;
	}
	
	
	public StoreInfoDto(int storeid, String storename, String memberid, String phone, String address, int categoryid,
			String workingtime, int keywordid, String webaddr, String manu, String menupicture, Timestamp opendate,
			String storeinfo, int rate, int hit) {
		super();
		this.storeid = storeid;
		this.storename = storename;
		this.memberid = memberid;
		this.phone = phone;
		this.address = address;
		this.categoryid = categoryid;
		this.workingtime = workingtime;
		this.keywordid = keywordid;
		this.webaddr = webaddr;
		this.manu = manu;
		this.menupicture = menupicture;
		this.opendate = opendate;
		this.storeinfo = storeinfo;
		this.rate = rate;
		this.hit = hit;
	}
	public int getStoreid() {
		return storeid;
	}
	public void setStoreid(int storeid) {
		this.storeid = storeid;
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
	public String getManu() {
		return manu;
	}
	public void setManu(String manu) {
		this.manu = manu;
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
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	
	
	
	
	
	

}
