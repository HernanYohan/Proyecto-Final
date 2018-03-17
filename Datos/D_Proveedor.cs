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
    public class D_Proveedor
    {
         public DataTable insertarproveedor(e_Proveedor user)
    {
        DataTable proveedor = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.agregar_proveedor", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Varchar).Value = user.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Double).Value = user.Telefono;
            dataAdapter.SelectCommand.Parameters.Add("_correo", NpgsqlDbType.Varchar).Value = user.Correo;
           ;




            conectar.Open();
            dataAdapter.Fill(proveedor);
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
        return proveedor;
    }
    public DataTable obtenerproveedor()
    {
        DataTable proveedor = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.mostrar_proveedor", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conectar.Open();
            dataAdapter.Fill(proveedor);
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
        return proveedor;
    }
    public DataTable eliminarproveedor(Int32 id_proveedor)
    {

        DataTable proveedor = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.eliminar_proveedor", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_proveedor", NpgsqlDbType.Integer).Value = id_proveedor;

            conectar.Open();
            dataAdapter.Fill(proveedor);
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
        return proveedor;
    }
    public DataTable modificarproveedor(int id_proveedor , string nombre, double telefono, string correo)
    {
        DataTable proveedor = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {


            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.modificar_proveedor", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id_proveedor", NpgsqlDbType.Integer).Value = id_proveedor;
            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Varchar).Value = nombre;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Double).Value = telefono;
            dataAdapter.SelectCommand.Parameters.Add("_correo", NpgsqlDbType.Varchar).Value = correo;
           

            conection.Open();
            dataAdapter.Fill(proveedor);
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
        return proveedor;
    }
    }
     
}
