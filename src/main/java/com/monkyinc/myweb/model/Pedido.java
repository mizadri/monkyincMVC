package com.monkyinc.myweb.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;


@Entity
@NamedQueries({
    @NamedQuery(name="pedidoById", query="select p from Pedido p where p.id = :idParam"),
    @NamedQuery(name="pedidoUser", query="select p from Pedido p where p.usuario.id = :uParam"),
    @NamedQuery(name="pedido", query="select p from Pedido p")
})
public class Pedido {
	
	
	private long id;
	private Usuario usuario;
	private int cantidad;
	private int precio;
	private List<Producto> productos;
	private Producto producto;
	
	@ManyToOne(targetEntity=Producto.class)
	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}

	public static Pedido setPedido(long id, Usuario usuario, int precio, int cantidad, Producto producto){
		Pedido p = new Pedido();
		p.setId(id);
		p.setUsuario(usuario);
		p.setPrecio(precio);
		p.setCantidad(cantidad);
		p.setProducto(producto);
		return p;
	}
	
	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}
	public void setId(long id_pedido) {
		this.id = id_pedido;
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
