package com.java.www.service;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.ReviewBoardDao;
import com.java.www.dto.ReviewCardDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class N_WriteServie implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		ReviewBoardDao redao = new ReviewBoardDao();
		String memberId = "aaa";
		
		HttpSession session = request.getSession();
		//String id= (String)session.getAttribute("session_memberId");
		String storename="", title="",bcontent="",tags="", filename="";
		double rate;
		int storeid = 0;
		
		String upload = "c:/upload";
		int size = 10 * 1024 *1024;
		
		try {
			MultipartRequest multi = new MultipartRequest(request, upload,size,"utf-8",new DefaultFileRenamePolicy());
			storename = multi.getParameter("storename");
			System.out.println("N_WriteServie storename : "+storename);
			title = multi.getParameter("title");
			System.out.println("N_WriteServie title : "+title);
			rate = Double.parseDouble(multi.getParameter("rate"));
			System.out.println("N_WriteServie rate : "+rate);
			bcontent = multi.getParameter("bcontent");
			System.out.println("N_WriteServie bcontent : "+bcontent);
			tags = multi.getParameter("tags");
			System.out.println("N_WriteServie tags : "+tags);
			
			Enumeration files = multi.getFileNames();
			while(files.hasMoreElements()) {
				String f = (String)files.nextElement(); //
				filename = multi.getFilesystemName(f); 
			}
			ReviewCardDto redto = new ReviewCardDto(storename, storeid, title, rate, bcontent, tags, filename);
			int result = redao.insert(redto);
			
			request.setAttribute("result", result);
			System.out.println("Service result : "+result);
			
		} catch (IOException e) {e.printStackTrace();}
	}

}
