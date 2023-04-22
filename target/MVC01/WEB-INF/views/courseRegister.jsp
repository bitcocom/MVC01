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
<sec:authorize access="!isAuthenticated()">
    <script>
        window.onload = function() {
            console.log('User is not authenticated');
            alert('로그인을 하세요.');
            window.location.href = "<c:url value='/'/>"; // 로그인 페이지로 리다이렉트
        }
    </script>
</sec:authorize>

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
                    <h4 class="card-title">
                        <sec:authorize access="isAuthenticated()">
                            <h4 class="card-title">교육과정등록</h4>
                        </sec:authorize>
                    </h4>
                        <form id="form1" name="form1">
                            <input type="hidden" name="mday" value="" id="mday">

                                        <table  class='table table-bordered'>
                                            <tr>
                                                <td>사업분류</td>
                                                <td>
                                                    <div class='col-xs-8'><select id='lcode' name='lcode' class='custom-select'>
                                                        <option value='1'>혁신성장인재양성</option>
                                                        <option value='2'>4차산업혁명인력양성</option>
                                                        <option value='3'>청년취업아카데미</option>
                                                        <option value='4'>디지털 핵심 실무인재 양성사업</option>
                                                    </select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>과정명</td>
                                                <td><div class='col-xs-8'><input type='text' name='mname' size='80' class='form-control input-sm'></div></td>
                                            </tr>
                                            <tr>
                                                <td>교육기간</td>
                                                <td>
                                                    <div class='col-xs-3' style="display: inline-block;">
                                                        <input type='date' id="mdays1" name='mdays1' class='form-control input-sm'>
                                                    </div>
                                                    <div class='col-xs-3' style="display: inline-block;">
                                                        <input type='date' class='form-control input-sm' name='mdays2' id="mdays2">
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>승인인원</td>
                                                <td><div class='col-xs-2'><input type='text' name='mold' size='5' class='form-control input-sm'></div></td>
                                            </tr>
                                            <tr>
                                                <td>시작인원(+)</td>
                                                <td><div class='col-xs-2'><input type='text' name='msu' size='5' class='form-control input-sm'></div></td>
                                            </tr>
                                            <tr>
                                                <td>담임교사</td>
                                                <td><div class='col-xs-4'><input type='text' name='mmaster' class='form-control input-sm'></div></td>
                                            </tr>
                                            <tr>
                                                <td>TA</td>
                                                <td><div class='col-xs-4'><input type='text' name='mta' class='form-control input-sm'></div></td>
                                            </tr>
                                            <tr>
                                                <td>교육실</td>
                                                <td><div class='col-xs-4'><input type='text' name='mlocation' class='form-control input-sm'></div></td>
                                            </tr>
                                            <tr>
                                                <td align='center' colspan="2">
                                                    <input type='button' class='btn btn-primary btn-sm' value='교육등록' onclick='gogo()'>
                                                    <input type='button' class='btn btn-danger btn-sm' value='취소'>
                                                </td>
                                            </tr>
                                        </table>
                        </form>

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
