<%@ include file="top.jsp" %>

<h3>회원 추가 완료</h3>
<p>이름: <%= request.getParameter("name") %></p>
<p>생일: <%= request.getParameter("birthdate") %></p>
<p>이메일: <%= request.getParameter("email") %></p>
<p>입학년도: <%= request.getParameter("admissionYear") %></p>
<p>악기: <%= request.getParameter("instrument") %></p>

<a href="list.jsp" class="btn btn-primary">목록으로</a>

<%@ include file="bottom.jsp" %>