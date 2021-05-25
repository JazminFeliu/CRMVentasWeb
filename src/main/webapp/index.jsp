<%@ page import="com.example.CRMVentasWeb.Cliente" %>
<%@ page import="com.example.CRMVentasWeb.ClienteDAO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String nombreCliente = request.getParameter("nombreCliente")!=null?request.getParameter("nombreCliente"):"";
%>
<!DOCTYPE html>
<html>
<head>
    <title>CRMVentas - Clientes</title>
    <style>
        *{font-family:sans-serif}
        body{padding: 15px; background-color:beige;}
        table{width: 80%; border:1px solid black;}
        td,tr,th{border:1px solid darkgrey;}
    </style>
</head>
<body>
<h1>Buscar clientes</h1>
<br/>
<%
    if(request.getParameter("guardar")!=null && request.getParameter("guardar").equals("ok"))
        out.println("<hr />Cliente guardado en la base de datos! <hr />");
%>
<form action="editarCliente.jsp" method="post">
    <button type="submit">Crear cliente</button>
</form>
<form action="index.jsp" method="get">
    <input type="search" name="nombreCliente" value="<%=nombreCliente%>" />
    <br/><br/>
    <button type="submit">Buscar</button>
</form>
<br/><br/>
<% if(!nombreCliente.isEmpty()){ %>
<div style="text-align: center">
    <table>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Empresa</th>
            <th>Cargo</th>
            <th>Telefono</th>
            <th>Email</th>
            <th>Editar</th>
        </tr>
        <%
            List<Cliente> clientes = ClienteDAO.getClientes();
            for(Cliente cliente: clientes){
        %>
        <tr>
            <td><%=cliente.getIdCliente()%></td>
            <td><%=cliente.getNombre()%></td>
            <td><%=cliente.getEmpresa()%></td>
            <td><%=cliente.getCargo()%></td>
            <td><%=cliente.getTelefono()%></td>
            <td><%=cliente.getEmail()%></td>
            <td><a href="editarCliente.jsp?idCliente=<%=cliente.getIdCliente()%>">
                <img src="penfree.png" width="30px" alt="editar" />
                </a></td>
        </tr>
        <%
            }
        %>
    </table>
</div>
<% } %>
<br/><br/>
</body>
</html>