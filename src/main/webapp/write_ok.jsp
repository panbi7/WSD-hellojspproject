<%@ include file="top.jsp" %>

<h3>Member Added Successfully</h3>
<div class="container">
    <div class="card mt-4">
        <div class="card-body">
            <h5 class="card-title">Entered Member Information</h5>
            <p class="card-text"><strong>Name:</strong> <%= request.getParameter("name") %></p>
            <p class="card-text"><strong>Birthdate:</strong> <%= request.getParameter("birthdate") %></p>
            <p class="card-text"><strong>Email:</strong> <%= request.getParameter("email") %></p>
            <p class="card-text"><strong>Admission Year:</strong> <%= request.getParameter("admissionYear") %></p>
            <p class="card-text"><strong>Instrument:</strong> <%= request.getParameter("instrument") %></p>
        </div>
    </div>
    <a href="list.jsp" class="btn btn-primary mt-3">Back to List</a>
</div>

<%@ include file="bottom.jsp" %>