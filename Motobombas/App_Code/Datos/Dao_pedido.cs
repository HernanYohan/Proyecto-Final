using Npgsql;
using NpgsqlTypes;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Dao_pedido
/// </summary>
public class Dao_pedido
{
	public Dao_pedido()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public DataTable insertarPedido(E_pedido user)
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
    public DataTable obtenerpedido()
    {
        DataTable pedido = new DataTable();
        NpgsqlConnection conectar = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["Postgres"].ConnectionString);

        try
        {
            NpgsqlDataAdapter dataAdapter = new NpgsqlDataAdapter("venta.mostrar_pedido", conectar);
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