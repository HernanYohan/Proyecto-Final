using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using Utilitarios;
public partial class vistas_seleccionCarrito : System.Web.UI.Page
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
    protected void GV_Verproducto_SelectedIndexChanged(object sender, EventArgs e)
    {

    
    }
    protected void B_continuar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Catalogo_Cliente.aspx");
    }
    protected void TB_cantidad_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GV_Verproducto_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        L_seleccion_carrito nuevo = new L_seleccion_carrito();
        U_datos msm = new U_datos();
        msm = nuevo.venta(e.CommandName, e.CommandArgument.ToString(), Int32.Parse(TB_cantidad.Text), Int32.Parse(Session["id_usuaro"].ToString()), Int32.Parse(Session["id_producto"].ToString()));
        
            ClientScriptManager cm = this.ClientScript;
            
                cm.RegisterClientScriptBlock(this.GetType(), "", msm.Url);
            
    }
    protected void B_agregarp_Click(object sender, EventArgs e)
    {

    }
}