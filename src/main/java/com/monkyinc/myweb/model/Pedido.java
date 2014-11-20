package com.monkyinc.myweb.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Pedido {
	
	@Id
	private String id;
	private String id_prod;
	private String id_user;
	private int cantidad;
	private int precio;
	
	public Pedido(){
		
	}
	public Pedido(String id, String id_prod,String id_user,int cantidad, int precio){
	this.id = id;
	this.id_user = id_user;
	this.id_prod = id_prod;
	this.cantidad = cantidad;
	this.precio = precio;
	}
	
	public String getId(){
		return id;
	}
	public String getId_prod(){
		return id_prod;
	}
	public String getId_user(){
		return id_user;
	}
	public int getCantidad(){
		return cantidad;
	}
	public int getPrecio(){
		return precio;
	}
}
