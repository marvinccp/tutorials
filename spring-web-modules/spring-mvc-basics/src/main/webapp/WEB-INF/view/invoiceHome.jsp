<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<style>
*{
font-family:arial;
}

.invoiceHome-logo-container{
display:flex;
justify-content:center;
align-items: center;
gap:7px
}

.buttons-container{
display:flex;
justify-content:center;
align-items: center;
}

.invoice-container-page{

display:flex;
justify-content:center;
align-items: center;
flex-direction:column;
margin-top:35px

}

    .button-view {
        background-color: #AEC6CF;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    .button-view:hover {
        background-color: #7798A1;
    }
.button-create {
        background-color: #4CAF50;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    .button-create:hover {
        background-color: #45a049;
    }

    .company-logo {
            width: 55px;
            height: auto;
            margin-bottom: 20px;
            margin-top:30px;
        }
</style>
</head>

<body>

<section class="invoiceHome-logo-container">
<img class="company-logo" src="${pageContext.request.contextPath}/images/empresa-de-nueva-creacion.png" alt="Company Logo" class="company-logo">
    <h3>SpaceBusiness</h3>
</section>
<section class="invoice-container-page">
	<h1>Facturación</h1>

	<div class="buttons-container">
	  <a class="button-view" href="${pageContext.request.contextPath}/invoiceList">Ver facturas</a>
	    <a class="button-create" href="${pageContext.request.contextPath}/invoice">Crear facturas</a>
	</div>
</section>

</body>
</html>