<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../layout/header.jsp"%>

<div class="container-fluid">
    <div class="row flex-nowrap">
        <div class="col-3 bd-sidebar">
            <ul id="navbar" class="nav">

            </ul>
            <br>
        </div>
        <div>
            <form action="/auth/loginProc" method="post">
                <div class="mb-3 mt-3">
                    <label for="username" class="form-label"><strong>아이디</strong></label>
                    <input type="username" class="form-control" id="username" placeholder="Enter username" name="username">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label"><strong>비밀번호</strong></label>
                    <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
                </div>
                <div class="form-check mb-3">
                    <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" name="remember"> 아이디 기억하기
                    </label>
                </div>
              <button class="btn btn-primary">로그인</button>
            </form>
        </div>
    </div>
</div>
<%@ include file="../layout/footer.jsp"%>