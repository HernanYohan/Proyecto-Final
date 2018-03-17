using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;
namespace Logica
{
   public class L_bombas_cliente
    {
        public U_datos valida(String coman1, String coman2)
        {
            U_datos dato = new U_datos();
            if (coman1 == "B_obtener_bombas")
            {
                dato.Index = int.Parse(coman2.ToString());
                dato.Url = "seleccionCarrito.aspx";
            }
            return dato;
        }
    }
}
