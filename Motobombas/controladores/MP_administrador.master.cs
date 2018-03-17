using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using Utilitarios;



public partial class vistas_MP_administrador : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void B_pedidos_Click(object sender, EventArgs e)
    {
        Response.Redirect("pedidoAdministrador.aspx");
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {


        Session["perfil"] = DDL_perfil.SelectedValue;

        L_MasterAdmin Uperfil = new L_MasterAdmin();
        U_usuarios ms2 = new U_usuarios();

        ms2 = Uperfil.perfil(int.Parse(DDL_perfil.SelectedValue), Session.SessionID,Int32.Parse(Session["id_usuaro"].ToString()));

        Session["id_usuaro"] = ms2.Sesion1;
        //Session["nombre"] = ms.Nombre1;
        Response.Redirect(ms2.Url);
            


      /*  
        int n = 0;

        do
        {

            Session["perfil"] = DDL_perfil.SelectedValue;
          
            switch (int.Parse(DDL_perfil.SelectedValue))
            {
                case 1:

                    Response.Redirect("Editar_Administrador.aspx");
                    break;
                case 2:

                    Response.Redirect("ver_pqr.aspx");
                    break;


                case 3:
                    Session["user_id"] = null;
                    Session["nombre"] = null;

                   Dao_Usuario user = new Dao_Usuario();
                   E_Usuario datos = new E_Usuario();
                   datos.Session = Session.SessionID;
                   user.cerrarSession(datos);
                   Response.Redirect("productos.aspx");
                    break;
              
            }

        } while (n < 0);
       */
    }
    protected void B_historial_Click(object sender, EventArgs e)
    {
        Response.Redirect("HistorialPedidoAdministrador.aspx");
    }
    protected void B_producto_Click(object sender, EventArgs e)
    {
        Response.Redirect("AgregarProducto.aspx");
    }
    protected void B_proveedor_Click(object sender, EventArgs e)
    {
        Response.Redirect("AgregarProveedor1.aspx");
    }
    protected void B_usuario_Click(object sender, EventArgs e)
    {
        Response.Redirect("AgregarCliente.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ModificarProducto.aspx");
      
    }

}
