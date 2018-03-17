using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Datos;
using Datos;
using Utilitarios;

namespace Logica
{
    
    public class L_usuario
    {
        public U_usuarios logear(String usuario, String clave, String sesion)
        {
            
            D_usuario datos_usuario = new D_usuario();
            DataTable data = datos_usuario.loggin(usuario, clave);
            Mac datos = new Mac();
            Int32 rol = 0;
            

            U_usuarios datosUsuario = new U_usuarios();

            if (int.Parse(data.Rows[0]["id_cliente"].ToString()) > 0)
            {

                datosUsuario.User_id = Int32.Parse(data.Rows[0]["id_cliente"].ToString());

                datosUsuario.Rol = Int32.Parse(data.Rows[0]["id_rol"].ToString());
                rol = Int32.Parse(data.Rows[0]["id_rol"].ToString());
                datosUsuario.Intentos = Int32.Parse(data.Rows[0]["intebtos"].ToString());

                if(datosUsuario.Intentos < 3){
                datosUsuario.Username = data.Rows[0]["id_cliente"].ToString();
                datosUsuario.Ip = datos.ip();
                datosUsuario.Mac = datos.mac();
                datosUsuario.Session = sesion;

                datos_usuario.guardadoSession(datosUsuario);
                }
                else
                {
                    datosUsuario.Msm = "<script type='text/javascript'>alert('Error: Esperar 30 minutos para iniciar session.');window.location=\"login.aspx\"</script>";
                    return datosUsuario;   
                }

               

            }
          
            


            if (rol == 1 )
            {

                datosUsuario.Url = "ModificarProducto.aspx";
                
            }
            else
            {
                if (rol == 2)
                {
                    datosUsuario.Url = "Catalogo_Cliente.aspx";
                  
                }
                else
                {
                     
                    datosUsuario.Msm = "<script type='text/javascript'>alert('Error: Usuario o Clave incorrectos.');window.location=\"login.aspx\"</script>";
                
                }
            }



            return datosUsuario;
        }


        public DataTable editar_perfil(Int32 id_cliente)
        {
            D_usuario editar = new D_usuario();
            DataTable perfil = new DataTable();

            perfil = editar.editarPerfil(id_cliente);

            return perfil;
         }

        public DataTable editar_perfil_usuario(int id_cliente, string nombre, string apellido, string direccion, double telefono, string correo, string clave)
        {
            D_usuario editar_usuario = new D_usuario();
            DataTable perfil_usuario = new DataTable();

            perfil_usuario = editar_usuario.editarcliente(id_cliente,nombre,apellido,direccion,telefono,correo,clave);

            return perfil_usuario;
        }

    }
}
