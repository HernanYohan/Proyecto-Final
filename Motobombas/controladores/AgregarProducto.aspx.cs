using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Utilitarios;
using Logica;



public partial class AgregarProducto : System.Web.UI.Page
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


    protected void B_agregarproducto_Click(object sender, EventArgs e)
    {

        ClientScriptManager cm = this.ClientScript;


        DataTable foto = new DataTable();
        L_productos valida = new L_productos();

        foto = valida.foto(Session["fotos"] as DataTable);


        foto = (DataTable)Session["fotos"];

        string nombreArchivo = System.IO.Path.GetFileName(FU_imagen.PostedFile.FileName);
        string extencion = System.IO.Path.GetExtension(FU_imagen.PostedFile.FileName);
        

        String saveLocation = Server.MapPath("~\\imagenes") + "\\" + nombreArchivo;

        String msm = valida.validar(extencion, saveLocation);

       
        cm.RegisterClientScriptBlock(this.GetType(), "", msm);



      
            L_productos datos_producto = new L_productos(); 
            FU_imagen.PostedFile.SaveAs(saveLocation);

            U_productos nuevo = new U_productos();
         
            nuevo.Url_imagen = ("~\\imagenes") + "\\" + nombreArchivo;
            nuevo.Marca = TB_marcaprod.Text;
            nuevo.Referencia = TB_potenciaprod.Text;
            nuevo.Valor = Int32.Parse(TB_valorprod.Text);
            nuevo.Cantidad = Int32.Parse(TB_cantidadprod.Text);
            nuevo.Id_categoria = Int32.Parse(DDL_categoria.SelectedValue);
            nuevo.Proveedor_producto = Int32.Parse(DDL_proveedor.SelectedValue);
            String ms = datos_producto.agregar(nuevo);

           cm.RegisterClientScriptBlock(this.GetType(), "", ms);
     
           
        


        
        
    }
    protected void B_ver_Click(object sender, EventArgs e)
    {
        Response.Redirect("ModificarProducto.aspx");
    }
}