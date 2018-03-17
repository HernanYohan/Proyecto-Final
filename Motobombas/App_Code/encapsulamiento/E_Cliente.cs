using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_Cliente
/// </summary>
public class E_Cliente
{
	public E_Cliente()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}

    private String nombre;

    public String Nombre
    {
        get { return nombre; }
        set { nombre = value; }
    }


    private String apellido;

    public String Apellido
    {
        get { return apellido; }
        set { apellido = value; }
    }

    private Double telefono;

    public Double Telefono
    {
        get { return telefono; }
        set { telefono = value; }
    }

    private String direccion;

    public String Direccion
    {
        get { return direccion; }
        set { direccion = value; }
    }

    private String correo;

    public String Correo
    {
        get { return correo; }
        set { correo = value; }
    }


    private String usuario;

    public String Usuario
    {
        get { return usuario; }
        set { usuario = value; }
    }

    private String clave;

    public String Clave
    {
        get { return clave; }
        set { clave = value; }
    }

    private Int32 id_rol;

    public Int32 Id_rol
    {
        get { return id_rol; }
        set { id_rol = value; }
    }

}