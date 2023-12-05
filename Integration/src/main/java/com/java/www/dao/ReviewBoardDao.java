package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.java.www.dto.ReviewAttachDto;
import com.java.www.dto.ReviewBoardDto;
import com.java.www.dto.ReviewCardDto;

public class ReviewBoardDao {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ReviewBoardDto rbdto = null;
	ReviewAttachDto radto =null;
	ReviewCardDto carddto = null;
	int boardid, storeid, step, bindent, bgroup, hit, heart, reportcount,filesize, phone, address, keywordid;
	double rate;
	String memberId, title, bcontent, boardcategory, tags, filename, category, workingtime, webaddr, menu, menupicture,storeinfo, storename, query;
	Timestamp createdate, opendate, regdate;
	String[] tagarr = null;
	ArrayList<ReviewCardDto> list = new ArrayList<ReviewCardDto>();

	// 커넥션 풀에서 Connection 가져오기
	public Connection getConnection() {
		Connection connection = null;
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle18");
			connection = ds.getConnection();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;

	}//Conncetion 

	public ArrayList<ReviewCardDto> re_listSelect() {
		try {
			conn = getConnection();
			query="with RankedReviews as(select  b.filename, a.tags, a.heart, a.rate, c.storename, a.title, c.memberid, a.bcontent, row_number() over(order by a.rate desc) rnum from review_board a, review_attach b, storeInfo c where a.boardid = b.boardid and a.storeid = c.storeid) select filename,tags,heart,rate,storename,title,memberid,bcontent from RankedReviews where rnum between 1 and 4";
			pstmt = conn.prepareStatement(query);
			int i = 0;
			rs = pstmt.executeQuery();	
			while(rs.next()) {
				filename= rs.getString("filename");
				tags= rs.getString("tags");
				tagarr = tags.split(",");
				System.out.println(Arrays.toString(tagarr));
				heart= rs.getInt("heart");
				rate= rs.getDouble("rate");
				storename= rs.getString("storename");
				title=rs.getString("title");
				memberId =rs.getString("memberid");
				bcontent = rs.getString("bcontent");
				list.add(new ReviewCardDto(filename, memberId , title, bcontent, heart, tags ,tagarr, storename));
				System.out.println("Dao list filename :"+list.get(i).getFilename());
				System.out.println("Dao list memberid :"+list.get(i).getMemberid());
				i++;
			}//while
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) { e2.printStackTrace();}
		}//
		
		
		return list;
	}//re_listSelect


	
	
	
	
	
	
	
	
	
}//class
