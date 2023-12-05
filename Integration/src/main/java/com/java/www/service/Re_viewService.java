package com.java.www.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.ReviewBoardDao;
import com.java.www.dto.ReviewBoardDto;
import com.java.www.dto.ReviewCardDto;

public class Re_viewService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		ReviewBoardDao rbdao = new ReviewBoardDao();
		
	ArrayList<ReviewCardDto> list = rbdao.re_listSelect();	
	System.out.println("Re_viewService tagarr : "+list.get(0).getTagarr());
	System.out.println("Re_viewService memberid : "+list.get(0).getMemberid());
	
	request.setAttribute("list", list);
	
	
	

	}

}
