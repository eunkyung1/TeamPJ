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
	ReviewCardDto redto = null;
	int boardid, storeid, step, bindent, bgroup, hit, heart, reportcount,filesize, phone, keywordid, ratecounter, result, listCount;
	String address;
	double rate;
	String memberid, title, bcontent, boardcategory, tags, filename, category, workingtime, webaddr, menu, menupicture,storeinfo, storename, query;
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
			query="with RankedReviews as(select a.boardid, b.filename, a.tags, a.heart, a.rate, c.storename, a.title, c.memberid, a.bcontent, row_number() over(order by a.boardid asc) rnum from review_board a, review_attach b, storeInfo c where a.boardid = b.boardid and a.storeid = c.storeid) select boardid,filename,tags,heart,rate,storename,title,memberid,bcontent from RankedReviews where rnum between 1 and 4";
			pstmt = conn.prepareStatement(query);
			int i = 0;
			rs = pstmt.executeQuery();	
			while(rs.next()) {
				boardid = rs.getInt("boardid");
				filename= rs.getString("filename");
				tags= rs.getString("tags");
				tagarr = tags.split(",");
				System.out.println("Dao list tagarr : "+Arrays.toString(tagarr));
				heart= rs.getInt("heart");
				rate= rs.getDouble("rate");
				storename= rs.getString("storename");
				title=rs.getString("title");
				memberid =rs.getString("memberid");
				bcontent = rs.getString("bcontent");
				list.add(new ReviewCardDto(boardid, filename, memberid , title, bcontent, heart, rate, tags ,tagarr, storename));
				System.out.println("Dao list filename :"+list.get(i).getFilename());
				System.out.println("Dao list memberid :"+list.get(i).getMemberid());
				System.out.println("Dao list rate :"+list.get(i).getRate());
				System.out.println("Dao list boardid :"+list.get(i).getBoardid());
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

	//게시글 1개 가져오기
	public ReviewCardDto selectOne(int boardid2) {
		try {
			conn=getConnection();
			query="select a.boardid, b.filename, c.storename, a.title, a.memberid, a.createdate, a.rate, a.bcontent, a.heart, a.tags from review_board a, review_attach b, storeinfo c where a.boardid = b.boardid and a.storeid = c.storeid and a.boardid=? ";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, boardid2);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				boardid= rs.getInt("boardid");
				System.out.println("dao boardid : "+boardid);
				filename =rs.getString("filename");
				memberid = rs.getString("memberid");
				title = rs.getString("title");
				bcontent = rs.getString("bcontent");
				createdate = rs.getTimestamp("createdate");
				heart = rs.getInt("heart");
				rate = rs.getInt("rate");
				tags= rs.getString("tags");
				tagarr = tags.split(",");
				storename = rs.getString("storename");
				redto = new ReviewCardDto(boardid, filename, memberid, title, bcontent, createdate, heart, rate, tags, tagarr, storename);
				System.out.println("Dao list boardid :"+redto.getBoardid());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) { e2.printStackTrace();};
		}//
		return redto;
	}
	
	//시퀀스 메소드
	/*
	 * public int review_seq() { int review_seq = 0; String number =
	 * "select review_seq.nextval from dual"; review_seq = Integer.parseInt(number);
	 * return review_seq; }
	 */
	public int insert(ReviewCardDto redto2) {
		try {
			conn = getConnection();
			
			query = "select storeid from storeinfo WHERE storename =?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, redto2.getStorename());
			System.out.println("insert DAO redto2.getStorename() : "+ redto2.getStorename());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				storeid = rs.getInt("storeid");
				System.out.println("insert DAO storeid : "+ storeid);
			}
			//호출
			//int review_seq = review_seq(); 
			
			query="insert into review_board values(review_seq.nextval,?,?,?,?,sysdate,0,0,review_seq.currval,10,0,?,0,?,0)";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, redto2.getMemberid());
			pstmt.setInt(2, storeid);
			pstmt.setString(3, redto2.getTitle());
			System.out.println("DAO INSERT redto2.getTitle() :"+redto2.getTitle());
			pstmt.setString(4, redto2.getBcontent());
			pstmt.setDouble(5, redto2.getRate());
			System.out.println("DAO INSERT redto2.getRate() : "+redto2.getRate());
			pstmt.setString(6, redto2.getTags());
			System.out.println("DAO INSERT redto2.getTags() : "+redto2.getTags());
			result = pstmt.executeUpdate();
			
			
			
			
			query="insert into review_attach values(review_seq.currval,?,1,sysdate)";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, redto2.getFilename());
			System.out.println("DAO INSERT redto2.getFilename() : "+redto2.getFilename());
			result = pstmt.executeUpdate();
					
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) { e2.printStackTrace();}
		}//
		
		
		return result;
	}

	//가게이름 검색 엔진
	public ReviewCardDto storeSearch(String storename2) {
		try {
			
			conn=getConnection();
			query="select * from storeInfo where storename=? ";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, storename2);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				storename = rs.getString("storename");
				address = rs.getString("address");
				storeid = rs.getInt("storeid");
				redto = new ReviewCardDto(storename,address,storeid);
				System.out.println("Dao redto storename :"+storename);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) { e2.printStackTrace();}
		}//
		
		return redto;
	}

	//게시물 수정하기
	public int update(ReviewCardDto redto2) {
		try {
			conn = getConnection();
			query = "select storeid from storeinfo WHERE storename =?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, redto2.getStorename());
			System.out.println("insert DAO redto2.getStorename() : "+ redto2.getStorename());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				storeid = rs.getInt("storeid");
				System.out.println("insert DAO storeid : "+ storeid);
			}
			
			query ="update review_board set title=?,rate=?,bcontent=?,tag=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, redto2.getTitle());
			pstmt.setDouble(2, redto2.getRate());
			pstmt.setString(3, redto2.getBcontent());
			pstmt.setString(4, redto2.getTags());
			result = pstmt.executeUpdate();
			
			query ="update review_attach set filename=?, regdate=sysdate";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,redto2.getFilename());
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) { e2.printStackTrace();}
		}//
		
		return result;
	}


	public ArrayList<ReviewCardDto> listPage(int startRow, int endRow) {
		try {
			conn = getConnection();
			query="with RankedReviews as(select a.boardid, b.filename, a.tags, a.heart, a.rate, c.storename, a.title, c.memberid, a.bcontent, row_number() over(order by a.boardid asc) rnum from review_board a, review_attach b, storeInfo c where a.boardid = b.boardid and a.storeid = c.storeid) select boardid,filename,tags,heart,rate,storename,title,memberid,bcontent from RankedReviews where rnum between ? and ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2,endRow);
			rs = pstmt.executeQuery();	
			while(rs.next()) {
				boardid = rs.getInt("boardid");
				filename= rs.getString("filename");
				tags= rs.getString("tags");
				tagarr = tags.split(",");
				System.out.println("Dao listPage tagarr : "+Arrays.toString(tagarr));
				heart= rs.getInt("heart");
				rate= rs.getDouble("rate");
				storename= rs.getString("storename");
				title=rs.getString("title");
				memberid =rs.getString("memberid");
				bcontent = rs.getString("bcontent");
				list.add(new ReviewCardDto(boardid, filename, memberid , title, bcontent, heart, rate, tags ,tagarr, storename));
			}
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
		
	}


	public int nListCount() {
		try {
			conn = getConnection();
			
		query="select count(*) listCount from review_board";
		pstmt = conn.prepareStatement(query);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			listCount = rs.getInt("listCount");
			System.out.println("dao nListcount :"+listCount);
		}
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) { e2.printStackTrace();}
		}//
		
		return listCount;
	}


	

	
	
	
	
	
	
	
	
	
}//class
