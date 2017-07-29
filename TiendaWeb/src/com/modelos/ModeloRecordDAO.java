package com.modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import com.beans.Record;
import com.tools.GestionBaseDatos;

import java.util.ArrayList;

public class ModeloRecordDAO extends ModeloDAO {

	Connection conexion =null;
	ResultSet resultado = null;
	private static List<Record> listaRecords;
	
	public List<Record> getListaRecords() {
		PreparedStatement consulta=null;
		Record record=null;
		String query= null;
		listaRecords= new ArrayList<Record>();
		try{
			conexion= super.getConnection();
			query="SELECT * FROM records WHERE 1 ORDER BY ID_RECORD	";
			consulta= conexion.prepareStatement(query);
			resultado= consulta.executeQuery();
			if(resultado!=null){
				while(resultado.next()){
					record=mapperRecord(resultado);
					listaRecords.add((Record)record);
				}
			}
		}
		catch(Exception e) 
        { 
               System.out.println("Error en la consulta de la clase ModeloClienteDAO función getListaClientes"); 
        } 
        finally 
        { 
               try 
               { 
                      // Cierre de la conexión 
                      if(resultado!=null) 
                      {

                    	  GestionBaseDatos.closeResulset(resultado); 
                      } 
                      if(consulta!=null) 
                      {

                    	  GestionBaseDatos.closeRequest(consulta); 
                      } 
                      if(conexion!=null) 
                      {

                    	  GestionBaseDatos.closeConnection(conexion); 
                      } 
               } 
               catch(Exception ex) 
               { 
                      System.out.println("Error en el cierre de la conexion con la base de datos en la clase ModeloClienteDAO función getListaClientes"); 
               } 
        }

				return listaRecords;
		
	}
	
	public Record getRecord(int idRecord){
		PreparedStatement consulta= null;
		Record record= null;
		String query=null;
		
		try{
			conexion= super.getConnection();
			query= "SELECT * FROM record WHERE ID_RECORD=?";
			consulta= conexion.prepareStatement(query);
			consulta.setInt(1, idRecord);
			resultado= consulta.executeQuery();
			if(resultado!=null){
				if(resultado.next()){
					record=mapperRecord(resultado);
				}
			}
		}catch(Exception e){
			record=null; 
            System.out.println("Error en la consulta en la clase ModeloRecordDAO función getRecord"); 
		}
		
		finally 
        { 
               try 
               { 
                      // Cierre de la conexión 
                      if(resultado!=null) 
                      {
                    	  	GestionBaseDatos.closeResulset(resultado); 
                      } 
                      if(consulta!=null) 
                      {
                    	  GestionBaseDatos.closeRequest(consulta); 
                      } 
                      if(conexion!=null) 
                      {
                    	  GestionBaseDatos.closeConnection(conexion); 
                      } 
               } 
               catch(Exception ex) 
               { 
                      System.out.println("Error en el cierre de la conexión con la base de datos en la clase ModeloClienteDAO función getCliente"); 
               } 
        }
		return record;
	}
	
	public int addRecord(Record record) 
    { 
           // Variables 
           PreparedStatement consulta=null; 
           String query=null; 
           int codigoError=0;

           try 
           { 
                 conexion=super.getConnection();

                  //query="INSERT INTO record (NAME,ARTIST,PRICE,STOCK) VALUES(?,?,?,?)";
                  query="CALL spCreateRecord(?,?,?,?)";
                 
                  consulta=conexion.prepareStatement(query); 
                  consulta.setString(1,  record.getName());
                  consulta.setString(2, record.getArtist());
                  consulta.setBigDecimal(3, record.getPrice());
                  consulta.setInt(4, record.getStock());

                  record=null;
                  codigoError=consulta.executeUpdate(); 
           } 
           catch(Exception e) 
           { 
                  codigoError=0; 
                  System.out.println("Error en la consulta de la clase ModeloRecordDAO función addCliente"); 
           } 
           finally 
           { 
                  try 
                  { 
                         if(resultado!=null) 
                         {
                        	 GestionBaseDatos.closeResulset(resultado); 
                         } 
                         if(consulta!=null) 
                         {
                        	 GestionBaseDatos.closeRequest(consulta); 
                         } 
                         if(conexion!=null) 
                         {
                        	 GestionBaseDatos.closeConnection(conexion); 
                         } 
                  } 
                  catch(Exception ex) 
                  { 
                         System.out.println("Error en el cierre de la conexión con la base de datos en la clase ModeloClienteDAO función agregarCliente"); 
                  } 
           }

           // Devolver el código de error 
           return codigoError; 
 }

