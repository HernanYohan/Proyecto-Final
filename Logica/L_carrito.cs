using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;
using Datos;

namespace Logica
{
    public class L_carrito
    {
        public U_datos valida(String coman1, String coman2){
          
            U_datos dato = new U_datos();
            D_carrito funcion = new D_carrito();
            if (coman1 == "B_eliminar")
            {
                
                dato.Index = int.Parse(coman2.ToString());
                dato.Url = "Carrito.aspx";
                funcion.eliminarPedido(dato.Index);
            }
            return dato;
        }


    }
}
