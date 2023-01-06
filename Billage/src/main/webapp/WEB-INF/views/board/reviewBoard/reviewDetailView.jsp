<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰게시판 글 작성 폼</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<style>
.outer{
	width:1200px;
	margin: auto;
}

.book-detail-outer{
	border : 1px solid blue;
	width:620px;
	height:200px;
	margin:auto;
}


.book-detail-area{
	border : 1px solid black;
	width:620px;
	height:200px; 
	display:flex;
}


/* 사진  */
.content-photo-detail{
	border:1px solid red;
	width:200px;
	height:200px;
	margin-right:20px;
}

/* 책 정보 */
.content-book-detail{
	border:1px solid pink;
	width:400px;
	height:200px;
}


.book-content-outer{
	text-align:center;
}



</style>

</head>
<body>


	<jsp:include page="../../common/header.jsp" />
    
    
 	<!-- 전체를 감싸는 div  -->
 	<div class="outer">

		<h1 style="text-align:center;">리뷰 상세페이지</h1>

		<hr>
		
		
		<div class="book-detail-outer">
			<div class="book-detail-area">
				<div class="content-photo-detail">
					<div>사진</div>
				</div>
				
				<div class="content-book-detail">
					<div id="content">책내용</div>
					<div id="title">제목</div>
					<div id="wirter">저자</div>
					<div id="publisher">츨판사</div>
					<div id="date">발행일자</div>
				</div>
			</div>
		</div>
		
		
		<hr>

		<div style="text-align:center;">별점 : ☆☆☆★ 
			<small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
		</div>

		<br>

		<div class="book-content-outer">
			<form action="#">
				<textarea id="content" rows="30" cols="100" style="resize:none" maxlength="1000">여기에 글 내용 불러오기</textarea>
				<br>
				<hr>
				<spank id="count" style="color:blue;">이 숫자도 불러오기</spank> / 1000
			</form>
		</div>


		<!-- 글입력 갯수 세기 -->
		<script>
        $(function(){
            $('.book-content-outer #content').keyup(function(){
                $('#count').text($(this).val().length);
                
            });
        });
    	</script>


		<hr>
	
		<div style="text-align:center;">
			<a href="">글작성</a>
			<a href="">목록으로</a>
		</div>


 	</div>   
 
 
	<div>
		댓글 <input type="text" id="replyContent">
		<button>댓글</button>
	</div>
                    
                    
                    
	<div>
		<a href="">삭제하기(로그인==유저정보일치할시)</a>
		<a href="">목록으로</a>
	</div>
 
 
 
	<jsp:include page="../../common/footer.jsp" />
 
 
 
 
 
</body>
</html>