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
    public class L_Proveedor
    {
        public DataTable Registro(String nombre, Double telefono, String correo)
        {
            e_Proveedor nuevo = new e_Proveedor();
            D_Proveedor proveedor = new D_Proveedor();



            nuevo.Nombre = nombre;
            nuevo.Telefono = telefono;
            nuevo.Correo = correo;

            DataTable datos = proveedor.insertarproveedor(nuevo);

            return datos;
        }
        public DataTable mostrarproveedor()
        {
            D_Proveedor mostrarproveedor = new D_Proveedor();

            DataTable listaproveedor = new DataTable();

            listaproveedor = mostrarproveedor.obtenerproveedor();

            return listaproveedor;

        }

        public DataTable eliminarproveedor(Int32 id_proveedor)
        {
            D_Proveedor eliminarproveedor = new D_Proveedor();

            DataTable listaproveedor = new DataTable();

            listaproveedor = eliminarproveedor.eliminarproveedor(id_proveedor);

            return listaproveedor;

        }

        public DataTable editarproveedor(int id_proveedor, string nombre, double telefono, string correo)
        {
            D_Proveedor editarproveedor = new D_Proveedor();

            DataTable listaproveedor = new DataTable();

            listaproveedor = editarproveedor.modificarproveedor(id_proveedor,nombre,telefono,correo);

            return listaproveedor;

        }



     

    }

}
