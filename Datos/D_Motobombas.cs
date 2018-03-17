using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Encapsular;
using System.Configuration;
using Npgsql;
using NpgsqlTypes;
using Utilitarios;

namespace Datos
{
    public class D_Motobombas
    {
        public DataTable insertarProducto(U_productos user)
        {
            DataTable Producto = new DataTable();
            NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.agregar_producto", conectar);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                dataAdapter.SelectCommand.Parameters.Add("_url_imagen", NpgsqlDbType.Varchar).Value = user.Url_imagen;
                dataAdapter.SelectCommand.Parameters.Add("_marca", NpgsqlDbType.Varchar).Value = user.Marca;
                dataAdapter.SelectCommand.Parameters.Add("_referencia", NpgsqlDbType.Varchar).Value = user.Referencia;
                dataAdapter.SelectCommand.Parameters.Add("_valor", NpgsqlDbType.Integer).Value = user.Valor;
                dataAdapter.SelectCommand.Parameters.Add("_cantidad", NpgsqlDbType.Integer).Value = user.Cantidad;
                dataAdapter.SelectCommand.Parameters.Add("_id_categoria", NpgsqlDbType.Integer).Value = user.Id_categoria;
                dataAdapter.SelectCommand.Parameters.Add("_proveedor_producto", NpgsqlDbType.Integer).Value = user.Proveedor_producto;





                conectar.Open();
                dataAdapter.Fill(Producto);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conectar != null)
                {
                    conectar.Close();
                }
            }
            return Producto;
        }
        public DataTable obtenerproducto()
        {
            DataTable Producto = new DataTable();
            NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.mostrar_producto", conectar);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                conectar.Open();
                dataAdapter.Fill(Producto);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conectar != null)
                {
                    conectar.Close();
                }
            }
            return Producto;
      
        
        }
        public DataTable EliminarProducto(Int32 id_producto)
        {

            DataTable Producto = new DataTable();
            NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.eliminar_producto", conectar);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                dataAdapter.SelectCommand.Parameters.Add("_id_producto", NpgsqlDbType.Integer).Value = id_producto;

                conectar.Open();
                dataAdapter.Fill(Producto);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conectar != null)
                {
                    conectar.Close();
                }
            }
            return Producto;
        }
        public DataTable modificarProducto(Int32 id_producto, String marca, Int32 valor, Int32 cantidad, Int32 id_categoria, String referencia, String url_imagen)
        {
            DataTable producto = new DataTable();
            NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

            try
            {


                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.modificar_producto", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                dataAdapter.SelectCommand.Parameters.Add("_id_producto", NpgsqlDbType.Integer).Value = id_producto;
                dataAdapter.SelectCommand.Parameters.Add("_marca", NpgsqlDbType.Varchar).Value = marca;
                dataAdapter.SelectCommand.Parameters.Add("_valor", NpgsqlDbType.Integer).Value = valor;
                dataAdapter.SelectCommand.Parameters.Add("_cantidad", NpgsqlDbType.Integer).Value = cantidad;
                dataAdapter.SelectCommand.Parameters.Add("_id_categoria", NpgsqlDbType.Integer).Value = id_categoria;
                dataAdapter.SelectCommand.Parameters.Add("_referencia", NpgsqlDbType.Varchar).Value = referencia;
                dataAdapter.SelectCommand.Parameters.Add("_url_imagen", NpgsqlDbType.Text).Value = url_imagen;


                conection.Open();
                dataAdapter.Fill(producto);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
            finally
            {
                if (conection != null)
                {
                    conection.Close();
                }
            }
            return producto;
        }
    }


}
