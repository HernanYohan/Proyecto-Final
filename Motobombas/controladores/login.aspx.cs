using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Utilitarios;
using Logica;

public partial class Vista_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void B_iniciar_Click(object sender, EventArgs e)
    {

        
        ClientScriptManager cm = this.ClientScript;
        U_usuarios datos = new U_usuarios();
        L_usuario usuario = new L_usuario();
        datos = usuario.logear(TB_usuario.Text.ToString(), TB_clave.Text.ToString(), Session.SessionID);
        Session["id_usuaro"] = datos.User_id;
        Session["id_rol"] = datos.Rol;
        
        try { 
         Response.Redirect(datos.Url);
        }
        catch (Exception exc)
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", datos.Msm);
        }
      

        
    }
    protected void B_registrarse_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registro.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("GenerarToken.aspx");
    }
    protected void TB_usuario_TextChanged(object sender, EventArgs e)
    {

    }
}
