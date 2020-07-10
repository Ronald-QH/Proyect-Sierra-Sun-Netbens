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
    <div id="sidebar-container" class="border-right" style="background-image: url(assets/img/sidebarContainer.jpg) !important; background-size:130%;">
      <div class="logo">
        <img id="icon-sidebar" src="assets\img\Icon.png">
      </div>
      <div class="menu list-group-flush ">

        <a href="Admi.jsp" class="mtextB text-light p-3 border-0"><i class="fas fa-home lead mr-2"></i> Inicio</a>
        <a href="finances.html" class="mtextB text-light p-3 border-0"><i class="fas fa-poll lead mr-2"></i> Estadísticas</a>
        <a href="events.html" class="mtextB text-light p-3 border-0"><i class="far fa-calendar-alt lead mr-2"></i> Eventos</a>

        <!--APARTADO DEL BOTON DESPLEGABLE DONDE SE PUEDE INGRESAR Y VISUALIZAR LA BANDEJA DE ENTRADA-->
        <div class="accordion border-0 " id="accordionExample" style="background-color:rgba(255, 255, 255, 0) !important; ">
          <div class="card border-0" style="background-color:rgba(255, 255, 255, 0) !important; ">
            <div class="card-header border-0 padding-0" id="headingOne">
              <h2 class="mb-0">
                <button class="btn btn-block text-left border-0 padding-0" id="boton-bandeja" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                  <a href="#" class="mtextB text-light p-3 border-0"><i class="fas fa-envelope-open lead mr-2"></i> Bandeja de entrada</a>
                </button>
              </h2>
            </div>
            <!-- APARTADO DE FUNCIONALIDADES Y BOTONES DE LA BANDEJA DE ENTRADA-->
            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
              <div class="card-body">
                <a href="E-mail.html" class="mtextA text-danger alert alert-danger border-0"><i class="fas fa-tablet-alt"></i> Recibidos <small><span class="badge badge-pill badge-muted text-danger">25</span></small></a>
                <a href="#" class="mtext text-light border-0"><i class="far fa-clock"></i> Pospuestos <span class="badge badge-pill badge-muted">3</span></small></a>
                <a href="#" class="mtext text-light border-0"><i class="fas fa-envelope"></i> Redactar Mensaje</a>
                <a href="#" class="mtext text-light border-0"><i class="fas fa-star"></i> Destacados</a>
                <a href="#" class="mtext text-light border-0"><i class="far fa-bell"></i> Importantes <small><span class="badge badge-pill badge-muted">1</span></small></a>
                <a href="#" class="mtext text-light border-0"><i class="far fa-paper-plane"></i> Enviados</a>
                <a href="#" class="mtext text-light border-0"><i class="fas fa-trash-alt"></i> Papelera <small><span class="badge badge-pill">8</span></small></a>

              </div>
            </div>
          </div>
        </div>

        <a href="requesment.html" class="mtextB text-light p-3 border-0"><i class="fas fa-database lead mr-2"></i>Requerimientos</a>
        <a href="settings.html" class="mtextB text-light p-3 border-0"> <i class="	fas fa-cogs lead mr-2"></i> Configuración</a>

      </div>
    </div>
    <!-- Sidebar end-->

    <!-- Page Content -->
    <div id="page-content-wrapper" class="table-responsive" style="background: url(assets/img/pageContent.jpg)
    !important; background-size: cover !important; background-repeat: no-repeat !important; width:
    100% !important; margin: 0 auto !important;" class="w-100 bg-light-blue">
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
                <a class="nav-link text-white dropdown-toggle btn btn-outline-info " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Administración
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="perfil.html">Comunidades</a>
                  <a class="dropdown-item" href="#">Areas</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="Login.html">Trabajadores</a>
                </div>
              </li>
              <li>
                <a class="nav-link text-white dropdown-toggle btn btn-outline-info" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
        <section class="py-3">

          <div class="row">
            <div class="container col-sm-12">

              <!-- FORMULARIO de Registro de Trabajadores -->
              <center>
              <div class="col-md-8 order-md-1 bg-light"><br>
                <h4 class="mb-3">Registro para Trabajadores</h4>
                <form class="needs-validation" novalidate>
                  <div class="row">
                    <div class="col-md-6 mb-3 text-left">
                      <label for="firstName">Nombres :</label>
                      <input type="text" class="form-control" id="firstName" placeholder="Ingrese ambos Nombres" value="" required>
                      <div class="invalid-feedback">
                        Se necesita un nombre válido.
                      </div>
                    </div>
                    <div class="col-md-6 mb-3 text-left">
                      <label for="lastName">Apellidos :</label>
                      <input type="text" class="form-control" id="lastName" placeholder="Ingrese ambos Apellidos" value="" required>
                      <div class="invalid-feedback">
                        Se necesita un apellido válido.
                      </div>
                    </div>
                  </div>

                  <div class="mb-3 text-left">
                    <label for="username">Nombre de Usuario :</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">@</span>
                      </div>
                      <input type="text" class="form-control" id="username" placeholder="Ingrese Nombre de Usuario" required>
                      <div class="invalid-feedback" style="width: 100%;">
                        Su nombre de usuario es requerido.
                      </div>
                    </div>
                  </div>

                  <div class="mb-3 text-left">
                    <label for="exampleInputPassword1">Contraseña :</label>
                    <input type="password" class="form-control" placeholder="Ingrese Contraseña" id="exampleInputPassword1" required>
                    <div class="invalid-feedback" style="width: 100%;">
                      Su contraseña es requerida.
                    </div>
                  </div>

                  <div class="mb-3 text-left">
                    <label for="username">ID de Acceso :</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">@</span>
                      </div>
                      <input type="text" class="form-control" id="username" placeholder="Ingrese ID de Acceso" required>
                      <div class="invalid-feedback" style="width: 100%;">
                        Su ID de Acceso es requerido.
                      </div>
                    </div>
                  </div>

                  <hr class="mb-4">
                  <button class="btn btn-dark btn-lg btn-block" type="submit">Continuar con el Registro</button>
                  <br>
                </form>

              </div>
              </center>
            </div>
          </div>
          <!-- FORMULARIO END-->
              <br><br><br>

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
                  <tbody class=>
                    <tr class="shadow-sm ">
                      <td><i class="fas fa-user-circle lead mr-2"></i></td>
                      <td><span class="d-block">Cristian</span><small>cristian@templune.com</small>
                      </td>
                      <td class="align-middle"><span class="badge badge-secondary text-white" style="background: #00ACC1">Activo</span></td>
                      <td class="align-middle"><span class="badge badge-secondary">
                          <i class="fas fa-circle ml-1" style='font-size: 10px;'></i> Ahora</span>
                      </td>
                    </tr>
                    <tr class="shadow-sm ">
                      <td><i class="fas fa-user-circle lead mr-2"></i></td>
                      <td><span class="d-block">Diego</span><small>diego@templune.com</small></td>
                      <td class="align-middle"><span class="badge badge-secondary text-white" style="background: #00ACC1">Inactivo</span></td>
                      <td class="align-middle"><span class="badge badge-secondary">
                          <i class="far fa-circle ml-1" style='font-size: 10px;'></i> 1d</span>
                      </td>
                    </tr>
                    <tr class="shadow-sm  ">
                      <td><i class="fas fa-user-circle lead mr-2"></i></td>
                      <td><span class="d-block">Irina</span><small>irina@templune.com</small></td>
                      <td class="align-middle"><span class="badge badge-secondary text-white" style="background: #00ACC1">Activo</span></td>
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
              <div class="table-responsive ">
                <table class="table">
                  <thead class="text-white bg-dark">
                    <tr>
                      <th colspan="3"><small class="font-weight-bold">Mensajes<small></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="shadow-sm ">
                      <td><i class="fas fa-user-circle lead mr-2"></i></td>
                      <td><span class="d-block">Cristian Palacios</span><small>Me podrías enviar la cotización de la aplicación.</small></td>
                      <td class="ml-auto text-white"><small class="ml-auto text-white">Hace 2 horas</small></td>
                    <tr class="shadow-sm ">
                      <td><i class="fas fa-user-circle lead mr-2"></i></td>
                      <td><span class="d-block">Cristian Palacios</span><small>Me podrías enviar la cotización de la aplicación.</small></td>
                      <td class="ml-auto text-white"><small class="ml-auto text-white">Hace 2 horas</small></td>
                    <tr>
                      <td colspan="3"><button class="btn btn-outline-info text-white "><a class="text-white" href="E-mail.html"><small>Ver todos los mensajes</small></a></button></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <!--message bar-->

          </div>

          <!-- Table2 -->
          <div class="row mb-5">
            <div class="col-lg-12">
              <div class="table-responsive">
                <table id="table1" class="table table-striped table-bordered ">
                  <thead class="shorting-1">
                    <tr class="cell-border bg-dark">
                      <th>Nombre</th>
                      <th>Puesto</th>
                      <th>Sucurrsal</th>
                      <th>Edad</th>
                      <th>Fecha de inicio</th>
                      <th>Sueldo</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Tiger Nixon</td>
                      <td>Arquitecto de Sistemas</td>
                      <td>Edinburgh</td>
                      <td>61</td>
                      <td>2011/04/25</td>
                      <td>S/.320,800</td>
                    </tr>
                    <tr>
                      <td>Garrett Winters</td>
                      <td>Accountant</td>
                      <td>Tokyo</td>
                      <td>63</td>
                      <td>2011/07/25</td>
                      <td>$170,750</td>
                    </tr>
                    <tr>
                      <td>Ashton Cox</td>
                      <td>Junior Technical Author</td>
                      <td>San Francisco</td>
                      <td>66</td>
                      <td>2009/01/12</td>
                      <td>$86,000</td>
                    </tr>
                    <tr>
                      <td>Ashton Cox</td>
                      <td>Junior Technical Author</td>
                      <td>San Francisco</td>
                      <td>66</td>
                      <td>2009/01/12</td>
                      <td>$86,000</td>
                    </tr>
                    <tr>
                      <td>Cedric Kelly</td>
                      <td>Senior Javascript Developer</td>
                      <td>Edinburgh</td>
                      <td>22</td>
                      <td>2012/03/29</td>
                      <td>$433,060</td>
                    </tr>
                    <tr>
                      <td>Airi Satou</td>
                      <td>Accountant</td>
                      <td>Tokyo</td>
                      <td>33</td>
                      <td>2008/11/28</td>
                      <td>$162,700</td>
                    </tr>
                    <tr>
                      <td>Brielle Williamson</td>
                      <td>Integration Specialist</td>
                      <td>New York</td>
                      <td>61</td>
                      <td>2012/12/02</td>
                      <td>$372,000</td>
                    </tr>
                    <tr>
                      <td>Herrod Chandler</td>
                      <td>Sales Assistant</td>
                      <td>San Francisco</td>
                      <td>59</td>
                      <td>2012/08/06</td>
                      <td>$137,500</td>
                    </tr>
                    <tr>
                      <td>Rhona Davidson</td>
                      <td>Integration Specialist</td>
                      <td>Tokyo</td>
                      <td>55</td>
                      <td>2010/10/14</td>
                      <td>$327,900</td>
                    </tr>
                    <tr>
                      <td>Colleen Hurst</td>
                      <td>Javascript Developer</td>
                      <td>San Francisco</td>
                      <td>39</td>
                      <td>2009/09/15</td>
                      <td>$205,500</td>
                    </tr>
                    <tr>
                      <td>Sonya Frost</td>
                      <td>Software Engineer</td>
                      <td>Edinburgh</td>
                      <td>23</td>
                      <td>2008/12/13</td>
                      <td>$103,600</td>
                    </tr>
                    <tr>
                      <td>Jena Gaines</td>
                      <td>Office Manager</td>
                      <td>London</td>
                      <td>30</td>
                      <td>2008/12/19</td>
                      <td>$90,560</td>
                    </tr>
                    <tr>
                      <td>Quinn Flynn</td>
                      <td>Support Lead</td>
                      <td>Edinburgh</td>
                      <td>22</td>
                      <td>2013/03/03</td>
                      <td>$342,000</td>
                    </tr>
                    <tr>
                      <td>Charde Marshall</td>
                      <td>Regional Director</td>
                      <td>San Francisco</td>
                      <td>36</td>
                      <td>2008/10/16</td>
                      <td>$470,600</td>
                    </tr>
                    <tr>
                      <td>Haley Kennedy</td>
                      <td>Senior Marketing Designer</td>
                      <td>London</td>
                      <td>43</td>
                      <td>2012/12/18</td>
                      <td>$313,500</td>
                    </tr>
                    <tr>
                      <td>Tatyana Fitzpatrick</td>
                      <td>Regional Director</td>
                      <td>London</td>
                      <td>19</td>
                      <td>2010/03/17</td>
                      <td>$385,750</td>
                    </tr>
                    <tr>
                      <td>Michael Silva</td>
                      <td>Marketing Designer</td>
                      <td>London</td>
                      <td>66</td>
                      <td>2012/11/27</td>
                      <td>$198,500</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          <!-- Table2 end -->
        </section>
      </div>
    </div>
    <!-- Page Content end -->
  </div>
  <!-- Fin wrapper end -->

  <!--Vue.js-->
  <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  <!--then Bootstrap JS-->
  <script src="Boostrap/js/jquery.js"></script>
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
