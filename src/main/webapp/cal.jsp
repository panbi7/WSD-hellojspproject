<%--
  Created by IntelliJ IDEA.
  User: serendi
  Date: 11/7/24
  Time: 10:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="user" class="org.example.hellojspproject.User" />

<jsp:setProperty property="userid" name="user" value="홍길동" />

사용자는 <jsp:getProperty property="userid" name="user" />님입니다.
</body>
</html>
