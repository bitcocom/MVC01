<%--
  Created by IntelliJ IDEA.
  User: GSM
  Date: 2023-04-10
  Time: 오후 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
</head>
<body>

<!-- Jumbotron -->
<div class="jumbotron jumbotron-fluid jumbotron-custom" style="background-color: darkgrey;">
    <jsp:include page="header.jsp"/>
</div>

<!-- Space between Nav and Cards -->
<div class="mt-4"></div>
<!-- Three Columns -->
    <div class="row">
        <div class="col-lg-2">
           <jsp:include page="left.jsp"/>
        </div>

        <!-- Card 2 -->
        <div class="col-lg-8">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">과정리스트</h4>
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>구분</th>
                            <th>과정명</th>
                            <th>교육기간</th>
                            <th>담임</th>
                            <th>TA</th>
                            <th>교육실</th>
                            <th>승인인원</th>
                            <th>시작인원(+)</th>
                            <th>현인원</th>
                            <th>중탈인원(-)</th>
                            <th>수료인원</th>
                            <th>취업인원</th>
                            <th>수료(%)</th>
                            <th>취업(%)</th>
                            <th>수정</th>
                            <th>삭제</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>혁신</td>
                            <td>인공지능과정</td>
                            <td>2022-11-24~2023-01-31</td>
                            <td>박매일</td>
                            <td>박솔리</td>
                            <td>H01</td>
                            <td>25</td>
                            <td>25</td>
                            <td>25</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td>0</td>
                            <td><button type="button" class="btn btn-warning">수정</button></td>
                            <td><button type="button" class="btn btn-danger">삭제</button></td>
                        </tr>
                         </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
          <jsp:include page="right.jsp"/>
        </div>
    </div>

   <!-- Footer -->
   <div class="mt-4"></div>
   <jsp:include page="footer.jsp"/>
</body>
</html>
