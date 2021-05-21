package com.example.CRMVentasWeb;

public class ClienteDAO {
    public static Cliente buscarPorNombre(String nombreCliente) {
        Cliente cliente = new Cliente();
        cliente.setIdCliente(23);
        cliente.setNombre(nombreCliente);
        cliente.setCargo(("un cargo"));
        cliente.setEmail("un email");
        cliente.setEmpresa("una empresa");
        cliente.setTelefono("un tel");
        return cliente; //MOCK libreria MOCKITO
    }

    public static void guardarCliente(Cliente unClinente) {

    }
}
