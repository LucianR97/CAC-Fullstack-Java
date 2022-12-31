
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro Conf Bs As</title>
    <link rel="stylesheet" href="./css/style.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">    
</head>
<body class="black" style="background: black">
    <section class="seccion-login">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-xl-10">
                    <div class="card rounded-3 text-black">
                        <div class="row g-0">
                            <div class="col-lg-6">
                                <div class="card-body p-md-5 mx-md-4">  
                                    <div class="text-center">
                                        <img src="./img/codoacodo.png"
                                        style="width: 100px;" alt="logo">
                                        <h4 class="mt-1 mb-3 pb-1">Conf Bs As</h4>
                                    </div>  
                                    <form action="register" method="post" autocomplete="off">
                                        <div class="text-center">
                                            <p class="mb-3">REGISTRARSE</p>
                                        </div> 
                                        <!----Ingrese su nombre--->
                                        <div class="form-outline mb-3">
                                          <label class="form-label" for="nombre">Nombre</label>
                                          <input type="text" id="nombre"  name="nombre" class="form-control" placeholder="Rosario"/>
                                        </div>
                                        <!----Ingrese su apellido--->
                                        <div class="form-outline mb-3">
                                          <label class="form-label" for="apellido">Apellido</label>
                                          <input type="text" id="apellido" name="apellido" class="form-control" placeholder="Gonzalez"/>                                                              
                                        </div>
                                        <!----Ingrese su email---->
                                        <div class="form-outline mb-3">
                                          <label class="form-label" for="email">Email</label>
                                          <input type="email" id="email" name="email" class="form-control" placeholder="rosario_1987@email.com"/>                                                                
                                        </div>
                                        <!----Ingrese la contraseña--->
                                        <div class="campo form-outline mb-3">
                                          <label class="label form-label" for="password">Contraseña</label>
                                          <input type="password" id="password" name="password" class="input-password form-control"/>                                     
                                        </div>
                                        <!----Boton registrarse---->
                                        <div class="text-center pt-1 mb-2 pb-1">
                                          <button class="btn btn-primary btn-block fa-lg  mb-3" type="submit">Registrarse</button>
                                        </div>
                                        <!----Boton a Inicio de Sesión---->
                                        <div class="d-flex align-items-center justify-content-center pb-4">
                                          <p class="mb-0 me-2">¿Ya tienes una cuenta?</p>
                                          <a href="./login.jsp">Inicia sesión</a>
                                        </div>
                                        <div class="text-center">
                                            <a href="index.jsp">Volver</a>
                                        </div>
                                    </form>                    
                                </div>
                            </div> 
                            <div class="col-lg-6 d-flex align-items-center bg-light">
                                <div class="textillo px-3 py-4 p-md-5 mx-md-4">
                                    <h4 class="mb-4">Unite a la Conf Bs As</h4>
                                    <p class="small mb-0">Te invitamos a que te registres para tener acceso a toda la info de la nueva Conf Bs As.</p>
                                </div>                    
                            </div>                             
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