	public int deleteRecord(int idRecord) 
    { 
           // Variables 
           PreparedStatement consulta=null; 
           String query=null; 
           int codigoError=0;

           try 
           { 
                  conexion=super.getConnection();
                  query="DELETE FROM record WHERE ID_RECORD=?";
                  consulta=conexion.prepareStatement(query); 
                  consulta.setInt(1,idRecord);

                  codigoError=consulta.executeUpdate(); 
           } 
           catch(Exception e) 
           { 
                  codigoError=0; 
                  System.out.println("Error en la consulta de la clase ModeloRecordDAO función eliminarCliente"); 
           } 
           finally 
           { 
                  try 
                  { 
                         // Cierre de la conexión 
                         if(resultado!=null) 
                         {
                        	 GestionBaseDatos.closeResulset(resultado); 
                         } 
                         if(consulta!=null) 
                         {
                        	 GestionBaseDatos.closeRequest(consulta); 
                         } 
                         if(conexion!=null) 
                         {
                        	 GestionBaseDatos.closeConnection(conexion); 
                         } 
                  } 
                  catch(Exception ex) 
                  { 
                         System.out.println("Error en el cierre de la conexión con la base de datos en la clase ModeloRecordDAO función eliminarCliente"); 
                   } 
           }

           // Devolver el código de error 
           return codigoError; 
    }

	public int updateRecord(Record record) 
    { 
           // Variables 
           PreparedStatement consulta=null; 
           String query=null; 
           int codigoError=0;

           try 
           { 
                  conexion=super.getConnection();

                  query="UPDATE record set NAME=?,ARTIST=?,PRICE=?,STOCK=? WHERE ID_RECORD=?";

                  consulta=conexion.prepareStatement(query); 
                  consulta.setString(1, record.getName()); 
                  consulta.setString(2, record.getArtist()); 
                  consulta.setBigDecimal(3, record.getPrice());
                  consulta.setInt(4, record.getStock());
                  consulta.setInt(5, record.getIdRecord());

                  record=null;
                  codigoError=consulta.executeUpdate(); 
           } 
           catch(Exception e) 
           { 
                  System.out.println("Error en la consulta de la clase ModeloClienteDAO función modificarCliente"); 
           } 
           finally 
           { 
                  try 
                  { 
                         // Cierre de la conexión 
                         if(resultado!=null) 
                         {
                        	 GestionBaseDatos.closeResulset(resultado); 
                         } 
                         if(consulta!=null) 
                         {
                        	 GestionBaseDatos.closeRequest(consulta); 
                         } 
                         if(conexion!=null) 
                         {
                        	 GestionBaseDatos.closeConnection(conexion); 
                         } 
                  } 
                  catch(Exception ex) 
                  { 
                         System.out.println("Error en el cierre de la conexión con la base de datos en la clase ModeloClienteDAO función modificarCliente"); 
                   } 
           }

           // Devolver el código de error 
           return codigoError; 
    }
	
	public Record mapperRecord(ResultSet resultado) 
    { 
       // Variables 
       Record record=new Record();

       try 
       { 
            	record.setIdRecord(resultado.getInt("ID_RECORD")); 
       			record.setName(resultado.getString("NAME"));
       			record.setArtist(resultado.getString("ARTIST"));
       			record.setPrice(resultado.getBigDecimal("PRICE"));
       			record.setStock(resultado.getInt("STOCK"));
        } 
        catch (Exception e) 
        { 
              record=null; 
              System.out.println("Error en el mapping de atributos de un cliente de la clase ModeloClienteDAO, función mapperCliente"); 
        }

        return record; 
    }

	
}
