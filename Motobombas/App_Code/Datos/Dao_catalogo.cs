using Npgsql;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Dao_catalogo
/// </summary>
public class Dao_catalogo
{
	public Dao_catalogo()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public DataTable obtenerproducto()
    {
        DataTable Usuario = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.mostrar_producto", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conectar.Open();
            dataAdapter.Fill(Usuario);
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
        return Usuario;
    }

    public DataTable obtenerbombas()
    {
        DataTable Bomba = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.mostrar_bombas", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conectar.Open();
            dataAdapter.Fill(Bomba);
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
        return Bomba;
    }

    public DataTable obtenertanques()
    {
        DataTable Tanque = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.mostrar_tanques", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conectar.Open();
            dataAdapter.Fill(Tanque);
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
        return Tanque;
    }

    public DataTable obteneraccesorios()
    {
        DataTable Accesorio = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.mostrar_accesorios", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conectar.Open();
            dataAdapter.Fill(Accesorio);
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
        return Accesorio;
    }
}