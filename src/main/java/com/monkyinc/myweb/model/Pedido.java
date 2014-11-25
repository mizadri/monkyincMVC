package com.monkyinc.myweb.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;


@Entity
public class Pedido {
	
	
	private long pedido_id;
	private Usuario usuario;
	private int cantidad;
	private int precio;
	private List<Producto> productos;
	
	@Id
	@GeneratedValue
	public long getId_pedido() {
		return pedido_id;
	}
	public void setId_pedido(long id_pedido) {
		this.pedido_id = id_pedido;
	}

	@ManyToMany(targetEntity=Producto.class, fetch=FetchType.EAGER)
	public List<Producto> getProductos() {
		return productos;
	}
	public void setProductos(List<Producto> productos) {
		this.productos = productos;
	}
	@ManyToOne(targetEntity=Usuario.class)
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public int getPrecio() {
		return precio;
	}
	public void setPrecio(int precio) {
		this.precio = precio;
	}
	
	
}
