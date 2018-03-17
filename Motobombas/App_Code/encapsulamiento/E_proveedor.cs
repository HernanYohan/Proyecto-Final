using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_proveedor
/// </summary>
public class E_proveedor
{
	public E_proveedor()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
   
    private string nombre;

    public string Nombre
    {
        get { return nombre; }
        set { nombre = value; }
    }
    private Double telefono;

    public Double Telefono
    {
        get { return telefono; }
        set { telefono = value; }
    }

   
    private string correo;

    public string Correo
    {
        get { return correo; }
        set { correo = value; }
    }
}