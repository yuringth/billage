package com.bi.billage.board.model.service;

import java.util.ArrayList;

import com.bi.billage.board.model.vo.ADBoard;
import com.bi.billage.board.model.vo.Book;
import com.bi.billage.board.model.vo.Novel;
import com.bi.billage.board.model.vo.ReportBoard;
import com.bi.billage.board.model.vo.ReviewBoard;
import com.bi.billage.board.model.vo.Serial;
import com.bi.billage.board.model.vo.SerialRequest;
import com.bi.billage.board.model.vo.UsedBoard;
import com.bi.billage.common.model.vo.PageInfo;


public interface BoardService {
	
	
	///////////////////////
	// 게시글 조회수 증가
	int increaseCount (int boardNo);
	////////////////////////
	
	
	//광진 구역
	// 작품 총 개수 조회
	int selectNovelListCount();
	
	// 작품 리스트 조회
	ArrayList<Novel> selectNovelList(PageInfo pi);
	
	// 연재 총 개수 조회
	int selectSerialListCount();
	
	// 연재 리스트 조회
	ArrayList<Serial> selectSerialList(PageInfo pi, int novelNo);
	
	// 연재 상세 조회
	ArrayList<Serial> selectSerialDetail(PageInfo pi, int novelNo, String serialNo);
	
	// 연재신청 서비스(insert)
	int insertSerialRequest(SerialRequest sr);
	
	// 작품등록 서비스(insert)
	int insertNovel(Novel n);
	
	// 연재 등록 서비스(insert)
	int insertSerial(Serial se, int novelNo);
	
	//광진 구역끝
	
	//휘수 구역
	//report
	int insertReport(ReportBoard r);
	
	ArrayList<ReportBoard> selectReportList();
	
	ReportBoard selectReport(int rno);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//==========================================휘수 구역 끝=




	// auction , draw board -세헌
	
	int drawIncreaseCount (int boardNo);
	//추첨게시글 조회
	ArrayList<ADBoard> selectDrawBoardList();
	// 추첨게시글 작성
	int insertDrawBoard(ADBoard b);
	// 추첨게시글 상세 조회
	ADBoard selectDrawBoard(int boardNo);
	// 추첨게시글 삭제
	int deleteDrawBoard(int boardNo);
	// 추첨게시글 수정
	int updateDrawBoard(int boardNo);
	
	int auctionIncreaseCount (int boardNo);
	// 경매게시글 조회
	ArrayList<ADBoard> selectAuctionBoardList();
	// 경매게시글 작성
	int insertAuctionBoard(ADBoard b);
	// 경매게시글 상세 조회
	ADBoard selectAuctionBoard(int boardNo);
	// 경매게시글 삭제
	int deleteAuctionBoard(int boardNo);
	// 경매게시글 수정
	int updateAuctionBoard(int boardNo);
	
	//추첨신청자 등록
	int insertDrawUser(ADBoard b);
	//추첨신청 취소
	int deleteDrawUser(ADBoard b);
	//추첨여부 조회
	int checkDraw(ADBoard b);
	// 추첨 당첨자 선정
	ArrayList<Integer> selectPrizeUser(int boardNo);
	// 당첨자 등록
	int insertPrizeUser(ADBoard b);
	// 추첨글의 총 적립된 포인트 조회
	int selectDrawPoint(int boardNo);
	
	
	
	
	// 유림 시작
	
	// 중고게시판 작성 (insert) 
	int insertUsedBoard(UsedBoard b);
	
	// 중고게시글 조회수 증가 (update)
	int increaseUsedCount(int boardNo);
	// 중고게시판 상세 조회 (select)
	UsedBoard selectUsedBoard(int boardNo);
	
	// 중고게시판 삭제 (update)
	int deleteUsedBoard(int boardNo);
	
	// 중고게시글 수정 서비스(update)
	int updateUsedBoard(UsedBoard b);
	
	// 중고게시판 TOP-N 분석(조회수 높은 순으로 띄우기)(select)
	ArrayList<UsedBoard> selectTopBoard();
	
	
	
	
	// 리뷰게시판 => book테이블에서 책제목으로 isbn 문자열 select하기
	Book selectIsbn(String title);
	
	
	// 리뷰 게시글의 총 개수 조회
	int selectListCount();
	// 리뷰 게시글 리스트 조회
	ArrayList<ReviewBoard> reviewBoardList(PageInfo pi);
	
	
	
	// 리뷰게시판 => 1) 책 중복되는지 확인 select : bookTitle로 조회 => 한 행이 있는지 없는지
	ReviewBoard selectBookTitle(ReviewBoard b);
	
	
	// 리뷰게시판 => 2) 중복 된 책 없으면 insert : 글작성
	int insertReviewBoard(ReviewBoard b);
	
	
	
	// 리뷰게시글 조회수 증가 (update)
	int increaseReviewCount(int reviewNo);
	
	// 리뷰게시판 상세 조회 (select) & 리뷰게시판 수정시 폼화면 띄울때도 사용
	ReviewBoard selectReviewBoard(int reviewNo);
	
	
	
	
	// 리뷰게시판 삭제 (update)
	int deleteReviewBoard(int reviewNo);
	
	
	
	
	// 리뷰게시글 수정 서비스(update)
	int updateReviewBoard(ReviewBoard b);


	



	
	// 댓글 나중에......
	// 댓글 리스트 조회서비스(Ajax)(select)
//	ArrayList<Reply> selectReplyList(int boardNo);
	
	// 댓글 작성 서비스(Ajax)(insert)
//	int insertReply(Reply r);
	

	
	
	// 유림 끝
	
	
	
	
	
	
	
	
	
	
}
