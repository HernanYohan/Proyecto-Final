
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Utilitarios;
using Logica;


public partial class vistas_GenerarToken : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         
        
        U_token nuevo = new U_token();
        
        l_generar_token token = new l_generar_token();

        nuevo = token.token(encriptar(JsonConvert.SerializeObject(nuevo)), "su link de acceso es: " + "http://localhost:36321/vistas/RecuperarContrase%C3%B1a.aspx?" + encriptar(JsonConvert.SerializeObject(token)), TB_User_Name.Text);


        L_Mensaje.Text = nuevo.Msm;
       

         /*if (int.Parse(validez.Rows[0]["id_cliente"].ToString()) > 0)
        {
            E_Token token = new E_Token();  
            token.Id_cliente = int.Parse(validez.Rows[0]["id_cliente"].ToString());
            token.Nombre = validez.Rows[0]["nombre"].ToString();
            token.Apellido = validez.Rows[0]["apellido"].ToString();
            token.Direccion = validez.Rows[0]["direccion"].ToString();
            token.Telefono = double.Parse(validez.Rows[0]["telefono"].ToString());
            token.Usuario = validez.Rows[0]["usuario"].ToString();
            token.Id_rol = int.Parse(validez.Rows[0]["id_rol"].ToString());
            token.Correo = validez.Rows[0]["correo"].ToString();
            token.Fecha = DateTime.Now.ToFileTimeUtc();

            String userToken = encriptar(JsonConvert.SerializeObject(token));
             dao.almacenarToken(userToken, token.Id_cliente);

          Correo correo = new Correo();

          String mensaje = "su link de acceso es: " + "http://localhost:36321/vistas/RecuperarContrase%C3%B1a.aspx?" + userToken;
          correo.enviarCorreo(token.Correo, userToken, mensaje);

          L_Mensaje.Text = "Su nueva contraseña ha sido enviada a su correo";
        }
        else if (int.Parse(validez.Rows[0]["id_cliente"].ToString()) == -2)
        {
            L_Mensaje.Text = "Ya extsite un token, por favor verifique su correo.";
        }
        else
        {
            L_Mensaje.Text = "El usurio digitado no existe";
        } */

    }
    private string encriptar(string input)
    {
        SHA256CryptoServiceProvider provider = new SHA256CryptoServiceProvider();

        byte[] inputBytes = Encoding.UTF8.GetBytes(input);
        byte[] hashedBytes = provider.ComputeHash(inputBytes);

        StringBuilder output = new StringBuilder();

        for (int i = 0; i < hashedBytes.Length; i++)
            output.Append(hashedBytes[i].ToString("x2").ToLower());

        return output.ToString();
    }
}