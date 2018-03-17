using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

public partial class ModificarProveedor : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void GV_listaproveedores_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}