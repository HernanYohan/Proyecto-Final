using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
public partial class ModificarProducto : System.Web.UI.Page
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

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int index = e.RowIndex;
        ClientScriptManager cm = this.ClientScript;
        FileUpload uploadControl = GV_ver_productos.Rows[index].FindControl("FU_imagen") as FileUpload;
        

        if (uploadControl.HasFile)
        {
            uploadControl.SaveAs(Server.MapPath("~/imagenes/") + uploadControl.FileName);
            string extencion = System.IO.Path.GetExtension(uploadControl.FileName);
            if (!(extencion.Equals(".jpg") || extencion.Equals(".gif") || extencion.Equals(".jpge") || extencion.Equals(".png")))
            {
                e.NewValues.Add("url_imagen", (' '));
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Tipo de archivo no valido');</script>");
                
            }
            else
            {

                e.NewValues.Add("url_imagen", ("~/imagenes/") + uploadControl.FileName);
            }
        }
        else
        {
            e.NewValues.Add("url_imagen", (' '));

        }

       
        DropDownList categoria = GV_ver_productos.Rows[index].FindControl("DDL_categoria") as DropDownList;

        if (categoria.SupportsDisabledAttribute)
        {

            categoria.Equals(categoria.SelectedIndex);
            e.NewValues.Add("id_categoria", (categoria.SelectedIndex));
        }
    

      
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}
