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
    <title>sku</title>
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script>
        $(function(){
            $.getJSON("json/class_1.js",function(json){
                console.log(json)
                $(json).each(function(i,data){
                    $("#class1_select_id").append('<option value="'+data.id+'">'+data.flmch1+'</option>')
                })
            })
        })
        //异步加载class2和品牌
        function load_class2_tm(flbh1) {
            //加载class2
            $.getJSON("json/class_2_"+flbh1+".js", function(json){
                //清空 ：empty()
                $("#class2_select_id").empty();
                //dom对象如何转换为jquery对象  $()
                $(json).each(function(i,data){
                    $("#class2_select_id").append('<option value="'+data.id+'">'+data.flmch2+'</option>');
                })
            });
        }

        function toAddSkuPage(){
            var flbh1=$("#class1_select_id").val();
            var flbh2=$("#class2_select_id").val();
            location.href="<%=request.getContextPath()%>/toAddSkuPage.do?flbh1="+flbh1+"&flbh2="+flbh2;
        }

    </script>
</head>
<body>

    sku
    <hr>
    一级：
        <select id="class1_select_id" onchange="load_class2_tm(this.value)">
            <option>请选择</option>
        </select>

    二级：
    <select id="class2_select_id">
        <option>请选择</option>
    </select>

    <hr>
    <a href="javascript:toAddSkuPage()">添加</a>
    <%--<a href="toAddSpuPage.do">添加</a>--%>
</body>
</html>
