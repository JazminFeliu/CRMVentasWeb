<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>CRMVentas - Clientes</title>
</head>
<body>
<h1>Buscar clientes</h1>
<br/>
<%
    String guardarParam = request.getParameter("guardar");
%>
<%
    if(guardarParam!= null&& guardarParam.equals("ok")) {
        out.println("<hr />");
        out.println("Cliente guardado en la base de datos!");
        out.println("<hr />");
    }
%>

<form action="buscarServlet" method="get">
<input type="search" name="nombreCliente" />
<br /><br/>
<button type="submit">Buscar</button>
</form>
<!---a href="hello-servlet">Hello Servlet</a---->
</body>
</html>