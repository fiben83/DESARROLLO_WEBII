package com.modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.beans.User;
import com.tools.GestionBaseDatos;

public class ModeloUserDAO extends ModeloDAO {

	Connection conexion =null;
	ResultSet resultado = null;
	private static List<User> listaUsers;
	
	public List<User> getListaUsers() {
		PreparedStatement consulta=null;
		User user=null;
		String query= null;
		listaUsers= new ArrayList<User>();
		try{
			conexion= super.getConnection();
			//query="SELECT * FROM user WHERE 1 ORDER BY ID_USER";
			query="CALL spListUser()";
			consulta= conexion.prepareStatement(query);
			resultado= consulta.executeQuery();
			if(resultado!=null){
				while(resultado.next()){
					user=mapperUser(resultado);
					listaUsers.add((User)user);
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

				return listaUsers;
		
	}
	
	public User loginUser(String nick, String password){
		
		PreparedStatement consulta= null;
		User user= null;
		String query=null;
		System.out.println("user: "+nick+" pass: "+password);
		try{
			conexion= super.getConnection();
			query= "SELECT * FROM users WHERE NICK=? AND PASSWORD=?";
			//query="CALL spLoginUser(?,?)";
			consulta= conexion.prepareStatement(query);
			consulta.setString(1, nick);
			consulta.setString(2, password);
			resultado= consulta.executeQuery();
			if(resultado!=null){
				if(resultado.next()){
					user=mapperUser(resultado);
				}
			}
		}catch(Exception e){
			user=null; 
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
		return user;
	}
	public User getUser(int idUser){
		PreparedStatement consulta= null;
		User user= null;
		String query=null;
		
		try{
			conexion= super.getConnection();
			//query= "SELECT * FROM user WHERE ID_USER=?";
			query= "CALL spGetUser(?)";
			consulta= conexion.prepareStatement(query);
			consulta.setInt(1, idUser);
			resultado= consulta.executeQuery();
			if(resultado!=null){
				if(resultado.next()){
					user=mapperUser(resultado);
				}
			}
		}catch(Exception e){
			user=null; 
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
		return user;
	}
	
	public User searchUser(String nick,String lastName){
		PreparedStatement consulta=null;
		User user=null;
		List<User>lista= new ArrayList<User>();
		String query= null;
	try{
		conexion= super.getConnection();
		//query="SELECT * FROM user";
		query="CALL spSearchUser(?,?)";
		consulta= conexion.prepareStatement(query);
		consulta.setString(1, nick);
		consulta.setString(2, lastName);
		
		
         resultado= consulta.executeQuery();
    	if(resultado!=null){
    				if(resultado.next()){
    					user=mapperUser(resultado);
    				
    			
    				}
    	}
           			
		}catch(Exception e){
			user=null; 
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
		return user;
	}
	
	public int addUser(User user) 
    { 
           // Variables 
           PreparedStatement consulta=null; 
           String query=null; 
           int codigoError=0;

           try 
           { 
                 conexion=super.getConnection();

                  //query="INSERT INTO user (NICK,PASSWORD,FIRSTNAME,LASTNAME,ADDRESS) VALUES(?,?,?,?,?)";
                  query="CALL spAddUser(?,?,?,?,?)";
                 
                  consulta=conexion.prepareStatement(query); 
                  consulta.setString(1, user.getNick());
                  consulta.setString(2,user.getPassword());
                  consulta.setString(3, user.getFirstName());
                  consulta.setString(4,user.getLastName());
                  consulta.setString(5,user.getAddress());

                  user=null;
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

	
	public int deleteUser(int idUser) 
    { 
           // Variables 
           PreparedStatement consulta=null; 
           String query=null; 
           int codigoError=0;

           try 
           { 
                  conexion=super.getConnection();
                  query="DELETE FROM user WHERE ID_RECORD=?";
                  consulta=conexion.prepareStatement(query); 
                  consulta.setInt(1,idUser);

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

	public int updateUser(User user) 
    { 
           // Variables 
           PreparedStatement consulta=null; 
           String query=null; 
           int codigoError=0;

           try 
           { 
                  conexion=super.getConnection();

                  query="UPDATE user set NICK=?,PASSWORD=?,FIRSTNAME=?,LASTNAME=?,ADDRESS=? WHERE ID_USER=?";

                  consulta=conexion.prepareStatement(query); 
                  consulta.setString(1, user.getNick()); 
                  consulta.setString(2, user.getPassword()); 
                  consulta.setString(3, user.getFirstName());
                  consulta.setString(3, user.getLastName());
                  consulta.setString(3, user.getAddress());
                  
                  user=null;
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
	
	public User mapperUser(ResultSet resultado) 
    { 
       // Variables 
       User user=new User();

       try 
       { 
              if (resultado.getString("ID_USER")==null) 
              { 
                     user.setIdUser(0);
              } 
              else 
              {

            	  user.setIdUser(resultado.getInt("ID_USER")); }

              if (resultado.getString("NICK")==null) 
              { 
                     user.setNick(""); 
              } 
              else 
              {

            	  user.setNick(resultado.getString("NICK")); 
              }

              if (resultado.getString("PASSWORD")==null) 
              { 
                     user.setPassword(""); 
              } 
              else 
              {

            	  user.setPassword(resultado.getString("PASSWORD")); 
              }
              if (resultado.getString("FIRSTNAME")==null) 
              { 
                     user.setFirstName(""); 
              } 
              else 
              {

            	  user.setFirstName(resultado.getString("FIRSTNAME")); 
              }
              if (resultado.getString("LASTNAME")==null) 
              { 
                     user.setLastName(""); 
              } 
              else 
              {

            	  user.setLastName(resultado.getString("LASTNAME")); 
              }
              if (resultado.getString("ADDRESS")==null) 
              { 
                     user.setAddress("");
              } 
              else 
              {

            	  user.setAddress(resultado.getString("ADDRESS")); 
              }

       } 
        catch (Exception e) 
        { 
              //Si se produce un error durante el mapping de atributos 
              user=null; 
              System.out.println("Error en el mapping de atributos de un User de la clase ModeloUserDAO, función mapperUser"); 
        }

        // Devolver objeto cliente 
        return user; 
    }

	
}
