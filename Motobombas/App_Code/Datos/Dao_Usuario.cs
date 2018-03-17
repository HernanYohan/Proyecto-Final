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
/// Descripción breve de Dao_Usuario
/// </summary>
public class Dao_Usuario
{
	public Dao_Usuario()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    public DataTable loggin(String userName, String clave)
    {
        DataTable Usuario = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("seguridad.f_loggin1", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_usuario", NpgsqlDbType.Varchar).Value = userName;
            dataAdapter.SelectCommand.Parameters.Add("_clave", NpgsqlDbType.Varchar, 100).Value = clave;
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

    public DataTable cerrarSession(E_Usuario datos)
    {
        DataTable Usuario = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("seguridad.f_cerrar_session1", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_session", NpgsqlDbType.Text).Value = datos.Session;
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


    public DataTable editarPerfil(Int32 id_cliente)
    {




        DataTable Usuario = new DataTable();

        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.editar_perfil1", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_cliente", NpgsqlDbType.Integer).Value = id_cliente;
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
    


    public DataTable guardadoSession(E_Usuario datos)
    {
        DataTable Usuario = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("seguridad.f_guardado_session1", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_usuario", NpgsqlDbType.Bigint).Value = datos.Username;
            dataAdapter.SelectCommand.Parameters.Add("_ip", NpgsqlDbType.Varchar, 100).Value = datos.Ip;
            dataAdapter.SelectCommand.Parameters.Add("_mac", NpgsqlDbType.Varchar, 100).Value = datos.Mac;
            dataAdapter.SelectCommand.Parameters.Add("_session", NpgsqlDbType.Text).Value = datos.Session;

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


    public DataTable generarToken(String usuario)
    {
        DataTable Usuario = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("seguridad.f_obtener_usuarios", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_filtro", NpgsqlDbType.Varchar).Value = usuario;

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
    public DataTable almacenarToken(String token, Int32 user_id)
    {
        DataTable Usuario = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("seguridad.almacenar_token", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_token", NpgsqlDbType.Text).Value = token;
            dataAdapter.SelectCommand.Parameters.Add("_user_id", NpgsqlDbType.Integer).Value = user_id;

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
    public DataTable obtenerUsusarioToken(String token)
    {
        DataTable Usuario = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("seguridad.obtener_usuario_token", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_token", NpgsqlDbType.Text).Value = token;

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

    public DataTable actualziarContrasena(E_Usuario datos)
    {
        DataTable Usuario = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("seguridad.actualizar_contrasena", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_user_id", NpgsqlDbType.Integer).Value = datos.User_id;
            dataAdapter.SelectCommand.Parameters.Add("_clave", NpgsqlDbType.Varchar).Value = datos.Clave;

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

    public DataTable editarcliente(int id_cliente, string nombre, string apellido, string direccion, double telefono, string correo, string clave)
    {
        DataTable cliente = new DataTable();
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {


            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.modificar_perfil", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            dataAdapter.SelectCommand.Parameters.Add("_id_cliente", NpgsqlDbType.Integer).Value = id_cliente;
            dataAdapter.SelectCommand.Parameters.Add("_nombre", NpgsqlDbType.Varchar).Value = nombre;
            dataAdapter.SelectCommand.Parameters.Add("_apellido", NpgsqlDbType.Varchar).Value = apellido;
            dataAdapter.SelectCommand.Parameters.Add("_direccion", NpgsqlDbType.Varchar).Value = direccion;
            dataAdapter.SelectCommand.Parameters.Add("_telefono", NpgsqlDbType.Double).Value = telefono;
            dataAdapter.SelectCommand.Parameters.Add("_correo", NpgsqlDbType.Varchar).Value = correo;
            dataAdapter.SelectCommand.Parameters.Add("_clave", NpgsqlDbType.Varchar).Value = clave;
            
           



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




}