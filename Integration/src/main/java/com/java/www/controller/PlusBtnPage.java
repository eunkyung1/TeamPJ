package com.java.www.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.java.www.dao.ReviewBoardDao;
import com.java.www.dto.ReviewCardDto;

@WebServlet("/PlusBtnPage")
public class PlusBtnPage extends HttpServlet {
	
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		int page =Integer.parseInt(request.getParameter("page"));
		System.out.println("PlusBtnPage : "+page);
		ReviewBoardDao redao = new ReviewBoardDao();
		
		int rowPage = 4; //1페이지당 4개 게시글
		
		int listCount = redao.nListCount();
		int startRow = (page-1)*rowPage+1;
		int endRow = startRow+ rowPage-1;
		System.out.println("PlusBtnPage rowPage : "+rowPage);
		ArrayList<ReviewCardDto> list = redao.listPage(startRow,endRow);
		System.out.println("PlusBtnPage startRow : " + startRow);
		System.out.println("PlusBtnPage endRow : " + endRow);
		
		//ajax 전송
		JSONObject json = new JSONObject();
		JSONArray jsonarr = new JSONArray();
		JSONObject jobj = new JSONObject();

		for(int i =0; i<list.size(); i++) {
			jobj.put("boardid",list.get(i).getBoardid());
			jobj.put("filename", list.get(i).getFilename());
			jobj.put("memberid", list.get(i).getMemberid());
			jobj.put("title", list.get(i).getTitle());
			jobj.put("bcontent", list.get(i).getBcontent());
			jobj.put("rate", list.get(i).getRate());
			jobj.put("tags", list.get(i).getTags());
			jobj.put("storename", list.get(i).getStorename());
			jsonarr.add(jobj);
		
		}
		System.out.println("jsonarr 배열 : "+jsonarr.toString());
		
		response.setContentType("application/x-json; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.print(jsonarr);
		writer.close();
		/*
		response.setContentType("application/x-json; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.print(jsonarr);
		writer.close();
		*/
		
	}
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("doGet");
			doAction(request, response);
		}

		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("dopost");
			doAction(request, response);
		}

}
