<%@ include file="top.jsp" %>

<h3>Edit Member</h3>
<form action="edit_ok.jsp" method="post">
    <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
    <div class="mb-3">
        <label>Name</label>
        <input type="text" name="name" class="form-control" value="<%= request.getParameter("name") %>">
    </div>
    <div class="mb-3">
        <label>Birthdate</label>
        <input type="date" name="birthdate" class="form-control" value="<%= request.getParameter("birthdate") %>">
    </div>
    <div class="mb-3">
        <label>Email</label>
        <input type="email" name="email" class="form-control" value="<%= request.getParameter("email") %>">
    </div>
    <div class="mb-3">
        <label>Admission Year</label>
        <input type="number" name="admissionYear" class="form-control" value="<%= request.getParameter("admissionYear") %>">
    </div>
    <div class="mb-3">
        <label>Instrument</label>
        <input type="text" name="instrument" class="form-control" value="<%= request.getParameter("instrument") %>">
    </div>
    <button type="submit" class="btn btn-primary">Update</button>
</form>

<%@ include file="bottom.jsp" %>