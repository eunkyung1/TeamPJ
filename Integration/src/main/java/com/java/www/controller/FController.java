package com.java.www.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.service.Re_viewService;
import com.java.www.service.N_UpdateService;
import com.java.www.service.N_WriteServie;
import com.java.www.service.Re_SelectOneService;
import com.java.www.service.Service;

@WebServlet("*.do")
public class FController extends HttpServlet {

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8");
		
		Service service = null;
		String url = null;
		
		//파일추출
		String uri = request.getRequestURI();
		String uPath = request.getContextPath();
		String fileName = uri.substring(uPath.length()+1);
		System.out.println("uPath : "+uPath);
		System.out.println("FController fileName : "+fileName);
		
		switch(fileName) {
		case "html/main.do":
			response.sendRedirect("main.jsp");
			break;
		
		case "review/review_view_card.do":
			service = new Re_viewService();
			service.execute(request, response);
			url="review_view_card.jsp";
			break;
		
		case "review/review_view_List.do":
			service = new Re_viewService();
			service.execute(request, response);
			url="review_view_List.jsp";
			break;
			
		case "review/review_view.do":
			service = new Re_SelectOneService();
			service.execute(request, response);
			url="review_view.jsp";
			break;
			
		case "review/review_write.do":
			response.sendRedirect("review_write.jsp");
			break;
			
		case "review/doN_write.do":
			service = new N_WriteServie();
			service.execute(request, response);
			url="doN_write.jsp";
			break;
			
		case "review/review_update.do":
			service = new Re_SelectOneService();
			service.execute(request, response);
			url="review_update.jsp";
			break;
			
		case "review/doN_update.do":
			service = new N_UpdateService();
			service.execute(request, response);
			url="doN_update.jsp";
		
		}//switch
		
		if(url != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}
		
	}//doAction 
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}

}
