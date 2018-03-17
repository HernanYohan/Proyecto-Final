using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;
using Datos;

namespace Logica
{
    public class L_seleccion_carrito
    {
        public U_datos venta(String coman1, String coman2, Int32 cantidad, Int32 id_cliente, Int32 id_producto)
        {
            U_venta nueva = new U_venta();
            D_carrito datos = new D_carrito();
            U_datos msm = new U_datos();
            if (coman1 == "B_agregarp")
            {
                nueva.Index = int.Parse(coman2.ToString());

                if (cantidad <= nueva.Index)
                {
                    nueva.Cantidad = cantidad;
                    nueva.Id_estado = 2;
                    nueva.Id_cliente = id_cliente;
                    nueva.Id_producto = id_producto;
                    datos.agregarCarrito(nueva);

                    msm.Url = "<script type='text/javascript'>alert('Producto agregado corectamente');window.location=\"seleccionCarrito.aspx\"</script>";

                }
                else
                {
                    msm.Url = "<script type='text/javascript'>alert('No contamos con la cantidad solicitada. ');window.location=\"Catalogo_Cliente.aspx\"</script>";
                }
            }
            return msm;
        }
    }
}
