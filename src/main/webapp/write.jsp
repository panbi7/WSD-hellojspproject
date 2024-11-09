<%@ include file="top.jsp" %>

<h3>회원 추가</h3>
<form action="write_ok.jsp" method="post">
    <div class="mb-3">
        <label>이름</label>
        <input type="text" name="name" class="form-control" required>
    </div>
    <div class="mb-3">
        <label>생일</label>
        <input type="date" name="birthdate" class="form-control" required>
    </div>
    <div class="mb-3">
        <label>이메일</label>
        <input type="email" name="email" class="form-control" required>
    </div>
    <div class="mb-3">
        <label>입학년도</label>
        <input type="number" name="admissionYear" class="form-control" required>
    </div>
    <div class="mb-3">
        <label>악기</label>
        <input type="text" name="instrument" class="form-control" required>
    </div>
    <button type="submit" class="btn btn-success">추가</button>
</form>

<%@ include file="bottom.jsp" %>
