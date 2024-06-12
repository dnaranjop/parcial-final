<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/Libros"
                   user="root" password="grood1144"/>
                   
  <sql:query dataSource="${dbSource}" var="Libros">
    SELECT * FROM Libros;
</sql:query>	                   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Biblioteca</h1>
<table border="1">
        <tr>
            <th>ID</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Género</th>
            <th>Año de Publicación</th>
            <th>ISBN</th>
            <th>Fecha de Préstamo</th>
            <th>Fecha de Entrega</th>
            <th>Prestado a</th>
            <th>Estatus</th>
            <th>Ubicación</th>
        </tr>
    <c:forEach var="row" items="${Libros.rows}">
        <tr>
                <td><c:out value="${libro.id}"/></td>
                <td><c:out value="${libro.titulo}"/></td>
                <td><c:out value="${libro.autor}"/></td>
                <td><c:out value="${libro.genero}"/></td>
                <td><c:out value="${libro.anio_publicacion}"/></td>
                <td><c:out value="${libro.isbn}"/></td>
                <td><c:out value="${libro.fecha_prestamo}"/></td>
                <td><c:out value="${libro.fecha_entrega}"/></td>
                <td><c:out value="${libro.prestado_a}"/></td>
                <td><c:out value="${libro.estatus}"/></td>
                <td><c:out value="${libro.ubicacion}"/></td>
            </tr>
    </c:forEach>
</table>

</body>
</html>
