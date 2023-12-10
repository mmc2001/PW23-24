<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gestor de Campamentos</title>
<link rel="stylesheet" type="text/css" href="styles/reset.css">
<link rel="stylesheet" type="text/css" href="styles/actividades.css">
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

    <%--
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
    --%>

    <div class="contenedorBuscador">
        <h2>Buscador</h2>
        <div class="campos">
            <div class="coolinput">
                <label for="input" class="text">Fecha inicio 1</label>
                <input type="date" id="fechaInicio1" name="fecha1" placeholder="dd/mm/aa" class="input">
            </div>
            <div class="coolinput">
                <label for="input" class="text">Fecha inicio 2</label>
                <input type="date" id="fechaInicio2" name="fecha2" placeholder="dd/mm/aa" class="input">
            </div>
            <div class="coolinput">
                <label for="input" class="text">Nivel educativo</label>
                <select id="nivelEducativo" name="opciones" class="input">
                    <option value="Infantil">Infantil</option>
                    <option value="Juvenil">Juvenil</option>
                    <option value="Adolescente">Adolescente</option>
                </select>
            </div>
            <div class="coolinput">
                <label for="input" class="text">Nº min. plazas</label>
                <input type="number" id="nPlazas" name="nPlazas" placeholder="" class="input">
            </div>
        </div>
        <button class="buttonBuscador">
            Buscar
        </button>
    </div>

    <div class="contenedorResultados">
        <div class="result">
            <h3>Campamentos (Nivel Infantil)</h3>

            <table id="keywords" cellspacing="0" cellpadding="0">
                <thead>
                  <tr>
                    <th><span>Nombre</span></th>
                    <th><span>Fecha inicio</span></th>
                    <th><span>Fecha fin</span></th>
                    <th><span>Nº asistentes disponibles</span></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">silly tshirts</td>
                    <td>6,000</td>
                    <td>110</td>
                    <td>1.8%</td>
                  </tr>
                  <tr>
                    <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">desktop workspace photos</td>
                    <td>2,200</td>
                  </tr>
                  <tr>
                    <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">arrested development quotes</td>
                    <td>13,500</td>
                  </tr>
                  <tr>
                    <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">popular web series</td>
                    <td>8,700</td>
                  </tr>
                  <tr>
                    <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">2013 webapps</td>
                    <td>9,900</td>
                  </tr>
                  <tr>
                    <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">ring bananaphone</td>
                    <td>10,500</td>
                  </tr>
                </tbody>
              </table>

        </div>
        <div class="result">
            <h3>Campamentos (Nivel Juvenil)</h3>

            <table id="keywords" cellspacing="0" cellpadding="0">
                <thead>
                  <tr>
                    <th><span>Nombre</span></th>
                    <th><span>Fecha inicio</span></th>
                    <th><span>Fecha fin</span></th>
                    <th><span>Nº asistentes disponibles</span></th>
                  </tr>
                </thead>
                <tbody>
                    <tr>
                      <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">silly tshirts</td>
                      <td>6,000</td>
                      <td>110</td>
                      <td>1.8%</td>
                    </tr>
                    <tr>
                      <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">desktop workspace photos</td>
                      <td>2,200</td>
                    </tr>
                    <tr>
                      <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">arrested development quotes</td>
                      <td>13,500</td>
                    </tr>
                    <tr>
                      <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">popular web series</td>
                      <td>8,700</td>
                    </tr>
                    <tr>
                      <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">2013 webapps</td>
                      <td>9,900</td>
                    </tr>
                    <tr>
                      <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">ring bananaphone</td>
                      <td>10,500</td>
                    </tr>
                  </tbody>
              </table>
        </div>
        <div class="result">
            <h3>Campamentos (Nivel Adolescente)</h3>

            <table id="keywords" cellspacing="0" cellpadding="0">
                <thead>
                  <tr>
                    <th><span>Nombre</span></th>
                    <th><span>Fecha inicio</span></th>
                    <th><span>Fecha fin</span></th>
                    <th><span>Nº asistentes disponibles</span></th>
                  </tr>
                </thead>
                <tbody>
                    <tr>
                      <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">silly tshirts</td>
                      <td>6,000</td>
                      <td>110</td>
                      <td>1.8%</td>
                    </tr>
                    <tr>
                      <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">desktop workspace photos</td>
                      <td>2,200</td>
                    </tr>
                    <tr>
                      <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">arrested development quotes</td>
                      <td>13,500</td>
                    </tr>
                    <tr>
                      <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">popular web series</td>
                      <td>8,700</td>
                    </tr>
                    <tr>
                      <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">2013 webapps</td>
                      <td>9,900</td>
                    </tr>
                    <tr>
                      <td class="lalign" onclick="redireccionar('/prueba/campamentoDinamico.jsp', 'silly', '7/12/2023', '23/12/2023')">ring bananaphone</td>
                      <td>10,500</td>
                    </tr>
                  </tbody>
              </table>
        </div>
        <script>
            // Función para redireccionar a otra página
            function redireccionar(url, nombre, fechaInicio, fechaFin) {
                var urlConParametro = url + '?nombre=' + nombre + '&fechaInicio=' + fechaInicio + '&fechaFin=' + fechaFin;
                window.location.href = urlConParametro;
            }
        </script>
    </div>
    

</body>
</html>