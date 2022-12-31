
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Conf Bs As</title>s
    <!-- CSS only -->
    <link rel="stylesheet" href="./css/style.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">    
</head>
<body class="black" style="background: black">
    <section class="seccion-login">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">        
                <div class="col-xl-10">
                    <div class="card rounded-3">
                        <div class="row g-0">              
                            <div class="col-lg-6 d-flex align-items-center bg-light">                                
                                <!-----Texto Bienvenida------------> 
                                <div class="px-3 py-4 p-md-5 mx-md-4">  
                                    <h4 id="textoBenvindo" class="mb-4">Bienvenidx de nuevo</h4>
                                    <p class="small mb-0">Gracias por formar parte de la Conf Bs As. Ingresa para conocer todas las actividades.</p>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card-body p-md-5 mx-md-4">  
                                    <div class="text-center">
                                        <img  src="./img/codoacodo.png"
                                           style="width: 100px;" alt="logo">
                                        <h4 class="mt-1 mb-3 pb-1">Conf Bs As</h4>
                                    </div>  
                                    <form action="login" method="post" autocomplete="off">
                                        <div class="text-center">
                                            <p class="mb-3">INICIO DE SESIÓN</p>
                                        </div> 
                                        <!-----Email----->
                                        <div class="form-outline mb-4">
                                            <label class="form-label" for="email">Email</label>
                                            <input type="email" id="email" name="email" class="form-control" placeholder="usuario@email.com"/> 
                                        </div>
                                        <!-----Password----->                    
                                        <div class="campo form-outline mb-4">
                                            <label class="label form-label" for="password">Contraseña</label>
                                            <input type="password" name="password" class="input-password form-control"/>
                                        </div>                  
                                        <!-----Boton Iniciar Sesión------->
                                        <div class="text-center pt-1 mb-2 pb-1">
                                           <button class="btn btn-primary btn-block fa-lg  mb-3" type="submit">Inicia sesión</button>
                                        </div>
                                        <div class="text-center mb-3">                        
                                            <a class="text-muted" href="#!">¿Olvidaste tu contraseña?</a>
                                        </div>
                                        <!-----Boton ir a Registro------->  
                                        <div class="d-flex align-items-center justify-content-center pb-4">
                                            <p class="mb-0 me-2">¿No tienes una cuenta?</p>
                                            <a href="./register.jsp">Crea una</a>
                                        </div>
                                        <div class="text-center">
                                            <a href="index.jsp">Volver</a>
                                        </div>                                        
                                    </form>
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
