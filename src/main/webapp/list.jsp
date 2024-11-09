<%@ page import="org.example.hellojspproject.MemberDAO" %>
<%@ page import="org.example.hellojspproject.Member" %>
<%@ include file="top.jsp" %>

<h3>Member List</h3>
<table class="table table-bordered">
    <thead>
    <tr>
        <th>#</th>
        <th>Name</th>
        <th>Birthdate</th>
        <th>Email</th>
        <th>Admission Year</th>
        <th>Instrument</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <%
        // MemberDAO 인스턴스를 생성하여 모든 회원 데이터 가져오기
        MemberDAO memberDAO = new MemberDAO();
        List<Member> members = memberDAO.getAllMembers();

        // API에서 가져온 회원 데이터 표시
        for (Member member : members) {
    %>
    <tr>
        <td><%= member.getId() %></td>
        <td><%= member.getName() %></td>
        <td><%= member.getBirthdate() %></td>
        <td><%= member.getEmail() %></td>
        <td><%= member.getAdmissionYear() %></td>
        <td><%= member.getInstrument() %></td>
        <td>
            <a href="view.jsp?id=<%= member.getId() %>" class="btn btn-info btn-sm">View</a>
            <a href="edit.jsp?id=<%= member.getId() %>" class="btn btn-warning btn-sm">Edit</a>
            <button class="btn btn-danger btn-sm" onclick="deleteMember(<%= member.getId() %>)">Delete</button>
        </td>
    </tr>
    <% } %>
    </tbody>
</table>

<script>
    function deleteMember(id) {
        if (confirm("Are you sure you want to delete this member?")) {
            location.href = "delete_ok.jsp?id=" + id;
        }
    }
</script>

<%@ include file="bottom.jsp" %>