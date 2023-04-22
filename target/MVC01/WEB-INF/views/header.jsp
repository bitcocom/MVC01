<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: GSM
  Date: 2023-04-11
  Time: 오후 7:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="#">SAF(훈련관리시스템)</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav mr-auto nav-menu-1">
        <li class="nav-item">
          <span class="navbar-text mr-3" style="color: #ffffff;">정부사업 사업선택</span>
          <select class="custom-select mr-3" id="govProject" style="width:auto;">
            <option selected>사업 선택</option>
            <option value="1">전체운영과정</option>
            <option value="2">혁신인재양성사업</option>
            <option value="3">4차산업혁명인재양성사업</option>
            <option value="4">청년취업아카데미</option>
            <option value="5">디지털 핵심실무인재양성사업</option>
          </select>
        </li>
      </ul>
      <ul class="navbar-nav ml-lg-auto nav-menu-2">
        <li class="nav-item active">
          <a class="nav-link" href="#">교육운영관리</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<c:url value='/courseRegister'/>">교육과정등록</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">멘토등록</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">장비관리</a>
        </li>
      </ul>
    </div>
  </nav>
</div>
