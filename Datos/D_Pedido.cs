using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Npgsql;
using NpgsqlTypes;
using System.Configuration;

namespace Datos
{
    public class D_Pedido
    {

        public DataTable obtenerPedidos()
        {
            DataTable pedido = new DataTable();
            NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.mostrar_pedido", conectar);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                conectar.Open();
                dataAdapter.Fill(pedido);
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
            return pedido;
        }
    }
}
