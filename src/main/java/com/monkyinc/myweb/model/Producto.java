package com.monkyinc.myweb.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Producto {
	@Id
	private String id;
	//@ForeignKey
	private String tipo;
	private String descripcion;
	private int precio;
	
	public Producto(){
		
	}
	public Producto(String id, String tipo, String descripcion, int precio){
		this.id = id;
		this.tipo = tipo;
		this.descripcion = descripcion;
		this.precio = precio;
	}
	
	public String getId(){
		return id;
	}
	public String getTipo(){
		return tipo;
	}
	public String getDescripcion(){
		return descripcion;
	}
	public int getPrecio(){
		return precio;
	}
}
