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
  public  class L_Catologo
    {
        public DataTable MostrarBombas ()
        {
            D_Catalogo mostrar = new D_Catalogo();
            DataTable ListarBombas = new DataTable(); 

            ListarBombas = mostrar.obtenerbombas();

            return ListarBombas;

        }

        public DataTable mostaraAccesorios()
        {
            D_Catalogo ver = new D_Catalogo();
            DataTable verAccesorios = new DataTable();

            verAccesorios = ver.obteneraccesorios();

            return verAccesorios;

        }


        public DataTable mostaraTanques()
        {
            D_Catalogo obtener = new D_Catalogo();
            DataTable verTanques = new DataTable();

            verTanques = obtener.obtenertanques();

            return verTanques;

        }

    }
}
