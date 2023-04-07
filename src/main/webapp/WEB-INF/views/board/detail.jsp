<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../layout/header.jsp"%>
<div class="container-fluid">
    <div class="row flex-nowrap">
        <div class="col-3 bd-sidebar">
            <ul id="navbar" class="nav">

            </ul>
            <br>
        </div>
        <div class="container p-3 m-1">
            <div class="b-detail">
                <br/><br/>
                <button class="btn btn-secondary" onclick="history.back()">돌아가기</button>
                    <c:if test="${board.user.id == principal.user.id}">
                        <a class="btn btn-warning" href="/board/${board.id}/updateForm">수정</a>
                        <a id="btn-delete" class="btn btn-danger">삭제</a>
                    </c:if>
            </div>
            <div class="b-detail">
                글번호:<span id="id">${board.id}</span>&nbsp
                작성자:<span><i>${board.user.username}</i></span>&nbsp
                작성시간:<span>${board.createTime}</span>
            </div>
            <div class="b-detail">
                <h1>${board.title}</h1>
                <hr/>
            </div>
            <div class="b-detail b-content">
                <p>${board.content}</p>
            </div>
            <div class="b-detail">
                <hr/>
                <span>
                        <input type="text" class="form-control" placeholder="댓글작성">
                        <button type="button" id="btn-reply-save" class="btn btn-primary">등록</button>
                </span>
            </div>
        </div>

    </div>
</div>
<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp"%>