<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/29
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>spu</title>
    <script src="/js/jquery-1.11.3.min.js"></script>
</head>
<body>
    <hr>
    <table border="1">
        <c:forEach items="${list}" var="attr" >
            <tr>
                <td>${attr.shxmMch}:</td>
                <c:forEach var="val" items="${attr.valueList}">
                    <td>${val.shxzh}&nbsp;${val.shxzhMch}</td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
