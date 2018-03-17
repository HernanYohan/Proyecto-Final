using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class vistas_Accesorios : System.Web.UI.Page
{
    //linea de prueba para el commit 
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
    }
    protected void B_obtener_accesorio_Click(object sender, ImageClickEventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;
        cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Debes iniciar session, para ver detalles y adquirir nuestro producto :');</script>");
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
    {

    }
}