<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gestor de Campamentos</title>
<link rel="stylesheet" type="text/css" href="styles/reset.css">
<link rel="stylesheet" type="text/css" href="styles/home.css">
</head>
<body>
    <%-- Variables Declaradas --%>
        <% String nombreUsuario = "Juan"; %>

    <div class="navbar">
        <a href="/prueba/home.jsp">
            <img src="img/campamento.png" alt="Logo" class="logo">
        </a>
        <div class="opciones">
            <a href="/prueba/home.jsp">Inicio</a>
            <a href="/prueba/actividades.jsp">Campamentos</a>
            <div class="dropdown">
                <button class="dropbtn">
                    <%= nombreUsuario %> <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="#">Modificar Datos</a>
                    <a href="#">Logout</a>
                </div>
            </div> 
        </div>
    </div>

    <div class="banner">
        <div class="banner-content">
            <h2>¡Bienvenido <%= nombreUsuario %>!</h2>
            <%
                java.util.Date fecha = new java.util.Date();
                java.text.SimpleDateFormat formatoFecha = new java.text.SimpleDateFormat("dd/MM/yyyy");
                String fechaFormateada = formatoFecha.format(fecha);
            %>
            <p><%= fechaFormateada %></p>
        </div>
        <div>
            <img src="img/acampar.jpeg" alt="Fondo" class="fondo1">
        </div>
    </div>

    <div class="campamentos">
        <h2>Campamentos Inscritos</h2>
        <div class="cards">
            <div class="card" onclick="redireccionar('Campamento Sur', '15', 'Completa')">
                <div class="container">
                    <h4><b>Campamento Sur</b></h4>
                    <p><b>Asistentes:</b> 15</p>
                    <p><b>Tipo:</b> Completa</p>
                </div>
                <img src="img/tiendas-campana.jpeg" alt="Fondo" class="fondo2">
            </div>
            <div class="card" onclick="redireccionar('Campamento Sur', '15', 'Completa')">
                <div class="container">
                    <h4><b>Campamento Sur</b></h4>
                    <p><b>Asistentes:</b> 15</p>
                    <p><b>Tipo:</b> Completa</p>
                </div>
                <img src="img/tiendas-campana.jpeg" alt="Fondo" class="fondo2">
            </div>
            <div class="card" onclick="redireccionar('Campamento Sur', '15', 'Completa')">
                <div class="container">
                    <h4><b>Campamento Sur</b></h4>
                    <p><b>Asistentes:</b> 15</p>
                    <p><b>Tipo:</b> Completa</p>
                </div>
                <img src="img/tiendas-campana.jpeg" alt="Fondo" class="fondo2">
            </div>
            <div class="card" onclick="redireccionar('Campamento Sur', '15', 'Completa')">
                <div class="container">
                    <h4><b>Campamento Sur</b></h4>
                    <p><b>Asistentes:</b> 15</p>
                    <p><b>Tipo:</b> Completa</p>
                </div>
                <img src="img/tiendas-campana.jpeg" alt="Fondo" class="fondo2">
            </div>
        </div>
    </div>
    <script>
        var url = '/prueba/cancelarCampamento.jsp'
        // Función para redireccionar a otra página
        function redireccionar(nombre, asistentes, tipo) {
            var urlConParametro = url + '?nombre=' + nombre + '&asistentes=' + asistentes + '&tipo=' + tipo;
            window.location.href = urlConParametro;
        }
    </script>
</body>
</html>