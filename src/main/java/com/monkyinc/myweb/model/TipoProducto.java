package com.monkyinc.myweb.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class TipoProducto {
	 
	
	private long id;
	private String tipo;
	//private List<Producto> productos;
	
	/*@OneToMany(targetEntity=Pedido.class)
	@JoinColumn(name="tipo_id")
	public List<Producto> getProductos() {
		return productos;
	}

	public void setProductos(List<Producto> productos) {
		this.productos = productos;
	}*/

	public static TipoProducto createTipoProd(long id, String tipo){
		TipoProducto tp = new TipoProducto();
		tp.setId(id);
		tp.setTipo(tipo);
		return tp;
	}
	
	@Id
	@GeneratedValue
	public long getId(){
		return id;
	}
	
	public String getTipo(){
		return tipo;
	}

	public void setId(long id) {
		this.id = id;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
}
