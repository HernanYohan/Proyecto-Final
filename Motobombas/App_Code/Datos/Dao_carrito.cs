using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Dao_carrito
/// </summary>
public class Dao_carrito
{
	public Dao_carrito()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    

    public DataTable verProducto(Int32 id_producto)
    {




        DataTable Usuario = new DataTable();

        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("agregar.ver_producto", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_producto", NpgsqlDbType.Integer).Value = id_producto;
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

    public DataTable verCarrito(Int32 id_cliente)
    {




        DataTable Usuario = new DataTable();

        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("venta.factura_c", conection);
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

    public DataTable verFactura(Int32 id_cliente)
    {




        DataTable Usuario = new DataTable();

        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("venta.factura_c", conection);
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
    public DataTable verEncabezado(Int32 id_cliente)
    {




        DataTable Usuario = new DataTable();

        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("venta.encabezado_c", conection);
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

    public DataTable agregarCarrito(E_venta user)
    {
        DataTable agregar = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("venta.agregar_venta", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_estado", NpgsqlDbType.Integer).Value = user.Id_estado;
            dataAdapter.SelectCommand.Parameters.Add("_cantidad", NpgsqlDbType.Integer).Value = user.Cantidad;
            dataAdapter.SelectCommand.Parameters.Add("_id_cliente", NpgsqlDbType.Integer).Value = user.Id_cliente;
            dataAdapter.SelectCommand.Parameters.Add("_id_producto", NpgsqlDbType.Integer).Value = user.Id_producto;
            



            conectar.Open();
            dataAdapter.Fill(agregar);
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
        return agregar;
    }

    public DataTable eliminarPedido(Int32 id_venta)
    {

        DataTable Producto = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("venta.eliminar_venta", conectar);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_venta", NpgsqlDbType.Integer).Value = id_venta;

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

    public DataTable verHistorial(Int32 id_cliente)
    {




        DataTable Historial = new DataTable();

        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("venta.factura_c", conection);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            dataAdapter.SelectCommand.Parameters.Add("_id_cliente", NpgsqlDbType.Integer).Value = id_cliente;
            conection.Open();
            dataAdapter.Fill(Historial);
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
        return Historial;

    }
}