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

</head>
<body>
<s:form action="blog" method="post">
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

                    <%--<a href="blog!edit.do?blog.id=${blog.id}">修改</a>--%>
                </s:if>
            </td>
        </tr>
    </table>
</s:form>
</body>
</html>