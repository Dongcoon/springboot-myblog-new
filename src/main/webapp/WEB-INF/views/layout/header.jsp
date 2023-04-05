<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
    <sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Myblog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
    <link href="/css/style.css" rel="stylesheet">
</head>
<body>
<header class="navbar navbar-expand navbar-dark bg-dark bd-navbar">
    <a class="navbar-brand" href="/">Coon's home</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <c:choose>
        <c:when test="${empty principal}">
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active"><a class="nav-link" href="/auth/loginForm">로그인</a></li>
                <li class="nav-item"><a class="nav-link" href="/auth/joinForm">회원가입</a></li>
            </ul>
        </div>
        </c:when>
        <c:otherwise>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active"><a class="nav-link" href="/board/writeForm">글쓰기</a></li>
                    <li class="nav-item active"><a class="nav-link" href="#">회원정보</a></li>
                    <li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
                </ul>
            </div>
        </c:otherwise>
    </c:choose>
</header>
</body>
</html>