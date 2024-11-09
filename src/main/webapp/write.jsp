<%@ include file="top.jsp" %>

<h3>Add Member</h3>
<form action="write_ok.jsp" method="post">
    <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input type="text" id="name" name="name" class="form-control" required>
    </div>
    <div class="mb-3">
        <label for="birthdate" class="form-label">Birthdate</label>
        <input type="date" id="birthdate" name="birthdate" class="form-control" required>
    </div>
    <div class="mb-3">
        <label for="email" class="form-label">Email</label>
        <input type="email" id="email" name="email" class="form-control" required>
    </div>
    <div class="mb-3">
        <label for="admissionYear" class="form-label">Admission Year</label>
        <input type="number" id="admissionYear" name="admissionYear" class="form-control" min="1900" max="2024" required>
    </div>
    <div class="mb-3">
        <label for="instrument" class="form-label">Instrument</label>
        <select id="instrument" name="instrument" class="form-control" required>
            <option value="">Select</option>
            <option value="Piano">Piano</option>
            <option value="Guitar">Guitar</option>
            <option value="Violin">Violin</option>
            <option value="Flute">Flute</option>
            <option value="Drum">Drum</option>
        </select>
    </div>
    <button type="submit" class="btn btn-success">Add</button>
</form>

<%@ include file="bottom.jsp" %>