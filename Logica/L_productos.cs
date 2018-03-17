using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Utilitarios;
using Encapsular;
using Datos;


namespace Logica
{
    public class L_productos
    {
        public DataTable foto(DataTable sesion)
        {
            DataTable fotos;
            if (sesion == null)
            {

                fotos = new DataTable();
                fotos.Columns.Add("ruta");
                fotos.Columns.Add("descripcion");
                sesion = fotos;

            }
            return sesion;
        }
        String valid;
        public String validar(String extencion, String localiza)
        {


            if (!(extencion.Equals(".jpg") || extencion.Equals(".gif") || extencion.Equals(".jpge") || extencion.Equals(".png")))
            {
                valid = "<script type='text/javascript'>alert('Tipo de archivo no valido');window.location=\"AgregarProducto.aspx\"</script>";

            }
            if (System.IO.File.Exists(localiza))
            {
                valid = "<script type='text/javascript'>alert('Ya existe un archivo en el servidor con ese nombre');window.location=\"AgregarProducto.aspx\"</script>";

            }
            return valid;


        }

        public String agregar(U_productos nuevo1)
        {
            
            D_Motobombas datos = new D_Motobombas();
            datos.insertarProducto(nuevo1);
            valid = "<script type='text/javascript'>alert('Agregado correctamente');window.location=\"AgregarProducto.aspx\"</script>";

            return valid;
        }

        public DataTable mostrarproductos()
        {
            D_Motobombas mostrarproducto = new D_Motobombas();

            DataTable listaproducto = new DataTable();

            listaproducto = mostrarproducto.obtenerproducto();

            return listaproducto;

        }

        public DataTable eliminarproducto(Int32 id_producto)
        {
            D_Motobombas eliminarproducto = new D_Motobombas();

            DataTable listaproducto = new DataTable();

            listaproducto = eliminarproducto.EliminarProducto(id_producto);

            return listaproducto;

        }

        public void modificar(Boolean dato1, string extencion)
        {
            

        }


    }
}
