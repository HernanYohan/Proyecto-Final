using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;
using Datos;

namespace Logica
{
  public   class L_MasterVisitante
    {

     public U_usuarios catalogo(Int32 ddl)
       {
           U_usuarios msm1 = new U_usuarios(); 
           switch (ddl)
           {
               case 1:
                   msm1.Url="productos.aspx";
                   break;
               case 2:

                  msm1.Url="Bombas.aspx";
                   break;
               case 3:
                   msm1.Url="Tanques.aspx";
                   break;
               case 4:
                  msm1.Url="Accesorios.aspx";
                   break;



           }

           return msm1;
       }

 
    }
  }

