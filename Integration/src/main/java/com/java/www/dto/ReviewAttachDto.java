package com.java.www.dto;

import java.sql.Timestamp;

public class ReviewAttachDto {
	
	public ReviewAttachDto(){};
	
	private int boardid;
	private String filename;
	private int filesize;
	private Timestamp date;
	
	
	public ReviewAttachDto(int boardid, String filename, int filesize) {
		super();
		this.boardid = boardid;
		this.filename = filename;
		this.filesize = filesize;
	}
	
	public ReviewAttachDto(int boardid, String filename, int filesize, Timestamp date) {
		super();
		this.boardid = boardid;
		this.filename = filename;
		this.filesize = filesize;
		this.date = date;
	}
	public int getBoardid() {
		return boardid;
	}
	public void setBoardid(int boardid) {
		this.boardid = boardid;
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
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	
	

}
