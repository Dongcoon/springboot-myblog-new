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
            <div class="list_title">
                <h2 id="dkBody" class="tit_skin"><span class="screen_out">목록</span><span class="txt_title">분류 전체보기 (10)</span></h2>
            </div>
            <div class="list_content">
                <a href="#" class="link_post">
                    <strong class="tit_post">제목1</strong>
                    <p class="txt_post">내용1</p>
                </a>
                <div class="detail_info">
                    <a href="#" class="link_cate">개발/BE(Back-End)</a>
                    <span class="txt_bar">|</span>
                    <span class="txt_date">2023. 3. 31. 10:33</span>
                </div>
            </div>
            <div class="list_content">
                <a href="#" class="link_post">
                    <strong class="tit_post">제목2</strong>
                    <p class="txt_post">내용2</p>
                </a>
                <div class="detail_info">
                    <a href="#" class="link_cate">개발/BE(Back-End)</a>
                    <span class="txt_bar">|</span>
                    <span class="txt_date">2023. 3. 31. 10:33</span>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="layout/footer.jsp"%>