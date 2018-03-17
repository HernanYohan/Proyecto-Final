using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Dao_PQR
/// </summary>
public class Dao_PQR
{
	public Dao_PQR()
	{

    }

    public DataTable insertarpqr(E_PQR user)
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
