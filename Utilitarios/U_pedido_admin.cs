using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilitarios
{
   public class U_pedido_admin
    {

        private Int32 producto;

        public Int32 Producto
        {
            get { return producto; }
            set { producto = value; }
        }
        private String referencia;

        public String Referencia
        {
            get { return referencia; }
            set { referencia = value; }
        }
        private String msm;

        public String Msm
        {
            get { return msm; }
            set { msm = value; }
        }
        private Int32 proveedor;

        public Int32 Proveedor
        {
            get { return proveedor; }
            set { proveedor = value; }
        }

        private Int32 cantidad;

        public Int32 Cantidad
        {
            get { return cantidad; }
            set { cantidad = value; }
        }
    }
}
