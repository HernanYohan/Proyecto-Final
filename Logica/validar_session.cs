using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
   public class validar_session
    {

       public String validar(Int32 id_usrer)
       {


           if (id_usrer == null)
           {
               return "falso";
           }
           else
           {
               return ""+id_usrer;
           }
       } 
    }
}
