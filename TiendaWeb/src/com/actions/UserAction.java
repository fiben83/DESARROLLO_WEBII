package com.actions;

import java.util.ArrayList;
import java.util.List;
import com.beans.User;
import com.modelos.ModeloUserDAO;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

@SuppressWarnings("serial") 
public class UserAction extends ActionSupport implements Preparable,ModelDriven {

	private User user; 
    private List<User> listaUsers; 
    private int idUserActual;
   

       public void prepare() throws Exception { 
              ModeloUserDAO modeloUserDAO=new ModeloUserDAO(); 
              // en creación, crear un nuevo objeto vacío 
              if(idUserActual==0) 
              {
            	  user=new User(); 
              } 
              // en modificación, devolver la información del objeto 
              else 
              {
            	  user=modeloUserDAO.getUser(idUserActual); 
              } 
      }

      public Object getModel() { 
             return user; 
      }

      public int getIdUserActual() { 
              return idUserActual; 
      }

      public void setIdUserActual(int idUserActual) { 
             this.idUserActual = idUserActual; 
      }

      
      public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getListaUsers() {
		ModeloUserDAO ModeloUserDAO=new ModeloUserDAO();

		listaUsers=(ArrayList<User>)ModeloUserDAO.getListaUsers(); 
		             return listaUsers;
	}

	public void setListaUsers(List<User> listaUsers) {
		this.listaUsers = listaUsers;
	}

	// devolver la lista de usuarios tras la recuperación 
      public String list() 
      { 
    	  ModeloUserDAO ModeloUserDAO=new ModeloUserDAO();

  		listaUsers=(ArrayList<User>)ModeloUserDAO.getListaUsers(); 
             return SUCCESS; 
      }

      // agregar el usuario al modelo 
      public String create() 
      { 
    	  ModeloUserDAO ModeloUserDAO=new ModeloUserDAO();
             ModeloUserDAO.addUser(user); 
             return SUCCESS; 
      }

      // mostrar el formulario en edición 
      public String editar() 
      { 
             return SUCCESS; 
      }

      // modificar un cliente 
      public String update() 
      { 
             ModeloUserDAO ModeloUserDAO=new ModeloUserDAO(); 
             ModeloUserDAO.updateUser(user); 
             return SUCCESS; 
      }

      // eliminar un cliente a partir del parámetro recibido llamado idCliente 
      public String delete() 
      { 
    	  ModeloUserDAO ModeloUserDAO=new ModeloUserDAO(); 
             ModeloUserDAO.deleteUser(idUserActual); 
             return SUCCESS; 
      } 
	public String login(){
		 ModeloUserDAO ModeloUserDAO=new ModeloUserDAO(); 
		  user= ModeloUserDAO.loginUser(user.getNick(), user.getPassword());
		  if(user!=null)
		  {
			  return SUCCESS;
		  }else{
			  return ERROR;
		  }
		
	}
	public String settings(){
		 
			  return SUCCESS;
		  		
	}
	
	public String search() 
    { 
		ModeloUserDAO ModeloUserDAO=new ModeloUserDAO();
		
		user=ModeloUserDAO.searchUser(user.getNick(),user.getLastName()); 
        if(user!=null)
        {
        	
        	return SUCCESS;
        	
        }else{
        	return ERROR;
        }
        
    } 
	public String show() 
    { 
          return SUCCESS; 
    }

	
	
}
