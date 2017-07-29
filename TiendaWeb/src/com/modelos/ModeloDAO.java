package com.modelos;

import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

import org.apache.struts2.ServletActionContext;

public class ModeloDAO implements DAO {

	DataSource ds=null;
	@Override
	public Connection getConnection() {
		ServletContext sc=  ServletActionContext.getServletContext();
		if(this.ds==null){
			ds= (DataSource)sc.getAttribute("dataSource");
			System.out.println("atributo ds "+ds);
		}
		
		Connection connection= null;
		if(ds!=null){
			try{
				connection= ds.getConnection();
			}catch(SQLException e){
				System.out.println(e); 
			}
		}
		return connection;
	}

	// Posicionar una dataSource 
    public void setConnection(DataSource ds) 
    { 
           this.ds=ds; 
    } 
}
