<%-- 
    Document   : VistaAdmin
    Created on : 7/09/2021, 11:31:11 a. m.
    Author     : Ana María
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@page import= "mintic.edu.modelo.Usuario" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vista de Administrador</title>
        <link rel="stylesheet" href="https: //maxcdn.bootstrappcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQlaoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJ1SAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
    </head>
    <body>
        <%
            Usuario objusuario= new Usuario();
            HttpSession objSesion= request.getSession();
            objusuario= (Usuario)objSesion.getAttribute("objusuario");
         %>
         <nav class="navbar navbar-expand lg navbar-ligth bg-info">
             <a class="navbar-brand" href =""> Tienda genérica </a>
             <button>
                 <div class="collapse navbar-collapse " id=" navbarSupportedContent">
                     <ul class="navbar- nav mr-auto">
                         <li class="nav-item">
                             <a style="margin-left: 10px; border:none;" class="btn btn-outline-light" href="#"
                                target="myFrame"> Usuarios</a>
                         </li>
                         <li class="nav-item">
                             <a style=" margin-left: 10px; border:none;" class="btn btn-outline-light" href="#" 
                                target="myFrame"> Clientes</a>
                         </li>
                         <li class="nav-item">
                             <a style=" margin-left: 10px; border:none;" class="btn btn-outline-light" href="#" 
                                target="myFrame"> Proveedores</a>
                         </li>
                         <li class="nav-item">
                             <a style=" margin-left: 10px; border:none;" class="btn btn-outline-light" href="#" 
                                target="myFrame"> Productos</a>
                         </li>
                         <li class="nav-item">
                             <a style=" margin-left: 10px; border:none;" class="btn btn-outline-light" href="#" 
                                target="myFrame"> Ventas</a>
                         </li>
                         <li class="nav-item">
                             <a style=" margin-left: 10px; border:none;" class="btn btn-outline-light" href="#" 
                                target="myFrame"> Reportes</a>
                         </li>
                         
                     </ul>
                     <ul class="navbar-nav justify-content-end">
                         <li class="nav-item dropdown">
                             <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data- toggle="dropdown"aria-haspopup="true"aria-expanded="false">
                                 <i class="fas fa-user-lock"></i> ${objusuario.getNombreUsuario()} ${objusuario.getTipoUsuario()}
                             </a>
                             <div class="dropdown-menu dropdown-menu-rigth text-center" aria-labelledby="navbarDropdown">
                                 <a class="dropdown-item" href="#"><img src="../img/user.png" height="50" width="50"></a>
                                 <a class="dropdown-item" href="#">${objusuario.getTipoUsuario()}</a>
                                 <a class="dropdown-item" href="#">${objusuario.getCorreo()}</a>
                                 <div class="dropdown-divider"></div>
                                 <a class="dropdown-item" href="cerrarSesion.jsp">Salir</a>
                             </div>
                         </li>
                     </ul>
                 </div>
              </nav>
              <div class="m-4" style="height: 550px;"   >
                  <iframe name="myframe" style="heigth: 100%; width: 100%; border: none"></iframe>
                  
                                  
                   </div>   
                  <script src="https://"
                  <script src="https://"
                  <script src="https://"
                </body>
        

