using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de E_Token
/// </summary>
public class E_Token
{
	public E_Token()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
      
	}
    private Int32 id_cliente;

    public Int32 Id_cliente
    {
        get { return id_cliente; }
        set { id_cliente = value; }
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

    private String direccion;

    public String Direccion
    {
        get { return direccion; }
        set { direccion = value; }
    }

    private Double telefono;

    public Double Telefono
    {
        get { return telefono; }
        set { telefono = value; }
    }


    private String usuario;

    public String Usuario
    {
        get { return usuario; }
        set { usuario = value; }
    }

    private Int32 id_rol;

    public Int32 Id_rol
    {
        get { return id_rol; }
        set { id_rol = value; }
 
    }
    private Int32 estado;

    public Int32 Estado
    {
        get { return estado; }
        set { estado = value; }
    }

    private String correo;

    public String Correo
    {
        get { return correo; }
        set { correo = value; }
    }
    private long fecha;

    public long Fecha
    {
        get { return fecha; }
        set { fecha = value; }
    }


}