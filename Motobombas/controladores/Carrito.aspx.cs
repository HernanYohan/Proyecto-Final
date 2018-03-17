using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using Utilitarios;

public partial class vistas_Carrito : System.Web.UI.Page
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    protected void GV_venta_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        L_carrito valida = new L_carrito();
        U_datos dato = new U_datos();
        dato = valida.valida(e.CommandName, e.CommandArgument.ToString());

       
            Session["id_venta"] = dato.Index;
            Response.Redirect(dato.Url);

        
    }
    protected void B_comprar_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("Rortes_Total.aspx");
    }
    protected void B_eliminar_Click(object sender, EventArgs e)
    {

    }
}