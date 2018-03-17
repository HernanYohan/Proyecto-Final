using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Datos;

namespace Logica
{
    public class L_Pedido
    {


        public DataTable verHistorialPedido()
        {
            D_Pedido pedido = new D_Pedido();
            DataTable ver = new DataTable();

            ver = pedido.obtenerPedidos();

            return ver;
        }
    }
}
