<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Detalle de la Factura</title>
                <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/invoiceDetail.css" />

</head>
<body>
    <h1>Detalle de la Factura</h1>
    <p>ID: ${invoice.id}</p>
    <p>Cliente: ${invoice.clientName}</p>
    <p>Descripción: ${invoice.description}</p>
    <p>Monto: ${invoice.amount}</p>
    <p>Impuestos: ${invoice.taxes}</p>
    <p>Monto Total: ${invoice.totalAmount}</p>
    <a href="${pageContext.request.contextPath}/invoiceList">Volver a la lista</a>
</body>
</html>
