<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>
<!DOCTYPE html>
<head>
    <title>Delete Confirmation</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row justify-content-center mt-5">
        <div class="col-md-6 text-center">
            <h2>정말로 이 항목을 삭제하시겠습니까?</h2>
            <form action="delete_ok.jsp" method="POST" class="mt-4">
                <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
                <button type="submit" class="btn btn-danger me-2">예, 삭제</button>
                <a href="list.jsp" class="btn btn-secondary">취소</a>
            </form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>