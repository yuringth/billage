<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        list-style: none;
        text-decoration: none;
    }
    
    .wrapper {
    	display: flex;
        position: relative;
    }
    
    .wrapper .sidebar {
        width: 300px;
        height: 100%;
        background: #4b4276;
        padding: 30px 0px;
        margin-left: 50px;
        /* position: fixed; */
    }
    .wrapper .sidebar h2 {
        color: #fff;
        text-transform: uppercase;
        text-align: center;
        margin-bottom: 30px;
    }
    .wrapper .sidebar ul li {
        padding: 15px;
        border-bottom: 1px solid #bdb8d7;
        border-bottom: 1px solid rgba(0, 0, 0, 0.05);
        border-top: 1px solid rgba(255, 255, 255, 0.05);
    }
    .wrapper .sidebar ul li a {
        color: #bdb8d7;
        display: block;
    }
    .wrapper .sidebar ul li a .fas {
        width: 25px;
    }
    .wrapper .sidebar ul li:hover {
        background-color: #594f8d;
    }
    .wrapper .sidebar ul li:hover a {
        color: #fff;
    }
    .wrapper .sidebar .social_media {
        position: absolute;
        bottom: 0;
        left: 50%;
        transform: translateX(-50%);
        display: flex;
    }
    .wrapper .sidebar .social_media a {
        display: block;
        width: 40px;
        background: #594f8d;
        height: 40px;
        line-height: 45px;
        text-align: center;
        margin: 0 5px;
        color: #bdb8d7;
        border-top-left-radius: 5px;
        border-top-right-radius: 5px;
    }
    .wrapper .main_content {
        width: 100%;
        margin-left: 50px;
    }
    .wrapper .main_content .header {
        padding: 20px;
        background: #fff;
        color: #717171;
        border-bottom: 1px solid #e0e4e8;
    }
    .wrapper .main_content .info {
        margin: 20px;
        color: #717171;
        line-height: 25px;
    }

    .wrapper .main_content .info div {
        margin-bottom: 20px;
    }

    @media (max-height: 500px) {
        .social_media {
            display: none !important;
        }
    }
    /*-----------------------------------*/
    @import url("https://fonts.googleapis.com/css?family=IBM Plex Sans:400,400i,700");

	*, :before, :after {
		box-sizing: border-box;
	}
	.title {
		display: flex;
		justify-content: center;
		align-items: center;
		text-align: center;
	}
	.tr {
		display: grid;
		grid-template-columns: 15% 15% 20% 20% 15% 15%;
	}
	.header {
		border-bottom: solid 1px #aaa;
	}
	.body {
		border-bottom: solid 1px #aaa;
	}
</style>
<body>
   <jsp:include page="../common/header.jsp"/>

   <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <div class="wrapper">
        <div class="sidebar">
            <h2>관리자 페이지</h2>
            <ul>
                <li><a href="selectUser.ad"><i class="fas fa-user"></i>회원 관리</a></li>
                <li><a href="selectGroup.ad"><i class="fas fa-home"></i>모임 관리</a></li>
                <li><a href="inquiryList.ad"><i class="fas fa-address-card"></i>1:1 문의</a></li>
                <li><a href="faqList.fa"><i class="fas fa-project-diagram"></i>FAQ 관리</a></li>
                <li><a href="noticeList.no"><i class="fas fa-blog"></i>공지사항</a></li>
                <li><a href="serialApply.ad"><i class="fas fa-address-book"></i>연재 요청</a></li>
            </ul>
        </div>
        <div class="main_content">
            <div class="title">
				<h1 class="title-text">회원 목록 조회 및 관리</h1>
			</div>
			<br>
			<div class="table">
				<div class="tr header">
					<div class="td">회원 ID</div>
					<div class="td">닉네임</div>
					<div class="td">이메일</div>
					<div class="td">가입날짜</div>
					<div class="td">회원등급</div>
					<div class="td">탈퇴여부</div>
				</div>
				<div class="tr body">
					<div class="td">user01</div>
					<div class="td">책벌레</div>
					<div class="td">user01@billage.com</div>
					<div class="td">2023/01/06</div>
					<div class="td">일반회원</div>
					<div class="td">N</div>
				</div>
				<div class="tr body">
					<div class="td">user01</div>
					<div class="td">책벌레</div>
					<div class="td">user01@billage.com</div>
					<div class="td">2023/01/06</div>
					<div class="td">일반회원</div>
					<div class="td">N</div>
				</div>
				<div class="tr body">
					<div class="td">user01</div>
					<div class="td">책벌레</div>
					<div class="td">user01@billage.com</div>
					<div class="td">2023/01/06</div>
					<div class="td">일반회원</div>
					<div class="td">N</div>
				</div>
				<div class="tr body">
					<div class="td">user01</div>
					<div class="td">책벌레</div>
					<div class="td">user01@billage.com</div>
					<div class="td">2023/01/06</div>
					<div class="td">일반회원</div>
					<div class="td">N</div>
				</div>
			</div>
        </div>
    </div>
   <jsp:include page="../common/footer.jsp"/>
</body>
</html>