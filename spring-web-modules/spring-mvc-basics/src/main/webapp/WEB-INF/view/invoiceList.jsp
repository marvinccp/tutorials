<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Invoice List</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/invoiceList.css" />

</head>
<body>
    <h1>Lista de facturas</h1>
    <button>
    	    <a href="${pageContext.request.contextPath}/invoice">Crear facturas</a>
    	</button>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Detalle</th>
        </tr>
        <c:forEach var="invoice" items="${invoices}">
            <tr>
                <td>${invoice.id}</td>
                <td>${invoice.clientName}</td>
                <td><a href="${pageContext.request.contextPath}/invoiceDetail/${invoice.id}">Ver Detalle</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
