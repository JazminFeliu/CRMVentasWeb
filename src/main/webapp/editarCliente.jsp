<%@ page import="com.example.CRMVentasWeb.ClienteDAO" %>
<%@ page import="com.example.CRMVentasWeb.Cliente" %><%--
  Created by IntelliJ IDEA.
  User: jazmin
  Date: 5/20/21
  Time: 8:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String nombreCliente = request.getParameter("nombreCliente");
    String idClientetexto ="";
    String empresa ="";
    String cargo ="";
    String telefono ="";
    String email ="";
    if(nombreCliente !=null){  //estoy buscando un cliente real
        Cliente clienteBuscado = ClienteDAO.buscarPorNombre(nombreCliente);
        nombreCliente = clienteBuscado.getNombre();
        idClientetexto =String.valueOf(clienteBuscado.getIdCliente());
        empresa = clienteBuscado.getEmpresa();
        cargo = clienteBuscado.getCargo();
        telefono = clienteBuscado.getTelefono();
        email = clienteBuscado.getEmail();
    }else{
        nombreCliente ="";
    }
%>
<html>
<head>
    <title>CRMVEntas - <%=(idClientetexto.isEmpty())?"Crear":"Editar"%> Cliente</title>
    <style>
        body{padding:15px; background-color: darkgrey }
        form{width: fit-content;}
        form input{ margin-right: 5px; }
    </style>
</head>
<body>
<h1><%=(idClientetexto.isEmpty())?"Crear":"Editar"%> Cliente</h1>
<form action="guardarClienteServlet" method="post">
    <label>ID Cliente: </label><input type="text" placeholder="ID Cliente" name="IdCliente" value="<%=idClientetexto%>" disabled/>
    <br /><br />
    <label>Nombre: </label><input type="text" placeholder="Nombre" name="nombre" value="<%=nombreCliente%>" />
    <br /><br />
    <label>Cargo: </label><input type="text" placeholder="cargo" name="cargo" value="<%=cargo%>"/>
    <br /><br />
    <label>Empresa: </label><input type="text" placeholder="empresa" name="empresa" value="<%=empresa%>" />
    <br /><br />
    <label>Telefono: </label><input type="text" placeholder="telefono" name="telefono" value="<%=telefono%>"/>
    <br /><br />
    <label>Email: </label><input type="text" placeholder="Email" name="email" value="<%=email%>"/>
    <br /><br />
    <button type="submit">Guardar</button>
</form>
</body>
</html>
