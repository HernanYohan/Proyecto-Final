using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Encapsular;
using System.Data;



namespace Logica
{
    public class L_Cliente
    {
        public DataTable Registro(String nombrecliente, String apellidocliente, Double telefonocliente, String direcccioncliente, String correocliente, String usuario, String clave, Int32 rol)
        {
            e_cliente nuevo = new e_cliente();
            D_Cliente Cliente = new D_Cliente();

            nuevo.Nombre = nombrecliente;
            nuevo.Apellido = apellidocliente;
            nuevo.Telefono = telefonocliente;
            nuevo.Direccion = direcccioncliente;
            nuevo.Correo = correocliente;
            nuevo.Usuario = usuario;
            nuevo.Clave = clave;
            nuevo.Id_rol = rol;

            DataTable datos = Cliente.insertarCliente(nuevo);

            return datos;


        }

        public DataTable RegistroVisitante(String nombrecliente, String apellidocliente, Double telefonocliente, String direcccioncliente, String correocliente, String usuario, String clave)
        {
            e_cliente nuevo = new e_cliente();
            D_Cliente Cliente = new D_Cliente();

            nuevo.Nombre = nombrecliente;
            nuevo.Apellido = apellidocliente;
            nuevo.Telefono = telefonocliente;
            nuevo.Direccion = direcccioncliente;
            nuevo.Correo = correocliente;
            nuevo.Usuario = usuario;
            nuevo.Clave = clave;
            nuevo.Id_rol = 2;

            DataTable datos = Cliente.Registro(nuevo);

            return datos;


        }

        public DataTable mostrarcliente()
        {
            D_Cliente mostrarcliente = new D_Cliente();

            DataTable listarcliente = new DataTable();

            listarcliente = mostrarcliente.obtenercliente();

            return listarcliente;

        }

        public DataTable eliminarcliente(Int32 id_cliente)
        {
            D_Cliente Eliminar = new D_Cliente();

            DataTable listarcliente = new DataTable();

            listarcliente = Eliminar.eliminarCliente(id_cliente);

            return listarcliente;

        }

        public DataTable Editarcliente (int id_cliente, string nombre, string apellido, string direccion, double telefono, string correo, string clave, int id_rol)
        {
            D_Cliente Editar = new D_Cliente();

            DataTable listarcliente = new DataTable();

            listarcliente = Editar.modificarcliente(id_cliente,nombre,apellido,direccion,telefono,correo,clave,id_rol);

            return listarcliente;

        }

    }

}
