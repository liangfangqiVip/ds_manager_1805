<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2018/10/31
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>sku-add</title>
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script>
        $(function(){
            var flbh1=${flbh1};
            $.getJSON("json/tm_class_1_"+flbh1+".js",function(json){
                $("#tm_select_id").empty();
                $("#tm_select_id").append('<option>请选择</option>')
                $(json).each(function(i,data){
                    $("#tm_select_id").append('<option value="'+data.id+'">'+data.ppmch+'</option>')
                })
            })
        })
        function selectSpu(ppId) {
            var flbh2 = ${flbh2};
            $.post("selectSpu.do", {"flbh2": flbh2, "ppId": ppId}, function (json) {
                $("#spu_select_id").empty();
                $("#spu_select_id").append('<option>请选择</option>');
                $(json).each(function (i, spu) {
                    $("#spu_select_id").append('<option value="' + spu.id + '">' + spu.shpMch + '</option>');
                })
            })
        }
    </script>
</head>
<body>

    <form action="saveSku.do" method="post">
        <input type="hidden" value="${flbh1}" name="flbh1">
        <input type="hidden" value="${flbh2}" name="flbh2">
        品牌：
        <select id="tm_select_id" onchange="selectSpu(this.value)">
            <option>请选择</option>
        </select>
        商品：
        <select id="spu_select_id" name="shpId">
            <option>请选择</option>
        </select>
        <hr>
        <table>
            <c:forEach items="${attrList}" var="attr" varStatus="i">
                <tr>
                    <td>
                        <input type="hidden" name="skuValue[${i.index}].shxmId" value="${attr.id}">
                        ${attr.shxmMch}:
                    </td>
                    <c:forEach items="${attr.valueList}" var="spuVal">
                            <td>
                                <input type="radio" value="${spuVal.id}" name="skuValue[${i.index}].shxzhId">
                                ${spuVal.shxzh}${spuVal.shxzhMch}
                            </td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>
        sku名称:<input type="text" name="skuMch"><br>
        价格:<input type="text" name="jg"><br>
        库存:<input type="text" name="kc"><br>
        库存地址:<input type="text" name="kcdz"><br>
        <input type="submit">
    </form>
</body>
</html>
