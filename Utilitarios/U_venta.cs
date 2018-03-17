using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilitarios
{
   public  class U_venta
    {
        private Int32 cantidad;

        public Int32 Cantidad
        {
            get { return cantidad; }
            set { cantidad = value; }
        }

        private String direccion;

        public String Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }
        private Int32 id_estado;

        public Int32 Id_estado
        {
            get { return id_estado; }
            set { id_estado = value; }
        }
        private Int32 index;

        public Int32 Index
        {
            get { return index; }
            set { index = value; }
        }
        private Int32 id_cliente;

        public Int32 Id_cliente
        {
            get { return id_cliente; }
            set { id_cliente = value; }
        }
        private Int32 id_producto;

        public Int32 Id_producto
        {
            get { return id_producto; }
            set { id_producto = value; }
        }
    }
}
