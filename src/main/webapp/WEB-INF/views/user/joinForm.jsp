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
            <form>
                <div class="mb-3 mt-3">
                    <label for="username" class="form-label"><strong>사용자</strong></label>
                    <input type="username" class="form-control" id="username" placeholder="Enter username" name="username">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label"><strong>비밀번호</strong></label>
                    <input type="password" class="form-control" id="password" placeholder="Enter password" name="pswd">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label"><strong>이메일</strong></label>
                    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                </div>
            </form>
        <button id="btn-save" class="btn btn-primary">회원가입 완료</button>
        </div>
    </div>
</div>
<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>