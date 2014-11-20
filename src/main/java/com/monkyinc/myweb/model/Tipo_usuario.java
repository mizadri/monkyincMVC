package com.monkyinc.myweb.model;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Tipo_usuario {
	@Id
	private String id;
	private String tipo;
	
	public Tipo_usuario(){
		
	}
	public Tipo_usuario(String id,String tipo){
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
