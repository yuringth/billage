<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경매글 상세보기</title>
<style>
	p {
		margin: auto;
		margin-bottom: 0px;
	}
	.outer{
        width : 1200px;
        margin : auto;
    }
	.imgarea{
		width: 600px;
		height : 600px;
		overflow: hidden;
		margin: auto;
		margin-bottom: 30px;
	}
	.time{
		text-align: center;
		font-size: 45px;
		font-weight: bold;
		margin-bottom: 20px;
	}
	.genre{
		text-align: center;
		font-size: 17px;
		margin-bottom: 0px;
	}
	.title{
		text-align: center;
		font-size: 30px;
		font-weight: bold;
		margin-bottom: 0px;
	}
	.bookWriter{
		text-align: center;
		font-size: 20px;
		margin-bottom: 40px;
		font-weight: bolder;
	}
	.content{
		margin: auto;
		font-size: 18px;
		margin-bottom: 30px;
	}
	.nowPrice,.instantlyPrice{
		text-align: center;
		font-size: 20px;
		font-weight: 600;
		margin-bottom: 8px;
	}
	.priceArea{
		width : 550px;
		margin: auto;
		justify-content: center;
		font-size: 20px;
		font-weight: 600;
		margin-bottom: 8px;
	}
	.btn1{
		width : 200px;
		margin: 30px;
	}
	.btnArea{
		display: flex;
		width : 520px;
		margin: auto;
	}


</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="../../common/header.jsp"/>
	
	<div class="outer">

		<div class="writerarea">
			<p>작성자 : 주우재</p>
		</div>
		<!--이미지 영역-->
		<div class="imgarea">
			<img style="width: 600px; height: 600px;"src="https://search.pstatic.net/common/?src=http%3A%2F%2Fcafefiles.naver.net%2FMjAyMDA4MDVfMjY2%2FMDAxNTk2NTY3NDEwNzA4.fW0LNc9ezTC45UeZP4C72irFTFC23cB7YklNQdu1G-Ig.uUzznBuV_lL2adb0KTMAwzWFN6n0d0HE__fS_ihBmpog.JPEG%2FexternalFile.jpg&type=sc960_832">
		</div>

		
		<p class="time">남은 시간 : 00 : 00 : 30</p>
		<p class="genre">호러</p>
		<p class="title">"주호민의 리코더괴담"</p>
		<p class="bookWriter">침착맨</p>
		<div class="content" style="width : 550px">
			<p>
주호민의 리코더 괴담... 그의 리코더 연주 '할아버지의 11개월'을 끝까지 들으면 죽
는다?!
한 소년이 그의 지옥같은 연주를 끝까지 듣게 되고 그 순간 초인종이 울리는데...
대한민국 최초 실화바탕 호러로맨스 주호민의 리코더 괴담 정말 재밌습니다!! 꼭 읽어보세요 ㅎㅎ
			</p>
		</div>
		<p class="nowPrice">현재가격 : 300 P</p>
		<p class="instantlyPrice">즉시구매가 : 300000000 P</p>

		<form action="">
			<div style="display :flex;" class="priceArea" >
				<div>
					<p>시작가 : 100 P 입찰가격 : </p>
				</div>
				<div style="width:100px">
					<input type="number" name="bidPrice" value="100" width="100px">
				</div>
			</div>

			<div class="btnArea">
				<button class="btn1 btn btn-dark">
					즉시구매
				</button>
				<button class="btn1 btn btn-secondary">
					입찰
				</button>
			</div>
		</form>


	</div>
	
	

	<jsp:include page="../../common/footer.jsp"/>
</body>
</html>