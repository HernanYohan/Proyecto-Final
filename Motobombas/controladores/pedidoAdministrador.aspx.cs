using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
using Utilitarios;

public partial class vistas_pedidoAdministrador : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["id_categoria"] != null && !IsPostBack)
        {
            DDL_producto.SelectedValue = Session["id_categoria"].ToString();
        }

        try
        {

            validar_session sesion = new validar_session();
            Int32 valida = Int32.Parse(sesion.validar(Int32.Parse(Session["id_usuaro"].ToString())));
        }
        catch (Exception es)
        {
            Response.Redirect("login.aspx");
        };
      
       
        Response.Cache.SetNoStore();
    }
   

    protected void B_historial_Click(object sender, EventArgs e)
    {
        Response.Redirect("HistorialPedidoAdministrador.aspx");
        
    }
    protected void DDL_proveedor_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void B_buscar_Click(object sender, EventArgs e)
    {
        

        Session["referencia"] = DDL_referencia.SelectedValue;
        Lb_cantidad.Visible = true;
        TB_cantidad.Visible = true;
        


        
      
    }
    
    protected void seleccion_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    {

    }
    protected void DDL_producto_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["id_categoria"] = Int32.Parse(DDL_producto.SelectedValue);
    }
    protected void B_pedido_Click(object sender, EventArgs e)
    {

    }

    protected void GV_selec_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        ClientScriptManager cm = this.ClientScript;
        L_pedido_admin pedidos = new L_pedido_admin();
        U_usuarios dato = new U_usuarios();
        pedidos.Rpedido(int.Parse(e.CommandArgument.ToString()),e.CommandName, Int32.Parse(Session["id_categoria"].ToString()), Session["referencia"].ToString(), Int32.Parse(TB_cantidad.Text));
        pedidos.seleccionar(Session["referencia"].ToString());
        cm.RegisterClientScriptBlock(this.GetType(), "","<script type='text/javascript'>alert('Pedido Realizado');window.location=\"pedidoAdministrador.aspx\"</script>");
            
      
    }
    protected void referencia_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    {

    }
    protected void TB_cantidad_TextChanged(object sender, EventArgs e)
    {

    }
}