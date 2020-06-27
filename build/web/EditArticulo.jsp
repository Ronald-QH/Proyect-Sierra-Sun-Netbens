<%@page import="Controlador.CArticulos"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Project-Sierra Sun</title>
  <!--Required meta tags-->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!--Bootstrap CSS -->
  <link rel="stylesheet" href="Boostrap\css\bootstrap.min.css">
  <!--Custom styles-->
  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/css/table-styles.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="Tables\datatables.min.css">
  <link rel="stylesheet" type="text/css" href="Tables\dataTables.bootstrap4.css">
  <!-- Google fonts -->
  <link href="https://fonts.googleapis.com/css?family=Muli:400,700&display=swap" rel="stylesheet">
</head>

<body>
  <div class="d-flex" id="content-wrapper">

    <!-- Sidebar -->
    <div id="sidebar-container" class="bg-light border-right">
      <!--<div class="logo">
                  <h4 class="font-weight-bold mb-0">Templune</h4>
      </div>-->
      <div class="menu list-group-flush">
        <a href="Index.jsp" class="list-group-item list-group-item-action text-muted bg-light p-3 border-0"><i class="fas fa-home lead mr-2"></i> Inicio</a>
        <a href="finances.html" class="list-group-item list-group-item-action text-muted bg-light p-3 border-0"><i class="fas fa-poll lead mr-2"></i> Estadísticas</a>
        <a href="events.html" class="list-group-item list-group-item-action text-muted bg-light p-3 border-0"><i class="far fa-calendar-alt lead mr-2"></i> Eventos</a>
        <a href="E-mail.html" class="list-group-item list-group-item-action text-muted bg-light p-3 border-0"><i class="fas fa-envelope-open lead mr-2"></i> Bandeja de entrada</a>
        <a href="requesment.html" class="list-group-item list-group-item-action text-muted bg-light p-3 border-0"><i class="fas fa-database lead mr-2"></i>Requerimientos</a>
        <a href="settings.html" class="list-group-item list-group-item-action text-muted bg-light p-3 border-0"> <i class="	fas fa-cogs lead mr-2"></i> Configuración</a>
      </div>
    </div>
    <!-- Sidebar end-->

    <!-- Page Content -->
    <div id="page-content-wrapper" class="w-100 bg-light-blue">
      <!-- Nav bar -->
      <nav class="navbar navbar-expand-lg navbar-light bg-dark border-bottom">
        <div class="container">
          <button class="btn btn-outline-info text-white my-2 my-sm-0" id="menu-toggle"><i class="fas fa-bars"></i> Sidebar</button>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
              <li>
                <form class="form-inline my-2 my-lg-0">
                  <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search" style="margin-bottom: 0px;">
                  <button class="btn btn-outline-info text-white my-2 my-sm-0" type="submit">Buscar</button>
                </form>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link text-white dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Usuario
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="#">Mi perfil</a>
                  <a class="dropdown-item" href="#">Archivos</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="Login.html">Cerrar sesión</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- Nav bar end -->
      <div id="content" class="container-fluid">
        <section class="py-3 ">
          <!-- Graphic -->
          <div class="row">
            <div class="card card-chart bg-dark" id="Graphic-card">
              <div class="card-header">
                <div class="row" style="color: white;">
                  <div class="col-sm-6">
                    <h5 class="card-title" style="color: white">Titulo</h5>
                    <p class="card-text">Graphic</p>
                  </div>
                  <div class="col-sm-6" style="padding-right: 0px;">
                    <div class="btn-group btn-group-toggle" data-toggle="buttons">
                      <label class="btn btn-outline-danger btns-custom btn-simple active active-card">
                        <input type="radio" name="options" id="option1" checked>
                        <span class="d-none d-sm-block d-md-block d-lg-block d-xl-block">Opcion1</span>
                        <span class="d-block d-sm-none">
                          <i class="tim-icons	fas fa-chart-bar"></i>
                        </span>
                      </label>
                      <label class="btn btn-outline-danger btns-custom">
                        <input type="radio" name="options" id="option2">
                        <span class="d-none d-sm-block d-md-block d-lg-block d-xl-block">Opcion2</span>
                        <span class="d-block d-sm-none">
                          <i class="tim-icons	fas fa-chart-line"></i>
                        </span>
                      </label>
                      <label class="btn btn-outline-danger btns-custom">
                        <input type="radio" name="options" id="option3">
                        <span class="d-none d-sm-block d-md-block d-lg-block d-xl-block">Opcion3</span>
                        <span class="d-block d-sm-none">
                          <i class="tim-icons	fas fa-chart-pie"></i>
                        </span>
                      </label>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-body">
                <div class="chart-area">
                  <canvas id="lineChartExample" class="" width="1676" height="440" class="chartjs-render-monitor" style="display: block; height: 220px; width: 838px;">
                  </canvas>
                </div>
              </div>
            </div>
          </div>
          <!-- Graphic end-->

          <div class="row mb-3" style="background:">

            <!-- Table -->
            <div class="col-xl-7 col-lg-12">
              <div class="table-responsive ">
                <table class="table">
                  <thead class="text-white bg-dark">
                    <tr>
                      <th colspan="2"><small class="font-weight-bold">Usuarios<small></th>
                      <th scope="col"><small class="font-weight-bold">Estatus<small></th>
                      <th scope="col"><small class="font-weight-bold">Activo hace<small></th>
                    </tr>
                  </thead>
                  <tbody class="text-white">
                    <tr class="shadow-sm  bg-dark">
                      <td><i class="fas fa-user-circle lead mr-2"></i></td>
                      <td><span class="d-block">Cristian</span><small>cristian@templune.com</small>
                      </td>
                      <td class="align-middle"><span class="badge badge-primary text-white">Activo</span></td>
                      <td class="align-middle"><span class="badge badge-secondary">
                          <i class="fas fa-circle ml-1" style='font-size: 10px;'></i> Ahora</span>
                      </td>
                    </tr>
                    <tr class="shadow-sm  bg-dark">
                      <td><i class="fas fa-user-circle lead mr-2"></i></td>
                      <td><span class="d-block">Diego</span><small>diego@templune.com</small></td>
                      <td class="align-middle"><span class="badge badge-primary text-white">Inactivo</span></td>
                      <td class="align-middle"><span class="badge badge-secondary">
                          <i class="far fa-circle ml-1" style='font-size: 10px;'></i> 1d</span>
                      </td>
                    </tr>
                    <tr class="shadow-sm  bg-dark">
                      <td><i class="fas fa-user-circle lead mr-2"></i></td>
                      <td><span class="d-block">Irina</span><small>irina@templune.com</small></td>
                      <td class="align-middle"><span class="badge badge-primary text-white">Activo</span></td>
                      <td class="align-middle"><span class="badge badge-secondary">
                          <i class="	fas fa-circle ml-1" style='font-size: 10px;'></i> Ahora</span>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <!-- Table end -->

            <!--message bar-->
            <div class="col-xl-5 col-lg-12">
              <div class="card text-white mb-5 shadow-sm shadow-hover bg-dark" style="border-color: white; border-radius: 8px;">
                <div class="card-header text-white  border-0 pt-3 pb-0">
                  <h6 class="text-white">Mensajes</h6>
                </div>
                <div class="card-body">
                  <div class="d-flex border-bottom py-3">
                    <div class="mr-3">
                      <i class="fas fa-user-circle lead mr-2"></i>
                    </div>
                    <div>
                      <div class="d-flex">
                        <p class="mb-0">Cristian Palacios</p>
                        <small class="ml-auto">Hace 2 horas</small>
                      </div>
                      <small class="">Me podrías enviar la cotización de la aplicación.</small>
                    </div>
                  </div>

                  <div class="d-flex border-bottom py-3">
                    <div class="mr-3">
                      <i class="fas fa-user-circle lead mr-2"></i>
                    </div>
                    <div>
                      <div class="d-flex">
                        <p class="mb-0">Adriana Arenas</p>
                        <small class="ml-auto">Hace 2 horas</small>
                      </div>
                      <small class="">Hola, la junto de hoy es a las 10 en la oficina 2.</small>
                    </div>
                  </div>

                  <div class="text-center pt-3">
                    <button class="btn btn-outline-info text-white my-2 my-sm-0"><a class="text-white" href="E-mail.html"><small>Ver todos los mensajes</small></a></button>
                  </div>
                </div>
              </div>
            </div>
            <!--message bar-->

          </div>
            <%
                CArticulos ca = new CArticulos();
                int idArticulo = Integer.parseInt(request.getParameter("id"));
            %>
            <%= ca.EditArticulo(idArticulo)%>        

        </section>
      </div>
    </div>
    <!-- Page Content end -->
  </div>

  <!--Vue.js-->
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  <!--then Bootstrap JS-->
  <script src="Boostrap/js/jquery.js" type="text/javascript"></script>
  <script src="Boostrap/js/bootstrap.min.js"></script>
  <!--Chart sj-->
  <script src="Chartjs\dist\Chart.js"></script>
  <script src="assets\js\main.js"></script>
  <script src="assets\js\graphics.js"></script>
  <!--Customise scripts-->
  <script type="text/javascript" src="Tables\datatables.min.js"></script>
  <script type="text/javascript" src="Tables\dataTables.bootstrap4.js"></script>
  <script src="assets/js/tables.js"></script>
  <!--icons-->
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</body>

</html>