package com.beans;

import java.io.Serializable;

public class TypeUser implements Serializable {

	private int idType;
	private String nameType;
	
	
	public TypeUser() {
		
	}


	public int getIdType() {
		return idType;
	}


	public void setIdType(int idType) {
		this.idType = idType;
	}


	public String getNameType() {
		return nameType;
	}


	public void setNameType(String nameType) {
		this.nameType = nameType;
	}
	
	
	
	
}
