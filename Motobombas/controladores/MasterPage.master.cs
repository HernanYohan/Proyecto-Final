using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using Utilitarios;


public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["estado"] != null && !IsPostBack)
        {
            DDL_productos.SelectedValue = Session["estado"].ToString();
        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("productos.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("productos.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registro.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        Session["estado"] = DDL_productos.SelectedValue;

        L_MasterVisitante Ucatalogo = new L_MasterVisitante();
        U_usuarios msm = new U_usuarios();

        msm = Ucatalogo.catalogo(Int32.Parse(DDL_productos.SelectedValue));

        Response.Redirect(msm.Url);
        /* int n = 0;

         do
         {

             Session["estado"] = DDL_productos.SelectedValue;

             switch (int.Parse(DDL_productos.SelectedValue))
             {
                 case 1:
                     Response.Redirect("productos.aspx");
                     break;
                 case 2:
                     Response.Redirect("Bombas.aspx");
                     break;
                 case 3:
                     Response.Redirect("Tanques.aspx");

                     break;
                 case 4:
                     Response.Redirect("Accesorios.aspx");
                     break;


             }

         } while (n < 0);
        
        
        
     }
   */
    }
    protected void B_pqr_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PQR_visitante.aspx");
    }
}
