<%--
  Created by IntelliJ IDEA.
  User: GSM
  Date: 2023-04-10
  Time: 오후 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

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

        <!-- Card 1 -->
        <div class="col-lg-2">
          <jsp:include page="left.jsp"/>
        </div>

        <!-- Card 2 -->
        <!-- Card 2 -->
        <!-- Card 2 -->
        <div class="col-lg-8">
            <div class="card">
                <div class="card-body">

                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#notices" role="tab">공지사항</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#education" role="tab">교육정보</a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane active" id="notices" role="tabpanel">
                            <!-- 공지사항 게시판 테이블 -->
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>작성일</th>
                                </tr>
                                </thead>
                                <tbody>
                                <!-- 예시 데이터 -->
                                <tr>
                                    <td>1</td>
                                    <td>공지사항 예시</td>
                                    <td>홍길동</td>
                                    <td>2023-04-12</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="education" role="tabpanel">
                            <!-- 교육정보 게시판 테이블 -->
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>교육명</th>
                                    <th>교육기관</th>
                                    <th>교육기간</th>
                                    <th>지원부처</th>
                                </tr>
                                </thead>
                                <tbody>
                                <!-- 예시 데이터 -->
                                <tr>
                                    <td>1</td>
                                    <td>교육정보 예시</td>
                                    <td>예시 교육기관</td>
                                    <td>2023-04-12 ~ 2023-04-20</td>
                                    <td>지원부처 예시</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Card 3 -->
        <div class="col-lg-2">
          <jsp:include page="right.jsp"/>
        </div>

    </div>

   <!-- Footer -->
   <div class="mt-4"></div>
   <jsp:include page="footer.jsp"/>
</body>
</html>