<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Formulario de Vendedores</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
</head>
<body>

<div class="container mt-5">
    <h1>Vendedores</h1>
    <form action="add" method="post" class="needs-validation" novalidate>
        <!-- Campo oculto para el ID de Vendedores -->
        <input type="hidden" id="idvendedores" name="idvendedores" value="${vendedores.idvendedores}" />
        
        <!-- Campo para el Nombre -->
        <div class="form-group">
            <label for="nombre" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="nombre" name="nombre" value="${vendedores.nombre}" required>
            <div class="invalid-feedback">Por favor, ingrese el nombre del vendedor.</div>
        </div>
        <br/>

        <!-- Campo para la Direcci�n -->
        <div class="form-group">
            <label for="direccion" class="form-label">Direcci�n</label>
            <input type="text" class="form-control" id="direccion" name="direccion" value="${vendedores.direccion}" required>
            <div class="invalid-feedback">Por favor, ingrese la direcci�n del vendedor.</div>
        </div>
        <br/>

        <!-- Campo para el Tel�fono -->
        <div class="form-group">
            <label for="telefono" class="form-label">Tel�fono</label>
            <input type="text" class="form-control" id="telefono" name="telefono" value="${vendedores.telefono}" required>
            <div class="invalid-feedback">Por favor, ingrese el n�mero de tel�fono del vendedor.</div>
        </div>
        <br/>

        <!-- Campo para el Email -->
        <div class="form-group">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" value="${vendedores.email}" required>
            <div class="invalid-feedback">Por favor, ingrese un correo electr�nico v�lido.</div>
        </div>
        <br/>
        
        <!-- Bot�n de Guardar -->
        <button type="submit" class="btn btn-primary">Guardar</button>
        
        <!-- Bot�n de Cancelar -->
        <button type="button" class="btn btn-secondary" onclick="window.location.href='/Vendedores-web/vendedores/findAll';return false;">Cancelar</button>
    </form>
</div>

<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>

<script>
    /* Script para validaci�n de Bootstrap */
    (() => {
        'use strict'

        // Obtiene todos los formularios a los que queremos aplicar estilos de validaci�n personalizados de Bootstrap
        const forms = document.querySelectorAll('.needs-validation')

        // Recorre los formularios y previene el env�o si no son v�lidos
        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
                if (!form.checkValidity()) {
                    event.preventDefault()
                    event.stopPropagation()
                }

                form.classList.add('was-validated')
            }, false)
        })
    })()
</script>

</body>
</html>
