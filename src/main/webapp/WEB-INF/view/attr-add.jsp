<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/29
  Time: 11:31
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
    <title>标题</title>
    <script src="/js/jquery-1.11.3.min.js"></script>

</head>
<body>
    flbh2:${flbh2}--
    <hr>
    <center>
        <form action="saveAttr.do" method="post">
            <input type="hidden" name="flbh2" value="${flbh2}">
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <td>属性名:<input type="text" name="attrList[0].shxmMch"></td>
                </tr>
                <tr>
                    <td>属性值：<input type="text" name="attrList[0].valueList[0].shxzh"></td>
                    <td>单位：<input type="text" name="attrList[0].valueList[0].shxzhMch"></td>
                </tr>
                <tr>
                    <td>属性值：<input type="text" name="attrList[0].valueList[1].shxzh"></td>
                    <td>单位：<input type="text" name="attrList[0].valueList[1].shxzhMch"></td>
                </tr>
            </table>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <td>属性名:<input type="text" name="attrList[1].shxmMch"></td>
                </tr>
                <tr>
                    <td>属性值：<input type="text" name="attrList[1].valueList[0].shxzh"></td>
                    <td>单位：<input type="text" name="attrList[1].valueList[0].shxzhMch"></td>
                </tr>
                <tr>
                    <td>属性值：<input type="text" name="attrList[1].valueList[1].shxzh"></td>
                    <td>单位：<input type="text" name="attrList[1].valueList[1].shxzhMch"></td>
                </tr>
            </table>
            <input type="submit">
        </form>
    </center>
    <script>

    </script>
</body>
</html>
