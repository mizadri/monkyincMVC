package com.monkyinc.myweb.model;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Usuario {
	@Id
	private String id;
	private String nombre;
	private String apellido;
	private String correo;
	private String telefono;
	private String direccion;
	//@ForeignKey
	private String tipo;

	public Usuario() {}
	
	public Usuario(String id, String nombre,String apellido, String correo, String telefono, String direccion, String tipo) {
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.correo = correo;
		this.telefono = telefono;
		this.direccion = direccion;
		this.tipo = tipo;

	}
	
	public String getId() {
		return id;
	}
	
	public String getNombre(){
		return nombre;
	}
	
	public String apellido(){
		return apellido;
	}
	
	public String correo(){
		return correo;
	}
	
	public String telefono(){
		return telefono;
	}
	
	public String direccion(){
		return direccion;
	}
	
	public String tipo(){
		return tipo;
	}
	
}



