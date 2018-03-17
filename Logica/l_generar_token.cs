using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;
using Datos;

namespace Logica
{
   public class l_generar_token
    {
       public U_token token( String usertoken, String mensaje, String username){

           
           U_token token = new U_token();
            D_usuario datos = new D_usuario();
          DataTable validez = datos.generarToken(username);

          try
          {

          
          if (Int32.Parse(validez.Rows[0]["id_cliente"].ToString()) > 0)
          {

              token.Id_cliente = int.Parse(validez.Rows[0]["id_cliente"].ToString());
              token.Nombre = validez.Rows[0]["nombre"].ToString();
              token.Apellido = validez.Rows[0]["apellido"].ToString();
              token.Direccion = validez.Rows[0]["direccion"].ToString();
              token.Telefono = double.Parse(validez.Rows[0]["telefono"].ToString());
              token.Usuario = validez.Rows[0]["usuario"].ToString();
              token.Id_rol = int.Parse(validez.Rows[0]["id_rol"].ToString());
              token.Correo = validez.Rows[0]["correo"].ToString();
              token.Fecha = DateTime.Now.ToFileTimeUtc();

              datos.almacenarToken(usertoken, token.Id_cliente);
              Correo correo = new Correo();
              correo.enviarCorreo(token.Correo, usertoken, mensaje);

              token.Msm = "Su nueva contraseña ha sido enviada a su correo";
          }
          }
          catch (Exception ec)
          {
        
                  token.Msm = "El usurio digitado no existe";
          }
        
          return token;
       }

       

   
    }
}
