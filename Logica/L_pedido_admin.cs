using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;
using Datos;
using System.Data;

namespace Logica
{
    public class L_pedido_admin
    {
        public void Rpedido(Int32 coman1, String coman, Int32 id_categoria,String referencia,Int32 cantidad)
        {


            U_pedido_admin nuevo = new U_pedido_admin();
            D_pedido_admin agregar = new D_pedido_admin();
            D_Proveedor ver = new D_Proveedor(); 
          

            if (coman == "B_pedido")
            {

                int index;

                index = coman1;

                nuevo.Producto =id_categoria;
                nuevo.Referencia =referencia;
                nuevo.Proveedor = index;
                nuevo.Cantidad = cantidad;
                agregar.insertarPedido(nuevo);
                

               
            }
           
        }
        public DataTable seleccionar(String ver)
        {
          D_pedido_admin verp = new D_pedido_admin();

            DataTable listaproveedor = new DataTable();

            listaproveedor = verp.seleccionar(ver);

            return listaproveedor;

        }


    }
}
