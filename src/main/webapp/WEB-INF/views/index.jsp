<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="layout/header.jsp"%>

<div class="container-fluid">
    <div class="row flex-nowrap">
        <div class="col-3 bd-sidebar">
            <ul id="navbar" class="nav">
                <br/>
                <li><a href="#">Side 1</a></li>
                <li><a href="#">Side 2</a></li>
                <li><a href="#">Side 3</a></li>
                <li><a href="#">Side 4</a></li>
            </ul>
            <br>
        </div>

        <div id="mArticle" class="article_skin">
            <c:forEach var="board" items="${boards.content}">
            <div class="card w-100 p-1" >
                <div class="card-body p-1">
                    <a href="/board/${board.id}" class="link_post">
                        <div class="b-title">
                            <h4 class="card-title m-2"><strong>${board.title}</strong></h4>
                        </div>
                        <div >
                            <p class="txt_post">${board.content}</p>
                        </div>
                    </a>
                    <div class="detail_info">
                        <a href="#" class="link_cate p-2">카테고리</a>
                        <span class="txt_bar">|</span>
                        <span class="txt_date">${board.createTime}</span>
                    </div>
                </div>
            </div>
            </c:forEach>

            <%--  처음  --%>
            <ul class="pagination justify-content-center">
                <c:choose>
                    <c:when test="${boards.first}">
                        <li class="page-item disabled"><a class="page-link" href="?page=0">처음</a></li>
                        <li class="page-item disabled"><a class="page-link" href="?page=${boards.number-1}">◀</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item"><a class="page-link" href="?page=0">처음</a></li>
                        <li class="page-item"><a class="page-link" href="?page=${boards.number-1}">◀</a></li>
                    </c:otherwise>
                </c:choose>

                <%--  페이지 그룹  --%>
                <c:forEach begin="${startBlockPage}" end="${endBlockPage}" var="i">
                    <c:choose>
                        <c:when test="${boards.pageable.pageNumber+1 == i}">
                            <li class="page-item disabled"><a class="page-link" href="?page=${i-1}">${i}</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item"><a class="page-link" href="?page=${i-1}">${i}</a></li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>

                <%--  마지막  --%>
                <c:choose>
                    <c:when test="${boards.last}">
                        <li class="page-item disabled"><a class="page-link" href="?page=${boards.number+1}">▶️️</a></li>
                        <li class="page-item disabled"><a class="page-link" href="?page=${boards.totalPages-1}">마지막</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item"><a class="page-link" href="?page=${boards.number+1}">▶️️</a></li>
                        <li class="page-item"><a class="page-link" href="?page=${boards.totalPages-1}">마지막</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>

    </div>
</div>
<%@ include file="layout/footer.jsp"%>