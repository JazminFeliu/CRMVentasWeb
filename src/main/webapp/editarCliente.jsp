<%@ page import="com.example.CRMVentasWeb.ClienteDAO" %>
<%@ page import="com.example.CRMVentasWeb.Cliente" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String nombreCliente = "";
    String idClientetexto =(request.getParameter("idCliente")!=null)?request.getParameter("idCliente"):"";
    String empresa ="";
    String cargo ="";
    String telefono ="";
    String email ="";
    if(!idClientetexto.isEmpty()){  //estoy buscando un cliente real
        Integer idCliente = Integer.valueOf(idClientetexto);
        Cliente clienteBuscado = ClienteDAO.buscarPorID(idCliente);
        nombreCliente = clienteBuscado.getNombre();
        empresa = clienteBuscado.getEmpresa();
        cargo = clienteBuscado.getCargo();
        telefono = clienteBuscado.getTelefono();
        email = clienteBuscado.getEmail();
    }
%>
<html>
<head>
    <title>CRMVEntas - <%=(idClientetexto.isEmpty())?"Crear":"Editar"%> cliente</title>
    <style>
        body{padding:15px; background-color: darkgrey }
        form{width: fit-content;}
        form input{ margin-right: 5px; }
    </style>
</head>
<body>
<h1><%=(nombreCliente.isEmpty())?"Crear":"Editar"%> Cliente</h1>
<form action="guardarClienteServlet" method="post">
    <label>ID Cliente: </label><input type="text" name="IdCliente" value="<%=idClientetexto%>" disabled/>
    <br /><br />
    <label>Nombre: </label><input type="text" placeholder="Nombre" name="nombre" value="<%=nombreCliente%>" />
    <br /><br />
    <label>Empresa: </label><input type="text" placeholder="empresa" name="empresa" value="<%=empresa%>" />
    <br /><br />
    <label>Cargo: </label><input type="text" placeholder="cargo" name="cargo" value="<%=cargo%>"/>
    <br /><br />
    <label>Telefono: </label><input type="text" placeholder="telefono" name="telefono" value="<%=telefono%>"/>
    <br /><br />
    <label>Email: </label><input type="text" placeholder="Email" name="email" value="<%=email%>"/>
    <br /><br />
    <button type="submit">Guardar</button>
    <button type="submit" formaction="index.jsp">Cancelar</button>
</form>
</body>
</html>
