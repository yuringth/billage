package com.bi.billage.group.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bi.billage.group.model.service.GroupService;

@Controller
public class GroupController {
	
	//@Autowired
	//private GroupService groupService;
	
	@RequestMapping("list.gr")
	public /*ModelAndView*/String selectGroup(/*@RequestParam(value="cpage", defaultValue="1")int currentPage, ModelAndView mv*/) {
		
		//PageInfo pi = pagination.
		//mv.setViewName("group/groupListView");
		//return mv;
		return "group/groupListView";
	}
	
	
	@RequestMapping("detail.gr")
	public String selectDetailGroup(/*게시글 번호*/) {
		//게시글 번호 조회 
		return "group/groupDetailView";
	}
	
	
	
}
