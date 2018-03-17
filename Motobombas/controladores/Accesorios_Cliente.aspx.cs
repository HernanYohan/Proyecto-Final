using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using Utilitarios;

public partial class vistas_Accesorios_Cliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            validar_session sesion = new validar_session();
            Int32 valida = Int32.Parse(sesion.validar(Int32.Parse(Session["id_usuaro"].ToString())));
        }
        catch (Exception es)
        {
            Response.Redirect("login.aspx");
        }
        Response.Cache.SetNoStore();
    }
    protected void GV_accesorios_cliente_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        L_accesorios_cliente validar = new L_accesorios_cliente();
        U_datos dato = new U_datos();

        dato = validar.valida(e.CommandName, e.CommandArgument.ToString());
        
            Session["id_producto"] = dato.Index;
            
            Response.Redirect(dato.Url);

       
        
    }
    protected void GV_accesorios_cliente_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}