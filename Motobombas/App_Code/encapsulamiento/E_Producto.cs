using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de producto
/// </summary>
public class E_Producto
{
	public E_Producto()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    private String marca;

    public String Marca
    {
        get { return marca; }
        set { marca = value; }
    }
    private Int32 valor;

    public Int32 Valor
    {
        get { return valor; }
        set { valor = value; }
    }
    private Int32 cantidad;

    public Int32 Cantidad
    {
        get { return cantidad; }
        set { cantidad = value; }
    }
    private Int32 id_categoria;

    public Int32 Id_categoria
    {
        get { return id_categoria; }
        set { id_categoria = value; }
    }
    private String referencia;

    public String Referencia
    {
        get { return referencia; }
        set { referencia = value; }
    }
    private String url_imagen;

    public String Url_imagen
    {
        get { return url_imagen; }
        set { url_imagen = value; }
    }

    private String proveedor;

    private Int32 proveedor_producto;

    public Int32 Proveedor_producto
    {
        get { return proveedor_producto; }
        set { proveedor_producto = value; }
    }

   


}