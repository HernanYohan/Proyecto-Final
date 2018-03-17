using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Encapsular
{
   public class e_Proveedor
    {
        private string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        private Double telefono;

        public Double Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }


        private string correo;

        public string Correo
        {
            get { return correo; }
            set { correo = value; }
        }
    }
}
