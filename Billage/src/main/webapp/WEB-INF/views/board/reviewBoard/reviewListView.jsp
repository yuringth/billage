<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰게시판 목록 조회</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>


<style>

    .reviewList-area{
        border:1px solid red;
        width:1200px;
        margin:auto;

    }
    
    .reviewOption{
        border:1px solid red;
    	width:1200px;
    	height:30px;
    }
    
    .one-content{
   		border:1px solid forestgreen;
    	width:500px;
    	height:350px;
    	margin:25px;
    }
    
    
    .list-outer{
   		display:flex;
   		width:1100px;
   		margin:auto;
    }

    .content-detail0{
        border:1px solid blue;
		width:500px;
		height:50px;
        display:flex;
    }


  	.book-detail{
  		border:1px solid red;
  		width:500px;
		height:250px;
  		display:flex;
  		margin:auto;
  	}
  	
 
  	
	.content-detail1{
		border:1px solid pink;
		width:200px; 
		height:220px;
		margin-top:10px;
		margin-left:10px;
	}

  	
	.content-detail2{
		border:1px solid pink;
		width:300px;
		height:220px;
		margin-top:10px;
		margin-left:10px;
	}



	* {
	  margin: 0;
	  padding: 0;
	  box-sizing: border-box;
	}


</style>


</head>
<body>

	<!-- 메뉴바 -->
	<jsp:include page="../../common/header.jsp" />
    
    



	<h1>리뷰게시판</h1>
	
    <!-- 전체를 감싸는 div -->
    <div class="reviewList-area">

        <!-- 옵션div -->
        <div>
            <div class="reviewOption">
                <select name="" id="">
                    <option value="book" selected>책 제목순</option>
                    <option value="date">날짜 정렬 순</option>
                </select>
            </div>
        </div>

	<div class="list-outer">

        <!-- 리뷰 하나를 감싸는 div -->
        <div class="one-content">
        	
        	<!-- 작성자/별 -->
            <div class="content-detail0" onclick="reviewDetail()">
                <div>작성자　　　　</div>                                              
                <div class="card-footer">
                 	   별점 : <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
            </div>
			
			<!-- 책관련 디테일 div 책사진/제목/내용  -->
			<div class="book-detail">
			
				<div class="content-detail1">
		            <div>
		            	<img class="card-img-top" src="https://image.yes24.com/goods/24259565/XL" alt="" style= "width:200px; height:220px;">
		            </div>
				</div>
				
				<div class="content-detail2">	            
		            <div>
		            	<div style="height:20px;">책 제목</div>
		            </div>
	    	        <div>
	  	  	       		<div style="height:200px;">책내용</div>
	    	        </div>
				</div>
			
				<br>
			</div>
	
	            <div>
	            	<button>♡</button>찜갯수(5) 댓글(3) 리뷰등록수(3)
	            </div>
	            
	            
        </div>




 		<!-- 리뷰 하나를 감싸는 div -->
        <div class="one-content">
        	
        	<!-- 작성자/별 -->
            <div class="content-detail0" onclick="reviewDetail()">
                <div>작성자　　　　</div>                                              
                <div class="card-footer">
                 	   별점 : <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
            </div>
			
			<!-- 책관련 디테일 div 책사진/제목/내용  -->
			<div class="book-detail">
			
				<div class="content-detail1">
		            <div>
		            	<img class="card-img-top" src="https://image.yes24.com/goods/24259565/XL" alt="" style= "width:200px; height:220px;">
		            </div>
				</div>
				
				<div class="content-detail2">	            
		            <div>
		            	<div style="height:20px;">책 제목</div>
		            </div>
	    	        <div>
	  	  	       		<div style="height:200px;">책내용</div>
	    	        </div>
				</div>
			
				<br>
			</div>
	
	            <div>
	            	<button>♡</button>찜갯수(5) 댓글(3) 리뷰등록수(3)
	            </div>
	            
	            
        </div>

	</div>


	<script>
		function reviewDetail(){ // 게시글 상세보기 : 안된다!!!!!
			location.href = 'detail.re' + $(this); 
		}
	</script>
	




                    
    <!-- 페이지처리하는 영역-->
    <div id="pagingArea">
        <ul class="pagination">
            <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">4</a></li>
            <li class="page-item"><a class="page-link" href="#">5</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>
    </div>


	<div>
		<a href="enrollForm.re">글작성</a>
	</div>
  

	<!-- 푸터바 -->
	<jsp:include page="../../common/footer.jsp" />


	
</body>
</html>