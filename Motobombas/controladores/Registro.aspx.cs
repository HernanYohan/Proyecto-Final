using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;
using Encapsular;
using System.Data;
using Logica;

public partial class vistas_Registro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void B_registro_Click(object sender, EventArgs e)
    {
        L_Cliente user = new L_Cliente();
        user.RegistroVisitante(TB_nombre.Text, TB_apellido.Text, Double.Parse(TB_tl.Text), TB_direccion.Text, TB_correo.Text, TB_usuario.Text, TB_clave.Text);
        //E_Cliente nuevo = new E_Cliente();
        //Dao_Cliente cliente = new Dao_Cliente();
        //ClientScriptManager cm = this.ClientScript;
        //nuevo.Nombre = TB_nombre.Text;
        //nuevo.Apellido = TB_apellido.Text;
        //if (Double.Parse(TB_tl.Text) <= 99999999999)
        //{
           
          //  nuevo.Telefono = Double.Parse(TB_tl.Text);
            //nuevo.Correo = TB_correo.Text;
            //nuevo.Direccion = TB_direccion.Text;
            //nuevo.Usuario = TB_usuario.Text;
            //nuevo.Clave = TB_clave.Text;
            //nuevo.Id_rol = 2;


          //  cliente.Registro(nuevo);
           


          //  cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Regitrado correctamente');window.location=\"login.aspx\"</script>");
        //}
        //else
        //{
            
          //  cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Telefono incorrecto');</script>");
            //Response.Redirect("loggin.aspx");
        //}
          
        
    }
    protected void TB_tl_TextChanged(object sender, EventArgs e)
    {

    }
}
