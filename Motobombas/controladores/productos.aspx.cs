using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_productos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void B_descripcion_Click(object sender, ImageClickEventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;
        cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Debes iniciar session, para ver detalles y adquirir nuestro producto :');</script>");
       
    }
}