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
        // Mock data for demonstration purposes
        String[][] members = {
                {"1", "Kim Chulsoo", "1990-01-01", "chulsoo@example.com", "2015", "Piano"},
                {"2", "Lee Younghee", "1992-02-02", "younghee@example.com", "2016", "Guitar"},
                {"3", "Park Sungho", "1993-03-03", "sungho@example.com", "2017", "Violin"},
                {"4", "Jang Minsuk", "1994-04-04", "minsuk@example.com", "2018", "Flute"},
                {"5", "Yoo Jiwon", "1995-05-05", "jiwon@example.com", "2019", "Drum"}
        };
        for (String[] member : members) {
    %>
    <tr>
        <td><%= member[0] %></td>
        <td><%= member[1] %></td>
        <td><%= member[2] %></td>
        <td><%= member[3] %></td>
        <td><%= member[4] %></td>
        <td><%= member[5] %></td>
        <td>
            <a href="view.jsp?id=<%= member[0] %>" class="btn btn-info btn-sm">View</a>
            <a href="edit.jsp?id=<%= member[0] %>" class="btn btn-warning btn-sm">Edit</a>
            <button class="btn btn-danger btn-sm" onclick="deleteMember(<%= member[0] %>)">Delete</button>
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