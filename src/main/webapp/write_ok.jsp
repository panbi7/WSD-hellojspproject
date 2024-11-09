<%@ include file="top.jsp" %>

<div class="container mt-4">
    <h3 class="mb-4">회원 추가 완료</h3>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">입력된 회원 정보</h5>
            <p class="card-text"><strong>이름:</strong> <%= request.getParameter("name") %></p>
            <p class="card-text"><strong>생일:</strong> <%= request.getParameter("birthdate") %></p>
            <p class="card-text"><strong>이메일:</strong> <%= request.getParameter("email") %></p>
            <p class="card-text"><strong>입학년도:</strong> <%= request.getParameter("admissionYear") %></p>
            <p class="card-text"><strong>악기:</strong> <%= request.getParameter("instrument") %></p>
        </div>
    </div>
    <a href="list.jsp" class="btn btn-primary mt-3">목록으로</a>
</div>

<%@ include file="bottom.jsp" %>