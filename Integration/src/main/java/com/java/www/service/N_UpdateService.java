package com.java.www.service;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.ReviewBoardDao;
import com.java.www.dto.ReviewCardDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

public class N_UpdateService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		ReviewBoardDao redao = new ReviewBoardDao();
		
		HttpSession session = request.getSession();
		String memberId = (String)session.getAttribute("session_memberId");
		
		String storename="", title="",bcontent="",tags="", filename="";
		double rate;
		int storeid = 0, page=1;
		
		String upload = "c:/upload";
		int size = 10 *1024*1024;
		
		try {
			MultipartRequest multi = new MultipartRequest(request, upload, size, "utf-8",new DefaultFileRenamePolicy());
			page = Integer.parseInt(multi.getParameter("page"));
			int boardid = Integer.parseInt(request.getParameter("boardid"));
			storename = multi.getParameter("storename");
			title = multi.getParameter("title");
			rate = Double.parseDouble(multi.getParameter("rate"));
			bcontent = multi.getParameter("bcontent");
			tags = multi.getParameter("tags");
			filename = multi.getParameter("oldfile");
			
			Enumeration files = multi.getFileNames();
			while(files.hasMoreElements()) {
				String f = (String)files.nextElement(); 
				String tempfile = multi.getFilesystemName(f); 
				if(tempfile!=null) filename=tempfile;
			}
			ReviewCardDto redto = new ReviewCardDto(storename, storeid, title, rate, bcontent, tags, filename);
			int result = redao.update(redto);
			
			
		} catch (IOException e) {e.printStackTrace();}
		
		
		
		
	}

}
