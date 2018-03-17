using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// Descripción breve de Dao_Cliente
/// </summary>
public class Dao_Cliente
{
	public Dao_Cliente()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    public DataTable insertarCliente(E_Cliente user)
    {
        DataTable Cliente = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.agregar_cliente", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Varchar).Value = user.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_apellido", NpgsqlDbType.Varchar).Value = user.Apellido;
            dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Varchar).Value = user.Direccion;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Double).Value = user.Telefono;
            dataAdapter.SelectCommand.Parameters.Add("_correo", NpgsqlDbType.Varchar).Value = user.Correo;
            dataAdapter.SelectCommand.Parameters.Add("_usuario", NpgsqlDbType.Varchar).Value = user.Usuario;
            dataAdapter.SelectCommand.Parameters.Add("_clave", NpgsqlDbType.Varchar).Value = user.Clave;
            dataAdapter.SelectCommand.Parameters.Add("_id_rol", NpgsqlDbType.Integer).Value = user.Id_rol;




            conectar.Open();
            dataAdapter.Fill(Cliente);
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
        return Cliente;
    }

    public DataTable Registro(E_Cliente user)
    {
        DataTable Cliente = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.agregar_cliente", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Varchar).Value = user.Nombre;
            dataAdapter.SelectCommand.Parameters.Add("_apellido", NpgsqlDbType.Varchar).Value = user.Apellido;
            dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Varchar).Value = user.Direccion;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Double).Value = user.Telefono;
            dataAdapter.SelectCommand.Parameters.Add("_correo", NpgsqlDbType.Varchar).Value = user.Correo;
            dataAdapter.SelectCommand.Parameters.Add("_usuario", NpgsqlDbType.Varchar).Value = user.Usuario;
            dataAdapter.SelectCommand.Parameters.Add("_clave", NpgsqlDbType.Varchar).Value = user.Clave;
            dataAdapter.SelectCommand.Parameters.Add("_id_rol", NpgsqlDbType.Integer).Value = user.Id_rol;




            conectar.Open();
            dataAdapter.Fill(Cliente);
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
        return Cliente;
    }

    public DataTable obtenercliente()
    {
        DataTable Cliente = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.mostrar_cliente", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            conectar.Open();
            dataAdapter.Fill(Cliente);
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
        return Cliente;
    }




    public DataTable modificarcliente(int id_cliente, string nombre, string apellido, string direccion, double telefono, string correo, string clave, int id_rol)
    {
        DataTable cliente = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {


            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.modificar_cliente", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id_cliente", NpgsqlDbType.Integer).Value = id_cliente;
            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Varchar).Value = nombre;
            dataAdapter.SelectCommand.Parameters.Add("_apellido", NpgsqlDbType.Varchar).Value = apellido;
            dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Varchar).Value = direccion;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Double).Value = telefono;
            dataAdapter.SelectCommand.Parameters.Add("_correo", NpgsqlDbType.Varchar).Value = correo;
         
            dataAdapter.SelectCommand.Parameters.Add("_clave", NpgsqlDbType.Varchar).Value = clave;
            dataAdapter.SelectCommand.Parameters.Add("_id_rol", NpgsqlDbType.Integer).Value = id_rol;
            


            conection.Open();
            dataAdapter.Fill(cliente);
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
        return cliente;
    }

    public DataTable eliminarCliente(Int32 id_cliente)
    {

        DataTable Cliente = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.eliminar_cliente", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_cliente", NpgsqlDbType.Integer).Value = id_cliente;

            conectar.Open();
            dataAdapter.Fill(Cliente);
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
        return Cliente;
    }



}