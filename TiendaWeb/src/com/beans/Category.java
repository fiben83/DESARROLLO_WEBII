package com.beans;

import java.io.Serializable;

public class Category implements Serializable {
	private int idCategory;
	private String name;

	public Category() {
	
	}

	public int getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	

	
}
