using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;
using Datos;

namespace Logica
{
   public class L_MasterAdmin
    {
        public U_usuarios perfil(Int32 ddl2, String sess,Int32 id_user)
        {

            U_usuarios msm2 = new U_usuarios();

            switch (ddl2)
            {


                case 1:
                    msm2.Url = "Editar_Administrador.aspx";
                    msm2.Sesion1 = "" + id_user;
                    break;

                case 2:
                    msm2.Url = "ver_pqr.aspx";
                    msm2.Sesion1 = "" + id_user;
                    break;

                case 3:
                    msm2.Sesion1 = null;
                    msm2.Nombre1 = null;

                    D_usuario user = new D_usuario();
                    U_usuarios datos = new U_usuarios();

                    datos.Session = sess;
                    user.cerrarSession(datos);
                    msm2.Url = "productos.aspx";
                    break;


            }

            return msm2;
        }
    }
}
