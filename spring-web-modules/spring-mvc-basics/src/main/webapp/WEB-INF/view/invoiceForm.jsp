<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <title>Crear Factura</title>
            <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Resources/css/invoiceForm.css" />

</head>
<body>
    <h1>Crear Factura</h1>
    <form:form method="post" modelAttribute="invoice" action="/spring-mvc-basics-prueba/addInvoice">
        <table>
            <tr>
                <td><label>Nombre del Cliente:</label></td>
                <td><form:input path="clientName" /></td>
            </tr>
            <tr>
                <td><label>Descripción:</label></td>
                <td><form:input path="description" /></td>
            </tr>
            <tr>
                <td><label>Monto:</label></td>
                <td><form:input path="amount" /></td>
            </tr><tr>
                <td><label>impuestos:</label></td>
                <td><form:input path="taxes" /></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Guardar Factura" /></td>
            </tr>
        </table>
    </form:form>
    <a href="${pageContext.request.contextPath}/invoiceList">Lista de Facturas</a>

</body>
</html>
