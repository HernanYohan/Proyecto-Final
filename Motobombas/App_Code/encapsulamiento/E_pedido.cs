using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_pedido
/// </summary>
public class E_pedido
{
	public E_pedido()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}


    private Int32 producto;

    public Int32 Producto
    {
        get { return producto; }
        set { producto = value; }
    }
    private String referencia;

    public String Referencia
    {
        get { return referencia; }
        set { referencia = value; }
    }
    private Int32 proveedor;

    public Int32 Proveedor
    {
        get { return proveedor; }
        set { proveedor = value; }
    }

    private Int32 cantidad;

    public Int32 Cantidad
    {
        get { return cantidad; }
        set { cantidad = value; }
    }

}