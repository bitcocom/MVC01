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

        <!-- Card 1 -->
        <div class="col-lg-2">
           <jsp:include page="left.jsp"/>
        </div>

        <!-- Card 2 -->
        <div class="col-lg-8">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">제목</h4>
                    여기에 콘텐츠를 만들면됩니다.
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