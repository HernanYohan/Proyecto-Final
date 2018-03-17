using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data;
using Utilitarios;

namespace Logica
{
    public class L_recupera_contrasena
    {

        public U_datos contraseña(Int32 dato1, String dato2)
        {
            D_usuario user = new  D_usuario();
            U_datos dato = new U_datos();
            DataTable info = user.obtenerUsusarioToken(dato2);

            if (dato1 > 0)
        {
            

            if (int.Parse(info.Rows[0][0].ToString()) == -1)
              dato.Msm = "<script type='text/javascript'>alert('El Token es invalido. Genere uno nuevo');window.location=\"login.aspx\"</script>";
            else if (int.Parse(info.Rows[0][0].ToString()) == -1)
              dato.Msm = "<script type='text/javascript'>alert('El Token esta vencido. Genere uno nuevo');window.location=\"login.aspx\"</script>";
            else
                dato.Index = int.Parse(info.Rows[0][0].ToString());
        }

            else
            {
              dato.Url ="login.aspx";
            }
           
            return dato;

    }

        public String mensaje(Int32 id_user,String contra)
        {
            D_usuario nuevo = new D_usuario();
            U_usuarios otro = new U_usuarios();

            otro.User_id = id_user;
            otro.Clave = contra;
            nuevo.actualziarContrasena(otro);
            String msm = "<script type='text/javascript'>alert('Su Contraseña ha sido actualizada.');window.location=\"login.aspx\"</script>";

            return msm;
        }
  }
}

