package com.java.www.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.java.www.dao.ReviewBoardDao;
import com.java.www.dto.ReviewCardDto;

/**
 * Servlet implementation class StoreSearch
 */
@WebServlet("/StoreSearch")
public class StoreSearch extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String storename = request.getParameter("storename");
		System.out.println("StoreSearch : "+storename);

		ReviewBoardDao redao = new ReviewBoardDao();
		ReviewCardDto redto = redao.storeSearch(storename);
		System.out.println("StoreSearch storename : "+storename);
		
		
		//ajax 전송
		JSONObject json = new JSONObject();
		json.put("storename",redto.getStorename());
		json.put("address", redto.getAddress());
		json.put("storeid", redto.getStoreid());
		
		System.out.println("StoreSearch getStorename : "+redto.getStorename());
		System.out.println("StoreSearch getAddress : "+redto.getAddress());
		System.out.println("StoreSearch getStoreid : "+redto.getStoreid());
		
		response.setContentType("application/x-json; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.print(json);
		writer.close();
		
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
