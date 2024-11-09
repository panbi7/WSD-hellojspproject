<%@ include file="top.jsp" %>

<h3>회원 추가</h3>
<form action="write_ok.jsp" method="post">
    <div class="mb-3">
        <label for="name" class="form-label">이름</label>
        <input type="text" id="name" name="name" class="form-control" required>
    </div>
    <div class="mb-3">
        <label for="birthdate" class="form-label">생일</label>
        <input type="date" id="birthdate" name="birthdate" class="form-control" required>
    </div>
    <div class="mb-3">
        <label for="email" class="form-label">이메일</label>
        <input type="email" id="email" name="email" class="form-control" required>
    </div>
    <div class="mb-3">
        <label for="admissionYear" class="form-label">입학년도</label>
        <input type="number" id="admissionYear" name="admissionYear" class="form-control" min="1900" max="2024" required>
    </div>
    <div class="mb-3">
        <label for="instrument" class="form-label">악기</label>
        <select id="instrument" name="instrument" class="form-control" required>
            <option value="">선택하세요</option>
            <option value="피아노">피아노</option>
            <option value="기타">기타</option>
            <option value="바이올린">바이올린</option>
            <option value="플루트">플루트</option>
            <option value="드럼">드럼</option>
            <!-- 필요시 다른 악기 추가 가능 -->
        </select>
    </div>
    <button type="submit" class="btn btn-success">추가</button>
</form>

<%@ include file="bottom.jsp" %>