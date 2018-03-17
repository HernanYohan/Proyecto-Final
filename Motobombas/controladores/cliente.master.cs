using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using Utilitarios;


public partial class cliente : System.Web.UI.MasterPage
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
       /* if (Session["estados"] != null && !IsPostBack)
        {
          DDL_catalogo.SelectedValue = Session["estados"].ToString();
        }

        if (Session["perfil"] != null && !IsPostBack)
        {
            DDL_perfilC.SelectedValue = Session["perfil"].ToString();
        }*/
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Catalogo_Cliente.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {


        Session["perfil"] =DDL_perfilC.SelectedValue;

        L_masterCliente Uperfil = new L_masterCliente();
        U_usuarios ms = new U_usuarios();

        ms = Uperfil.perfil(int.Parse(DDL_perfilC.SelectedValue), Session.SessionID,Int32.Parse(Session["id_usuaro"].ToString()));
 
          Session["id_usuaro"] = ms.Sesion1;
            //Session["nombre"] = ms.Nombre1;
            Response.Redirect(ms.Url);
            




        
            
       
    }
    protected void B_productos_Click(object sender, EventArgs e)
    {

    }
    protected void DDL_catalogo_SelectedIndexChanged(object sender, EventArgs e)
    {
       

            Session["estados"] = DDL_catalogo.SelectedValue;

            L_masterCliente Ucatalogo = new L_masterCliente();
            U_usuarios msm = new U_usuarios();
            msm = Ucatalogo.catalogo(Int32.Parse(DDL_catalogo.SelectedValue));

            Response.Redirect(msm.Url);

      
    }
    protected void B_ver_pedido_Click(object sender, EventArgs e)
    {

    }
    


    public ClientScriptManager ClientScript { get; set; }

    protected void B_pqr_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("PQR_cliente.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Carrito.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("HistorialCliente.aspx");
    }
}
