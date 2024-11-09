<%@ page import="org.example.hellojspproject.MemberDAO" %>
<%@ page import="org.example.hellojspproject.Member" %>
<%@ include file="top.jsp" %>

<%
    // Get the member ID from the request
    int memberId = Integer.parseInt(request.getParameter("id"));

    // Create an instance of MemberDAO and fetch the member details by ID
    MemberDAO memberDAO = new MemberDAO();
    Member member = memberDAO.getMemberById(memberId);

    if (member == null) {
%>
<p>Member not found.</p>
<%
} else {
%>

<h3>Member Details</h3>
<div class="container">
    <div class="card mt-4">
        <div class="card-body">
            <h5 class="card-title">Member Information</h5>
            <p class="card-text"><strong>ID:</strong> <%= member.getId() %></p>
            <p class="card-text"><strong>Name:</strong> <%= member.getName() %></p>
            <p class="card-text"><strong>Birthdate:</strong> <%= member.getBirthdate() %></p>
            <p class="card-text"><strong>Email:</strong> <%= member.getEmail() %></p>
            <p class="card-text"><strong>Admission Year:</strong> <%= member.getAdmissionYear() %></p>
            <p class="card-text"><strong>Instrument:</strong> <%= member.getInstrument() %></p>
        </div>
    </div>
    <a href="list.jsp" class="btn btn-primary mt-3">Back to List</a>
    <a href="edit.jsp?id=<%= member.getId() %>" class="btn btn-warning mt-3">Edit</a>
</div>

<%
    }
%>

<%@ include file="bottom.jsp" %>