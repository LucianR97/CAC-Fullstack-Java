

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conf Bs As</title>
    <!----CSS---->
    <link rel="stylesheet" href="./css/style.css"/>
    <!--- BOOTSTRAP--->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    
</head>
<body> 
  <!-----NAVBAR----->
    <nav id="navbar" class="navbar navbar-expand-lg bg-dark fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">
            <img src="./img/codoacodo.png" alt="Logo" width="100" height="50" class="d-inline-block align-text-top">
          </a>
          <a class="navbar-brand" href="#">Conf Bs As</a>
          <button id="btn-barra" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div id="navbarNav" class="collapse navbar-collapse">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link"href="#">La conferencia</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#oradores">Los oradores</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#lugar_y_fecha">El lugar y la fecha</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#conviertete">Conviértete en orador</a>
              </li>
              <li id="comprarTickets" class="nav-item">
                <a  class="nav-link" href="#ventaTickets">Comprar tickets</a>
              </li>
              <li class="nav-item">
                <a  class="nav-link" href="register.jsp">Regístrate</a>
              </li>
              <li class="nav-item">
                <a  class="nav-link" href="login.jsp">Inicia sesión</a>
              </li>
            </ul>
          </div>
        </div>
    </nav>
    <!-----HEADER----->   
    <header class="banner">
      <img class="img-banner" src="./img/ba1.jpg" alt="Imagen de un edificio de Buenos Aires">
      <div class="presentacion">
        <h1>Conf Bs As</h1>
        <p>Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y experiencia de los expertos que están creando el futuro de Internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
        <button id="boton1" class="btn botoncitos">Quiero ser orador</button>
        <button class="btn btn-success botoncitos" onclick="comprarTickets()">Comprar tickets</button>
      </div>
    </header>
    <main>
      <!-----SECCION ORADORES----->
      <section id="oradores" class="container">
        <p>CONOCE A LOS</p>
        <h2>ORADORES</h2>
        <div class="row row-cols-1 row-cols-md-3 g-4">
          <div class="col">
            <div class="card h-100">
              <img src="./img/steve.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <button class="javascript btn">Javascript</button>
                <button class="react btn">React</button>
                <h5 class="card-title">Steve Jobs</h5>
                <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis voluptates ab exercitationem dolorem, explicabo laudantium aperiam totam molestiae, assumenda necessitatibus accusamus amet suscipit repellendus eligendi vero ratione labore officiis id!</p>
              </div>              
            </div>
          </div>
          <div class="col">
            <div class="card h-100">
              <img src="./img/bill.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <button class="javascript btn">Javascript</button>
                <button class="react btn">React</button>
                <h5 class="card-title">Bill Gates</h5>
                <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis voluptates ab exercitationem dolorem, explicabo laudantium aperiam totam molestiae, assumenda necessitatibus accusamus amet suscipit repellendus eligendi vero ratione labore officiis id!</p>
              </div>              
            </div>
          </div>
          <div class="col">
            <div class="card h-100">
              <img src="./img/ada.jpeg" class="card-img-top" alt="...">
              <div class="card-body">
                <button class="negocios btn">Negocios</button>
                <button class="startups btn">Startups</button>
                <h5 class="card-title">Ada Lovelace</h5>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis voluptates ab exercitationem dolorem, explicabo laudantium aperiam totam molestiae, assumenda necessitatibus accusamus amet suscipit repellendus eligendi vero ratione labore officiis id!.</p>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-----SECCION LUGAR Y FECHA----->
      <section id="lugar_y_fecha">
        <div class="card" style="width: 100%;">
          <div class="row g-0">
            <div class="col-md-6">
              <img src="./img/honolulu.jpg" class="img-fluid" alt="Imagen de Honolulu">
            </div>
            <div class="col-md-6">
              <div class="card-body">
                <h5 class="card-title">Bs As - Octubre</h5>
                <p class="card-text">Buenos Aires es la provincia y localidad mas grande del estado de Argentina. En los Estados Unidos, Honolulu es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al área urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu, han formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600km<sup>2</sup> de superficie)</p>
                <button class="btn conoce">Conoce más</button>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-----SECCION CONVIERTETE EN ORADOR----->
      <section id="conviertete">
        <p class="convierteteEn">CONVIERTETE EN UN</p>
        <h2>ORADOR</h2>
        <p>Anotate como orador para dar una <span class="ignite">charla ignite</span>. Cuéntanos de qué quieres hablar!</p>
        <div class="formulario container">
          <form class="row g-3">
            <div class="col-md-6">
              <input type="text" class="form-control" id="nombre" placeholder="Nombre">
            </div>
            <div class="col-md-6">
              <input type="text" class="form-control" id="apellido" placeholder="Apellido">
            </div>
            <textarea class="form-control col-12" placeholder="¿Sobre que quieres hablar?"></textarea>
            <div class="recuerda">
              <p>Recuerda incluir un tiulo para tu charla</p>
            </div>            
            <div class="col-md-12 d-grid gap-2">
              <button id="enviar" type="submit" class="btn">Enviar</button>
            </div>
          </form>
        </div>        
      </section>
      <!-----SECCION TICKETS----->
      <section id="ventaTickets" class="container">
        <div class="caja">
            <div class="tipos row">
                <div class="tipo col">
                  <div id="estudiante" class="card">
                    <div class="tar card-body">
                      <h5 class="card-title">Estudiante</h5>
                      <p class="card-text">Tiene un descuento</p>
                      <p class=""><b>80%</b></p>
                      <span class="documentacion">*presentar documentación</span>
                    </div>
                  </div>
                </div>
                <div class="tipo col">
                  <div id="trainee" class="card">
                    <div class="tar card-body">
                        <h5 class="card-title"><b>Trainee</b></h5>
                        <p class="card-text">Tiene un descuento</p>
                        <p class=""><b>50%</b></p>
                        <span class="documentacion">*presentar documentación</span>
                    </div>
                  </div>
                </div>
                <div class="tipo col">
                    <div id="junior" class="card">
                      <div class="tar card-body">
                        <h5 class="card-title">Junior</h5>
                      <p class="card-text">Tiene un descuento</p>
                      <p class=""><b>15%</b></p>
                      <span class="documentacion">*presentar documentación</span>
                      </div>
                    </div>
                </div>
            </div>
            <div id="formTicket">
                <p class="convierteteEn">VENTA</p>
                <h2>VALOR DE TICKETS $200</h2>
                <div class="container">
                  <form id="form" class="row g-3">
                    <div class="col-md-6">
                      <input type="text" class="form-control" id="nombre" placeholder="Nombre">
                    </div>
                    <div class="col-md-6">
                      <input type="text" class="form-control" id="apellido" placeholder="Apellido">
                    </div>
                    <div class="col-md-12">
                        <input type="email" class="form-control" id="email" placeholder="Correo">
                    </div>
                    <div class="labelito col-md-6">
                        <label  for="cantidad">Cantidad</label>
                        <input type="number" class="form-control" id="cantidad" placeholder="Cantidad">
                    </div>
                    <div class="labelito col-md-6">
                        <label for="categoria">Categoría</label>
                        <select class="form-control" id="categoria">
                          <option>Estudiante</option>
                          <option>Trainee</option>
                          <option>Junior</option>
                        </select>
                    </div>
                    <div id="resumen" class="col-md-12 alert alert-primary labelito" role="alert">
                      Total a pagar:
                    </div>                        
                    <div class="col-md-6 d-grid gap-2">
                      <button id="enviar"class="btn" onclick="borrar()">Borrar</button>
                    </div>
                    <!---Boton Resumen--->
                    <div class="col-md-6 d-grid gap-2">
                        <button id="enviar" type="submit" class="btn">Resumen</button>
                    </div>
                  </form>
                </div>        
            </div>             
        </div>
      </section>   
    </main>
    <!-----FOOTER----->
    <footer class="text-center text-white">      
      <div class="container p-4 pb-0">        
        <section class="mb-4">
          <a class="floating m-2" href="#" >Preguntas frecuentes</a>
          <a class="floating m-2" href="#" >Contáctanos</a>
          <a class="floating m-2" href="#" >Prensa</a>
          <a class="floating m-2" href="#" >Conferencias</a>
          <a class="floating m-2" href="#" >Términos y condiciones</a>
          <a class="floating m-2" href="#" >Privacidad</a>
          <a class="floating m-2" href="#" >Estudiantes</a>
        </section>        
      </div>
    </footer>
    <!----Bootstrap----->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="./js/app.js"></script>  
</body>
</html>
