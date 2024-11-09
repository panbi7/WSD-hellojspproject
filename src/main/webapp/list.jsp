<%@ include file="top.jsp" %>

<h3>회원 목록</h3>
<table class="table table-bordered">
    <thead>
    <tr>
        <th>#</th>
        <th>이름</th>
        <th>생일</th>
        <th>이메일</th>
        <th>입학년도</th>
        <th>악기</th>
        <th>메뉴</th>
    </tr>
    </thead>
    <tbody>
    <%
        // Mock 데이터 생성
        String[][] members = {
                {"1", "김철수", "1990-01-01", "chulsoo@example.com", "2015", "피아노"},
                {"2", "이영희", "1992-02-02", "younghee@example.com", "2016", "기타"}
        };
        for (String[] member : members) {
    %>
    <tr>
        <td><%= member[0] %></td>
        <td><%= member[1] %></td>
        <td><%= member[2] %></td>
        <td><%= member[3] %></td>
        <td><%= member[4] %></td>
        <td><%= member[5] %></td>
        <td>
            <a href="view.jsp?id=<%= member[0] %>" class="btn btn-info btn-sm">보기</a>
            <a href="edit.jsp?id=<%= member[0] %>" class="btn btn-warning btn-sm">수정</a>
            <button class="btn btn-danger btn-sm" onclick="deleteMember(<%= member[0] %>)">삭제</button>
        </td>
    </tr>
    <% } %>
    </tbody>
</table>

<script>
    function deleteMember(id) {
        if (confirm("삭제하시겠습니까?")) {
            location.href = "delete_ok.jsp?id=" + id;
        }
    }
</script>

<%@ include file="bottom.jsp" %>