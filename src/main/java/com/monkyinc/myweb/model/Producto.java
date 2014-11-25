package com.monkyinc.myweb.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@Entity
public class Producto {
	
	private long producto_id;
	private Tipo_producto tipo;
	private String descripcion;
	private int precio;
	private List<Pedido> pedido;
	
	@Id
	@GeneratedValue
	public long getProducto_id() {
		return producto_id;
	}
	public void setProducto_id(long producto_id) {
		this.producto_id = producto_id;
	}
	
	@ManyToOne(targetEntity=Producto.class)
	public Tipo_producto getTipo() {
		return tipo;
	}
	public void setTipo(Tipo_producto tipo) {
		this.tipo = tipo;
	}
	
	@ManyToMany(targetEntity=Pedido.class, mappedBy="productos")
	public List<Pedido> getPedido() {
		return pedido;
	}
	public void setPedido(List<Pedido> pedido) {
		this.pedido = pedido;
	}
	
	
	public String getDescripcion(){
		return descripcion;
	}
	public int getPrecio(){
		return precio;
	}
	
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public void setPrecio(int precio) {
		this.precio = precio;
	}
	
}
