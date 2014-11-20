package com.monkyinc.myweb.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Tipo_producto {
	 
	@Id
	private String id;
	private String tipo;
	
	public Tipo_producto(){
		
	}
	
	public Tipo_producto(String id,String tipo){
		this.id = id;
		this.tipo = tipo;
	}
	
	public String getId(){
		return id;
	}
	
	public String getTipo(){
		return tipo;
	}
}
