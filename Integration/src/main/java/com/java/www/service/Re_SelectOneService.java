package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.ReviewBoardDao;
import com.java.www.dto.ReviewCardDto;

public class Re_SelectOneService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int boardid = Integer.parseInt(request.getParameter("boardid"));
		System.out.println("Service boardid : "+boardid);
		ReviewBoardDao redao = new ReviewBoardDao();
		ReviewCardDto redto = redao.selectOne(boardid);
		
		request.setAttribute("redto", redto);
		request.setAttribute("boardno", boardid);
		
		
		
		
		
		

	}//execute

}//class
