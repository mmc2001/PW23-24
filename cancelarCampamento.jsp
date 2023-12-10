<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gestor de Campamentos</title>
<link rel="stylesheet" type="text/css" href="styles/reset.css">
<link rel="stylesheet" type="text/css" href="styles/campamentoDinamico.css">
</head>
<body>
    <%-- Variables Declaradas --%>
        <% String nombreUsuario = "Juan"; %>
    <%-- Obtener parámetros --%>
        <% String nombre = request.getParameter("nombre"); %>
        <% String asistentes = request.getParameter("asistentes"); %>
        <% String tipo = request.getParameter("tipo"); %>

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
    <div class="contenedorInscripcion">
        <h2><%= nombre %></h2>
        <div class="contenidoInscripcion">
            <h3>Inscripción</h3>
            <table id="keywords" cellspacing="0" cellpadding="0">
                <thead>
                  <tr>
                    <th><span>Nombre</span></th>
                    <th><span>Nº asistentes</span></th>
                    <th><span>Tipo</span></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td><%= nombre %></td>
                    <td><%= asistentes %></td>
                    <td><%= tipo %></td>
                  </tr>
                </tbody>   
            </table>
            <button class="buttonSolicitar" onclick="mostrarAviso()">
                Cancelar
            </button>
        </div>
        <div class="overlay" id="overlay"></div>
        <div class="modal" id="modal">
            <p>¿Seguro que desea elimar su inscripción?</p>
            <button onclick="confirmar()" class="buttonConfirmar">Confirmar</button>
            <button onclick="cancelar()" class="buttonCancelar">Cancelar</button>
        </div>
        <script>
            var url = '/prueba/home.jsp';
            // Función para mostrar la ventana modal
            function mostrarAviso() {
                document.getElementById('overlay').style.display = 'block';
                document.getElementById('modal').style.display = 'block';
            }
            // Función para confirmar la acción
            function confirmar() {
                //alert('Acción confirmada');
                window.location.href = url;
                ocultarModal();
            }
            // Función para cancelar la acción
            function cancelar() {
                //alert('Acción cancelada');
                window.location.href = url;
                ocultarModal();
            }
            // Función para ocultar la ventana modal
            function ocultarModal() {
                document.getElementById('overlay').style.display = 'none';
                document.getElementById('modal').style.display = 'none';
            }
        </script>
    </div>
</body>
</html>