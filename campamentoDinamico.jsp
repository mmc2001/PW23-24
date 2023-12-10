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
        <% String tipo = "tardía"; %>
        <% int precio = 18; %>
    <%-- Obtener parámetros --%>
        <% String nombre = request.getParameter("nombre"); %>
        <% String fechaInicio = request.getParameter("fechaInicio"); %>
        <% String fechaFin = request.getParameter("fechaFin"); %>

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
        <h2>Campamento <%= nombre %></h2>
        <div class="contenidoInscripcion">
            <h3>Inscripción</h3>
            <table id="keywords" cellspacing="0" cellpadding="0">
                <thead>
                  <tr>
                    <th><span>Nombre</span></th>
                    <th><span>Fecha inicio</span></th>
                    <th><span>Fecha fin</span></th>
                    <th><span>Tipo</span></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td><%= nombre %></td>
                    <td><%= fechaInicio %></td>
                    <td><%= fechaFin %></td>
                    <td>
                        <select>
                            <option value="Parcial">Parcial</option>
                            <option value="Completa">Completa</option>
                        </select>
                    </td>
                  </tr>
                </tbody>   
            </table>
            <button class="buttonSolicitar" onclick="mostrarAviso()">
                Solicitar
            </button>
        </div>
        <div class="overlay" id="overlay"></div>
        <div class="modal" id="modal">
            <%--<p>Modalidad disponible <%= tipo %> (esta opción no tiene posibilidad de cancelación) y precio del campamento 18€</p>
            <button onclick="confirmar()" class="buttonSolicitar">Confirmar</button>
            <button onclick="cancelar()" class="buttonSolicitar">Cancelar</button>
            --%>
        </div>
        <script>
            var url = '/prueba/home.jsp';
            var tipo = '<%= tipo %>';
            var precio = '<%= precio %>'; 
            // Función para mostrar la ventana modal
            function mostrarAviso() {
                document.getElementById('overlay').style.display = 'block';
                document.getElementById('modal').style.display = 'block';
            }
            if (tipo === 'tardía') {
                modal.innerHTML = '<p>Modalidad disponible ' + tipo + ' (esta opción no tiene posibilidad de cancelación) y el precio del campamento es ' + precio +'€.</p>';
                modal.innerHTML += '<button onclick="confirmar()" class="buttonConfirmar">Confirmar</button>';
                modal.innerHTML += '<button onclick="cancelar()" class="buttonCancelar">Cancelar</button>'; 
            } else {
                modal.innerHTML = '<p>Modalidad disponible ' + tipo + ' y el precio del campamento es ' + precio +'€.</p>';
                modal.innerHTML += '<button onclick="confirmar()" class="buttonConfirmar">Confirmar</button>';
                modal.innerHTML += '<button onclick="cancelar()" class="buttonCancelar">Cancelar</button>'; 
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