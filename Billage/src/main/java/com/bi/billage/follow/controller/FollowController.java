package com.bi.billage.follow.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bi.billage.board.model.vo.ReviewBoard;
import com.bi.billage.follow.model.service.FollowService;
import com.bi.billage.follow.model.vo.Follow;
import com.bi.billage.follow.model.vo.Star;
import com.bi.billage.user.model.vo.User;
import com.google.gson.Gson;

@Controller
public class FollowController {
	
	@Autowired
	private FollowService followService;
	
	//following list
	@RequestMapping("selectFollowing.fo")
	public ModelAndView selectFollowingList(int uno, ModelAndView mv,HttpSession session) {
		
		ArrayList<User> followingList = followService.selectFollowingList(uno);
		
		mv.addObject("followingList",followingList)
			.setViewName("follow/followingListView");
		
		return mv;
	}
	
	//followerList 내가 follow 한 사람과 하지 않은 사람을 각각 나누어서 select 함
	@RequestMapping("selectFollower.fo")
	public ModelAndView selectFollowerList(int uno, ModelAndView mv, HttpSession session) {
		
		ArrayList<User> followerList1 = followService.selectFollowerList1(uno);
		
		ArrayList<User> followerList2 = followService.selectFollowerList2(uno);
		
		mv.addObject("followerList1",followerList1)
			.addObject("followerList2", followerList2)
			.setViewName("follow/followerListView");
		
		return mv;
	}
	
	//로그인한 유저의 팔로우 프로필 
	@RequestMapping("selectLoginUser.fo")
	public String selectLoginUser(HttpSession session) {
		
		int userNo = ((User)session.getAttribute("loginUser")).getUserNo();
		
		 User user = followService.selectUser(userNo);
		 
		 Star star = followService.selectStar(userNo);
		 
		 System.out.println(user);
		 
		 session.setAttribute("user", user);
		 
		 session.setAttribute("star", star);
		 
		return "follow/loginUserFollowView";
	}
	
	@RequestMapping("followDetail.fo")
	public String selectFollowing() {
		return "follow/followDetailView";
	}
	
	@RequestMapping("reviewList.fo")
	public String selectFollowReviewList() {
		return "follow/followReviewListView";
	}
	
	//팔로우 insert
	@ResponseBody
	@RequestMapping(value="insert.fo", produces ="application/json; charset=UTF-8")
	public String insertFollow(int userNo2, ModelAndView mv, HttpSession session) {
		
			int userNo = ((User)session.getAttribute("loginUser")).getUserNo();
			
			Follow follow = new Follow(userNo, userNo2);
			
			int result = followService.insertFollow(follow);
			
			return new Gson().toJson(result);
	}
	
	
	//팔로우 delete
	@ResponseBody
	@RequestMapping(value="delete.fo", produces ="application/json; charset=UTF-8")
	public String deleteFollow(int userNo2, ModelAndView mv, HttpSession session) {
		
		int userNo = ((User)session.getAttribute("loginUser")).getUserNo();
		
		Follow follow = new Follow(userNo, userNo2);
		
		int result = followService.deleteFollow(follow);
		
		return new Gson().toJson(result);
	}
	
	// 리뷰 목록
	@RequestMapping("selectReviewList.fo")
	public ModelAndView selectReviewList(int uno , ModelAndView mv) {
		
		ArrayList<ReviewBoard> list = followService.selectReviewList(uno);
		
		mv.addObject("list", list).setViewName("follow/followReviewListView");
		
		return mv;
		
	}
	
	//클릭한 사용자 follow 상세프로필
	@RequestMapping("selectUser.fo")
	public ModelAndView selectUser (int uno, ModelAndView mv) {
		
		User user = followService.selectUser(uno);
		
		Star star = followService.selectStar(uno);
		
		mv.addObject("user", user).addObject("star", star).setViewName("follow/followDetailView");
		
		return mv;
		
	}
	

}
