<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: kzh
  Date: 13-12-13
  Time: 下午4:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <%@include file="/component/header.jsp" %>
</head>
<body>
<s:form id="form" action="blog" method="post">
    <s:hidden name="blog.id" id="id"/>
    <table>
        <tr>
            <td>
                <s:textfield name="blog.title"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:textarea name="blog.content"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:textfield name="blog.state"/>
            </td>
        </tr>
        <tr>
            <td>
                <s:submit method="save" value="保存"/>
                <s:if test="blog.state=='create' || blog.state=='fine'">
                    <s:submit method="edit" value="修改"/>
                    <a href="#" onclick="edit()">修改</a>
                </s:if>
            </td>
        </tr>
    </table>
</s:form>

<script type="text/javascript">
    function edit() {
        var result;
        $.ajax({
            type: "get",
            url: "blog!queryState.do?blog.id=" + id + "&ran=" + Math.random(),
            async: false,
            success: function (data) {
                result = data;
                /*if ($.trim(data) != "fine") {
                 alert("已经锁定，不可编辑");
                 }*/
            }
        });

        if (result != "fine") {
            alert("已经锁定，不可编辑");
            return;
        }
        var form = $("#form");
        form.attr("action", "blog!save.do");
        form.submit();
        window.parent.closePopForm('editFrame');
    }
</script>
</body>
</html>