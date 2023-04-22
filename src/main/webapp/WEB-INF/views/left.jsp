<%--
  Created by IntelliJ IDEA.
  User: GSM
  Date: 2023-04-10
  Time: 오후 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div class="card" style="min-height: 500px; max-height: 1000px">
    <div class="card-body">
        <sec:authorize access="!isAuthenticated()">
         <h4 class="card-title">GUSET</h4>
         <p class="card-text">회원님 Welcome!</p>
            <form action="<c:url value='/login'/>" method="post">
                <div class="form-group">
                    <label for="username">아이디</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="아이디를 입력하세요">
                </div>
                <div class="form-group">
                    <label for="password">비밀번호</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력하세요">
                </div>
                <button type="submit" class="btn btn-secondary form-control btn-sm">로그인</button>
            </form>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <h4 class="card-title"><sec:authentication property="principal.member.name" /></h4>
            <p class="card-text">회원님 Welcome!</p>
            <form action="<c:url value='/logout'/>" method="post">
                <button type="submit" class="btn btn-secondary form-control btn-sm">로그아웃</button>
            </form>
        </sec:authorize>
    </div>
</div>