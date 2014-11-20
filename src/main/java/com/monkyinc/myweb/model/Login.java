package com.monkyinc.myweb.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Login {
	
	@Id
	String id_user;
	private String user;
	private String password;
	
	public Login(){
		
	}
	public Login(String id_user,String user, String password){
		this.id_user= id_user;
		this.user=user;
		this.password=password;
	}
	public String getId_user(){
		return id_user;
	}
	public String getUser(){
		return user;
	}
	public String getPassword(){
		return password;
	}
}
