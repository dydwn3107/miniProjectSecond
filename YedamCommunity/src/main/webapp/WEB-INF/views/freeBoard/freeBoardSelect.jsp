<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.like-content span {
   color: #9d9da4;
   font-family: monospace;
}

.like-content .btn-secondary {
   display: block;
   margin: 40px auto 0px;
   text-align: center;
   background: #ed2553;
   border-radius: 3px;
   box-shadow: 0 10px 20px -8px rgb(240, 75, 113);
   padding: 10px 17px;
   font-size: 18px;
   cursor: pointer;
   border: none;
   outline: none;
   color: #ffffff;
   text-decoration: none;
   -webkit-transition: 0.3s ease;
   transition: 0.3s ease;
}

.like-content .btn-secondary:hover {
   transform: translateY(-3px);
}

.like-content .btn-secondary .fa {
   margin-right: 5px;
}

.animate-like {
   animation-name: likeAnimation;
   animation-iteration-count: 1;
   animation-fill-mode: forwards;
   animation-duration: 0.65s;
}

@
keyframes likeAnimation { 0% {
   transform: scale(30);
}

100








%
{
transform








:








scale






(








1








)






;
}
}
html {
   font-family: "Noto Sans KR", sans-serif;
}

/* 노말라이즈 */
body, ul, li, h1, h2, h3, h4, h5, h6 {
   margin: 0;
   padding: 0;
   list-style: none;
}

a:link {
   color: lightblue;
}

/* 라이브러리 */
.con {
   margin: 0 auto;
}

.img-box>img {
   width: 100%;
   display: block;
}

.row::after {
   content: "";
   display: block;
   clear: both;
}

.cell {
   float: left;
   box-sizing: border-box;
}

.cell-right {
   float: right;
   box-sizing: border-box;
}

.margin-0-auto {
   margin: 0 auto;
}

.block {
   display: block;
}

.inline-block {
   display: inline-block;
}

.text-align-center {
   text-align: center;
}

.line-height-0-ch-only {
   line-height: 0;
}

.line-height-0-ch-only>* {
   line-height: normal;
}

.relative {
   position: relative;
}

.absolute-left {
   position: absolute;
   left: 0;
}

.absolute-right {
   position: absolute;
   right: 0;
}

.absolute-middle {
   position: absolute;
   top: 50%;
   transform: translateY(-50%);
}

/* 커스텀 */
/* 반응형 레이아웃 */
.con {
   max-width: 950px;
}

.con-min-width {
   min-width: 320px;
}

.top-menu a {
   text-decoration: none;
   color: gray;
   font-weight: bold;
   font-size: 1.2rem;
}

html, body {
   overflow-x: hidden;
}

.table-common>table {
   width: 100%;
   border-collapse: collapse;
}

.table-common .btn-box {
   text-align: center;
}

.table-common>table th, .table-common>table td {
   border: 1px solid black;
   padding: 10px;
}

.article-list table {
   border: none;
   border-top: 2px solid lightgray;
   border-bottom: 2px solid lightgray;
}

.article-list>table th, .article-list>table td {
   border: none;
}

.article-list>table td {
   border-bottom: 1px solid lightgray;
}

.article-list>table thead {
   border-bottom: 2px solid lightgray;
   background-color: #F5F5F5;
}

.article-detail {
   border: 2px solid lightgray;
}

.article-detail>table {
   border: none;
   width: calc(100% - 100px);
}

.article-detail>table th, .article-detail>table td {
   border: none;
}

.article-detail>table tr:not(:last-child) {
   border-bottom: 1px solid lightgray;
}

.article-detail>table tr:not(.article-body), .article-detail>table tr:not(.article-body)>td
   {
   height: 20px;
   font-size: 0.8rem;
}

.article-detail>table tr.article-title>td {
   height: 40px;
   font-weight: bold;
   font-size: 1.2rem;
}

.article-detail>table td:last-child {
   padding-right: 100px;
}

.article-detail>.article-writer {
   width: 100px;
   height: 102px;
   background-color: lightgray;
   border-bottom: 1px solid lightgray;
   text-align: center;
}

.article-detail>.article-writer .writer-icon {
   margin: 0 auto;
   background-color: white;
   width: 80px;
   height: 80px;
   border-radius: 50%;
}

.reply {
   margin-top: 20px;
   border: 2px solid lightgray;
   padding: 15px;
   box-sizing: border-box;
}

.reply-form {
   padding: 10px;
}

.reply-form>form input[type="text"] {
   width: 200px;
}

.reply-form>form textarea {
   width: calc(100% - 100px);
   min-height: 40px;
}

.reply-form>form input[type="submit"] {
   width: 80px;
   height: 40px;
   transform: translatey(-40%);
}

.reply-form>form>div:not(:last-child) {
   margin-bottom: 5px;
}

.reply-list>table {
   border: none;
}

.reply-list>table th {
   display: none;
}

.reply-list>table td {
   border: none;
}

.reply-list>table tr:nth-child(2n+1) {
   background-color: rgba(0, 0, 0, 0.06);
}

.reply-list>table td:first-child {
   font-weight: bold;
}

