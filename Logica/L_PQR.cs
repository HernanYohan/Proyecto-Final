using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Encapsular;
using System.Data;


namespace Logica 
{
     public class L_PQR
    {
        public DataTable Insertarpqr(String correo, String queja)
        {


            e_PQR nuevo = new e_PQR();
            D_PQR pqr = new D_PQR();



            nuevo.Correo = correo;
            nuevo.Queja = queja;



            DataTable Datos = pqr.insertarpqr(nuevo);
            //ClientScriptManager cm = this.ClientScript;
            ///cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('PQR recibido,en breve responderemos tu Pqr al correo ');window.location=\"PQR_visitante.aspx\"</script>");

            return Datos;



           


        }
        public DataTable Insertarpqr1(String correo, String queja)
        {


            e_PQR nuevo = new e_PQR();
            D_PQR pqr = new D_PQR();



            nuevo.Correo = correo;
            nuevo.Queja = queja;



            DataTable Datos = pqr.insertarpqr(nuevo);

            return Datos;






        }
        public DataTable mostrarpqr()
        {
            D_PQR pqr_mostrar = new D_PQR();

            DataTable listapqr = new DataTable();

            listapqr = pqr_mostrar.obtenerpqr();

            return listapqr;

        }
    }
}
