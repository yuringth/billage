package com.bi.billage.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bi.billage.user.model.service.UserService;
import com.bi.billage.user.model.vo.User;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	// 관리자 관련 컨트롤러
	
	// 관리자 페이지
	@RequestMapping("admin.ad")
	public String adminPage() {
		return "admin/adminPage";
	}
	
	// 회원관리화면selectGroup.ad
	@RequestMapping("selectUser.ad")
	public String selectUserList() {
		return "admin/userListView";
	}
	
	// 모임관리화면
	@RequestMapping("selectGroup.ad")
	public String selectGroupList() {
		return "admin/groupListView";
	}
	
	// 1:1 문의내역
	@RequestMapping("inquiryList.ad")
	public String selectInqList() {
		return "admin/inqListView";
	}
	
	// 1:1 문의 작성폼
	@RequestMapping("enroll.iq")
	public String enrollInquiry() {
		return "admin/inqEnrollForm";
	}
	
	// 연재 요청 리스트
	@RequestMapping("serialApply.ad")
	public String serialRequest() {
		return "admin/serialRequestListView";
	}
	
	// 연재 요청 작성폼
	@RequestMapping("request.se")
	public String requestSerial() {
		return "admin/serialRequestForm";
	}
	
	// 작품 등록폼
	@RequestMapping("enrollForm.nv")
	public String enrollNovel() {
		return "admin/novelEnrollForm";
	}
	
	// 관리자 관련 끝
	
	// 회원가입 폼으로
	@RequestMapping("userEnrollForm.me")
	public String userEnrollForm() {
		return "user/userEnrollForm";
	}
	
	
	//--------------------------------------------------------------------------------
	// 마이페이지 
	@RequestMapping("mypage.me")
	public String myPage() {
		return "user/myPage";
	}
	
	@RequestMapping("general.me")
	public String groupGeneral() {
		return "group/groupGeneralView";
	}
	
	
	@RequestMapping("admin.me")
	public String groupAdmin() {
		return "group/groupAdminView";
	}
	
	// 로그인 폼으로
	@RequestMapping("loginUserForm.me")
	public String loginUserForm() {
		return "user/loginUserForm";
	}
	
	// 회원가입
	@RequestMapping("insert.me")
	public String insertUser(User u, Model model) {
		// 암호화 작업
		String encPwd = bcryptPasswordEncoder.encode(u.getUserPwd());
		
		u.setUserPwd(encPwd);
		
		int result = userService.insertUser(u);
		
		if(result > 0 ) {	// 가입성공되면 메인페이지로
			return "redirect:/";
		} else {			// 실패 에러메세지
			model.addAttribute("errorMsg", "가입에 실패했습니다.");
			return "common/errorPage";
		}
	}
	
	// 로그인
	@RequestMapping("login.me")
	public ModelAndView loginUser(User u, ModelAndView mv, HttpSession session) {
		
		User loginUser = userService.loginUser(u);
		
		if(loginUser != null && bcryptPasswordEncoder.matches(u.getUserPwd(), loginUser.getUserPwd())) {	// 로그인 성공 시
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:/");
		} else {	// 로그인 실패 시
			// 키 - 밸류 담기
			mv.addObject("errorMsg", "에러입니다.");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	// 로그아웃
	@RequestMapping("logout.me")
	public String logoutUser(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}