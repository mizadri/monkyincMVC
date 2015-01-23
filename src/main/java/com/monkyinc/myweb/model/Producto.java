package com.monkyinc.myweb.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

@Entity
@NamedQueries({
    @NamedQuery(name="productoById",
        query="select p from Pedido p where p.id = :idParam"),
        @NamedQuery(name="delProduct",
    	query="delete from Producto p where p.id= :idParam")
})
public class Producto {
	
	private long id;
	private String tipo;
	private String descripcion;
	private int precio;
	private List<Pedido> pedido;
	
	public static Producto createProducto(long id, String descripcion, int precio, String tipo){
		Producto p = new Producto();
		p.setId(id);
		p.setDescripcion(descripcion);
		p.setPrecio(precio);
		p.setTipo(tipo);
		return p;
	}
	
	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}
	
	public void setId(long producto_id) {
		this.id = producto_id;
	}
	
	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	/*
	@ManyToOne(targetEntity=Producto.class)
	public TipoProducto getTipo() {
		return tipo;
	}
	public void setTipo(TipoProducto tipo) {
		this.tipo = tipo;
	}
	*/
	@OneToMany(targetEntity=Pedido.class)
	@JoinColumn(name="id")
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
