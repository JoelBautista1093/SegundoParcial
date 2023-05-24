<%-- 
    Document   : index
    Created on : 23 may. de 2023, 22:06:06
    Author     : joelb
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>SEGUNDO PARCIAL TEM-742</h3>
        <h3>Nombre: Joel Valentin Bautista Chalco</h3>
        <h3>Carnet: 10933174</h3>
    
        <h1>Gestion de Productos</h1>
        
        <p><a href="inicio?action=add">Nuevo Producto</a></p>
        
        <table border="1" >
                <tr>
                    <th>Id</th>
                    <th>Descripcion</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>Categoria</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${productos}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.descripcion}</td>
                        <td>${item.cantidad}</td>
                        <td>${item.precio}</td>
                        <td>${item.categoria}</td>
                        <td><a href="inicio?action=edit&id=${item.id}">Editar</a></td>
                        <td><a href="inicio?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro?'))">Eliminar</a></td>
                    </tr>
                </c:forEach>
        </table>
    </body>
</html>
