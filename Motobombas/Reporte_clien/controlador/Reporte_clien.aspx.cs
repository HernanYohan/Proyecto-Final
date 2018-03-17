using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

public partial class Reporte_ad_Vista_Reporte_clien : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id_usuaro"] == null)
            Response.Redirect("Login.aspx");

        Response.Cache.SetNoStore();
        L_factura nueva = new L_factura();

        CRS_Factura.ReportDocument.SetDataSource(nueva.llenarFactura( Int32.Parse(Session["id_usuaro"].ToString())));
        CRV_Factura.ReportSource = CRS_Factura;

        Response.Cache.SetNoStore();

    }

    protected Factura_clien llenarFactura()
    {
        Factura_clien factura = new Factura_clien();
        Dao_carrito datos = new Dao_carrito();
        Int32 id = Int32.Parse(Session["id_usuaro"].ToString());

        DataTable datosFactura = datos.verCarrito(id);
        DataTable datosFinal = factura.Factura;
        DataRow fila;


        for (int i = 0; i < datosFactura.Rows.Count; i++)
        {
            fila = datosFinal.NewRow();

            fila["Fecha"] =datosFactura.Rows[i]["Fecha"].ToString();
            fila["Nombre"] = datosFactura.Rows[i]["Nombre"].ToString();
            fila["Apellido"] = datosFactura.Rows[i]["Apellido"].ToString();
            fila["Direccion"] = datosFactura.Rows[i]["Direccion"].ToString();
            fila["Marca"] = datosFactura.Rows[i]["Marca"].ToString();
            fila["Referencia"] = datosFactura.Rows[i]["Referencia"].ToString();
            fila["Cantidad"] = int.Parse(datosFactura.Rows[i]["Cantidad"].ToString());
            fila["Valor"] = int.Parse(datosFactura.Rows[i]["Valor"].ToString());
            fila["Subtotal"] = int.Parse(datosFactura.Rows[i]["Subtotal"].ToString());
            fila["Iva"] = double.Parse(datosFactura.Rows[i]["Iva"].ToString());
            fila["Total"] = double.Parse(datosFactura.Rows[i]["Total"].ToString());
           
            
           


            datosFinal.Rows.Add(fila);
        }

        return factura;
    }

}