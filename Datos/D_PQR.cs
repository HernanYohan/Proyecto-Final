using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Npgsql;
using NpgsqlTypes;
using System.Data;
using System.Configuration;
using Encapsular;


namespace Datos
{
   public class D_PQR
    {
        public DataTable insertarpqr(e_PQR user)
        {
            DataTable pqr = new DataTable();
            NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("seguridad.agregar_pqr", conectar);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                dataAdapter.SelectCommand.Parameters.Add("_correo", NpgsqlDbType.Varchar).Value = user.Correo;
                dataAdapter.SelectCommand.Parameters.Add("_queja", NpgsqlDbType.Varchar).Value = user.Queja;

                ;




                conectar.Open();
                dataAdapter.Fill(pqr);
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
            return pqr;
        }

        public DataTable obtenerpqr()
        {
            DataTable pqr = new DataTable();
            NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

            try
            {
                NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("seguridad.mostrar_pqr", conectar);
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

                conectar.Open();
                dataAdapter.Fill(pqr);
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
            return pqr;
        }
    }
}
