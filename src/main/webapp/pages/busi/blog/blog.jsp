<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: kzh
  Date: 13-12-13
  Time: 下午4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<a href="blog!create.do">博客</a>
<table>

    <s:iterator value="blogList" id="blog">
        <tr>
            <td><a href="blog!view.do?blog.id=${blog.id}">${blog.title}</a></td>
        </tr>
    </s:iterator>
</table>
</body>
</html>