.reply-list>table td:first-child::after {
   content: " : ";
   font-weight: bold;
}

section.heading-page {
   background-image: url(headercss/images/freeBoardHeader.jpg);
   background-position: center center;
   background-repeat: no-repeat;
   background-size: cover;
   padding-top: 230px;
   padding-bottom: 110px;
   text-align: center;
}
</style>
</head>
<body>
   <section class="heading-page header-text" id="top">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <h1 class="display-4" style="font-weight: lighter; color: white">자유게시판
                  상세</h1>
            </div>
         </div>
      </div>
   </section>
   <div align="center">
      <br> <br>
      <section class="article-detail table-common con row">
         <div class="article-writer cell">
            <div class="writer-icon"></div>
            <span>${freeBoard.memberId }</span>
         </div>
         <table class="cell" border="1">
            <colgroup>
               <col width="100px">
            </colgroup>
            <tbody>
               <tr class="article-title">
                  <th>[${freeBoard.freeBoardId }] 제목</th>
                  <td colspan="3">${freeBoard.freeBoardTitle }</td>
                  <th>작성일</th>
                  <td>${freeBoard.freeBoardDate }</td>
               </tr>
               <tr class="article-info">
                  <th>조회수</th>
                  <td>${freeBoard.freeBoardHit }</td>
                  <th>좋아요</th>
                  <td>${freeBoard.freeBoardLike }</td>
               </tr>
               <tr class="article-body">
                  <td colspan="10" height="500px;">${freeBoard.freeBoardSubject }</td>
               </tr>
            </tbody>
         </table>
      </section>
      <div class="like-content">
         <button class="btn-secondary like-review">
            <i class="fa fa-heart" aria-hidden="true" onclick="subCall('L')"></i>
            Like
         </button>

      </div>
      <br>
      <div>
         <c:if test="${freeBoard.memberId eq memberId}">
            <button type="button" onclick="subCall('E')"
               class="btn btn-outline-dark">수정</button>
               &nbsp;&nbsp;
               <button type="button" onclick="subCall('D')"
               class="btn btn-outline-dark">삭제</button>
         </c:if>
         &nbsp;&nbsp;
         <button type="button" onclick="location.href='freeBoard.do'"
            class="btn btn-outline-dark">목록</button>
      </div>
      <br>
      <div>
         <form id="fbs" method="post">
            <input type="hidden" id="deleteFreeBoardId" name="deleteFreeBoardId"
               value="${freeBoard.freeBoardId}">
         </form>
      </div>
      <div class="con reply">
         <h1 class="">댓글 입력</h1>
         <section class="reply-form">
            <form id="fbs2" action="commentInsert.do">
               <div align="left">
                  <c:if test="${not empty memberId}">
                     <textarea placeholder="내용을 입력하세요." id="commentSubject"
                        name="commentSubject"></textarea>
                     <input type="submit" onclick="subCall2('C')"
                        class="btn btn-outline-dark">
                     <input type="hidden" id="freeBoardId" name="freeBoardId"
                        value="${freeBoard.freeBoardId}">
                     <input type="hidden" id="memberId" name="memberId"
                        value="${freeBoard.memberId}">
                  </c:if>
                  <c:if test="${empty memberId}">
                     <textarea placeholder="로그인해야 작성 가능합니다." readonly="readonly"
                        style="width: 895px"></textarea>
                  </c:if>
               </div>
            </form>
         </section>

         <h1 class="">댓글 목록</h1>
         <section class="reply-list table-common">
            <table border="1">
               <colgroup>
                  <col width="100px">
               </colgroup>
               <thead>
                  <tr>
                     <th>작성자</th>
                     <th>댓글내용</th>
                     <th>작성일</th>
                  </tr>
               </thead>
					<tbody>
						<c:if test="${empty cLists }">
							<td colspan="6">댓글이 존재하지 않습니다.</td>
						</c:if>
						<c:if test="${not empty cLists && freeBoard.memberId != memberId}">
							<c:forEach items="${cLists }" var="c">
								<tr>
									<td>${c.memberId }</td>
									<td>${c.freeBoardCommentSubject }</td>
									<td>${c.freeBoardCommentDate }</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${not empty cLists && freeBoard.memberId eq memberId}">
							<c:forEach items="${cLists }" var="c">
								<tr>
									<td>${c.memberId }</td>
									<td>${c.freeBoardCommentSubject }</td>
									<td>${c.freeBoardCommentDate }</td>
									<td><button class="btn btn-outline-dark" onclick="">삭제</button></td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
            </table>
         </section>
      </div>
      <br> <br> <br> <br>
   </div>
   <script type="text/javascript">
      function subCall(str) {
         if (str == 'E') {
            fbs.action = "freeBoardEditForm.do"; // 수정
         } else if (str == 'D') {
            fbs.action = "freeBoardDelete.do"; // 삭제
         } else if (str == 'L') {
            fbs.action = "freeBoardUpdateLike.do"; // 좋아요 증가.
            alert("좋아요!");
         }

         fbs.submit();
      }
      function subCall2(str) {
         if (str == 'C') {
            // 댓글 작성
         }
         fbs.submit();
      }
   </script>
</body>
</html>