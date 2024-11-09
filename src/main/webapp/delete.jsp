<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Confirmation</title>
</head>
<body>
<h2>Are you sure you want to delete this entry?</h2>
<form action="delete_ok.jsp" method="POST">
    <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
    <button type="submit">Yes, Delete</button>
    <a href="list.jsp">Cancel</a>
</form>
</body>
</html>
