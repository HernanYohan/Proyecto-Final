using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using Utilitarios;

public partial class vistas_RecuperarContraseña : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        L_recupera_contrasena nueva = new L_recupera_contrasena();
        U_datos nuevo = new U_datos();
        nuevo = nueva.contraseña(Request.QueryString.Count, Request.QueryString[0]);
        try
        {
           this.RegisterStartupScript("mensaje", nuevo.Msm);
           Session["user_id"] = nuevo.Index;
       
           Response.Redirect(nuevo.Url);
        }
        catch (Exception ec)
        {

        }
     
    }
    protected void B_Cambiar_Click(object sender, EventArgs e)
    {
        L_recupera_contrasena nueva = new L_recupera_contrasena();

        String mensaje = nueva.mensaje(int.Parse(Session["user_id"].ToString()), Tb_Contraseña.Text);
        this.RegisterStartupScript("mensaje", mensaje);
    }
}