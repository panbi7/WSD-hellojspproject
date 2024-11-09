<%@ include file="top.jsp" %>

<h3>회원 수정</h3>
<form action="edit_ok.jsp" method="post">
    <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
    <div class="mb-3">
        <label>이름</label>
        <input type="text" name="name" class="form-control" value="기존 이름">
    </div>
    <div class="mb-3">
        <label>생일</label>
        <input type="date" name="birthdate" class="form-control" value="기존 생일">
    </div>
    <div class="mb-3">
        <label>이메일</label>
        <input type="email" name="email" class="form-control" value="기존 이메일">
    </div>
    <div class="mb-3">
        <label>입학년도</label>
        <input type="number" name="admissionYear" class="form-control" value="기존 입학년도">
    </div>
    <div class="mb-3">
        <label>악기</label>
        <input type="text" name="instrument" class="form-control" value="기존 악기">
    </div>
    <button type="submit" class="btn btn-primary">수정</button>
</form>

<%@ include file="bottom.jsp" %>
