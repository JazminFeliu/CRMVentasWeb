package com.example.CRMVentasWeb;
import java.util.List;

public class ClienteDAO {

    public static List<Cliente> getClientes(){
        return(List<Cliente>) List.of(
        new Cliente(1, "jazmin","Xeven","ciso","111222","jaz@empresa.com"),
        new Cliente(2, "jose","ada","ceo","11331222","jose@empresa.com"),
        new Cliente(3, "jimena","nasa","ciso","5454","jime@rempresa.com"),
        new Cliente(4, "seba","ter","ciso","111d445222","seba@empresa.com"),
        new Cliente(5, "santi","ada","cto","5545","santi@empresa.com"),
        new Cliente(6, "rocio","nasa","ceo","7884","ro@empresa.com")
        );

    }
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

    public static Cliente buscarPorID(Integer idCliente){
        Cliente cliente = new Cliente(
                idCliente, "nombre de mentira", "un cargo", "empresa falsa", "1234", "mail falso"
        );
        return cliente;
    }
}
