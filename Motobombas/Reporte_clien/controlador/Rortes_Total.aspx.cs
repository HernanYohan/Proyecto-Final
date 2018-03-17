using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
public partial class vistas_Rortes_Total : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["id_usuaro"] == null)
            Response.Redirect("Login.aspx");

        L_factura nueva = new L_factura();
        CRS_Total.ReportDocument.SetDataSource(nueva.llenarFactura( Int32.Parse(Session["id_usuaro"].ToString())));
        CRV_Total.ReportSource = CRS_Total;

        Response.Cache.SetNoStore();

    }

   
}