<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee List Baby</title>
</head>
<body>
    <h1>Employee List</h1>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Contact Number</th>
            <th>Working Area</th>
        </tr>
        <c:forEach var="employee" items="${employees}">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.contactNumber}</td>
                <td>${employee.workingArea}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
