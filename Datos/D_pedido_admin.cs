using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Utilitarios;

namespace Datos
{
   public class D_pedido_admin
    {
        public DataTable insertarPedido(U_pedido_admin user)
        {
            DataTable Pedido = new DataTable();
            NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.agregar_pedido", conectar);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                dataAdapter.SelectCommand.Parameters.Add("_producto", NpgsqlDbType.Integer).Value = user.Producto;
                dataAdapter.SelectCommand.Parameters.Add("_referencia", NpgsqlDbType.Varchar).Value = user.Referencia;
                dataAdapter.SelectCommand.Parameters.Add("_proveedor", NpgsqlDbType.Integer).Value = user.Proveedor;
                dataAdapter.SelectCommand.Parameters.Add("_cantidad", NpgsqlDbType.Integer).Value = user.Cantidad;




                conectar.Open();
                dataAdapter.Fill(Pedido);
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
            return Pedido;
        }
        public DataTable seleccionar(String referencia)
        {




            DataTable Usuario = new DataTable();

            NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.pedido", conection);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;


                dataAdapter.SelectCommand.Parameters.Add("_referencia", NpgsqlDbType.Text).Value = referencia;
                conection.Open();
                dataAdapter.Fill(Usuario);
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
            return Usuario;

        }
    }
}
