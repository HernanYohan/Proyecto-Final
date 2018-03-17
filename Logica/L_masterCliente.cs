using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;
using Datos;

namespace Logica
{
   public  class L_masterCliente
    {

       public U_usuarios perfil(Int32 ddl,String ses,Int32 id_user)
       {

           U_usuarios msm = new U_usuarios(); 

           switch (ddl)
           {


               case 1:
                   msm.Url = "editar_perfil.aspx";
                   msm.Sesion1 = "" + id_user;
                   break;

               case 2:
                   msm.Sesion1 = null;
                   msm.Nombre1 = null;

                   D_usuario user = new D_usuario();
                   U_usuarios datos = new U_usuarios(); 

                   datos.Session = ses;
                   user.cerrarSession(datos);
                   msm.Url = "productos.aspx";
                   break;


           }
         
           return msm;
       }

       public U_usuarios catalogo(Int32 ddl)
       {
           U_usuarios msm1 = new U_usuarios(); 
           switch (ddl)
           {
               case 1:
                   msm1.Url="Catalogo_Cliente.aspx";
                   break;
               case 2:

                  msm1.Url="Bombas_Cliente.aspx";
                   break;
               case 3:
                   msm1.Url="Tanques_Cliente.aspx";
                   break;
               case 4:
                  msm1.Url="Accesorios_Cliente.aspx";
                   break;



           }

           return msm1;
       }

 
    }
    
}
