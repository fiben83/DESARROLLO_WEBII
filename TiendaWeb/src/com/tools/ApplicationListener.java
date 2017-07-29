package com.tools;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.sql.DataSource;

public class ApplicationListener implements ServletContextListener {

	Context context=null;
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext sc= sce.getServletContext();
		String dsJNDI= sc.getInitParameter("dataSourceJNDI");
		try{
			context = new InitialContext();
			DataSource ds= (DataSource)context.lookup(dsJNDI);
			if(ds==null) 
            { 
              System.out.println("No hay DataSource para el proyecto TiendaOnline"); 
            } 
            else 
            { 
               System.out.println("DataSource: ¡TiendaOnline cargado!"); 
            } 
            sc.setAttribute("dataSource", ds); 
		}
		catch(NamingException e) 
        { 
           throw new RuntimeException(); 
        } 
        finally 
        { 
               try 
               { 
                      //cerrar el contexto 
                      if(context!=null) 
                      { 
                             context.close(); 
                      } 
                } 
                catch(Exception e) 
                { 
                    System.out.println("¡Error en initCtx!"); 
                } 
       } 
		
	}
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		try 
        { 
                 //cerrar el contexto 
                 if(context!=null) 
                 { 
                        context.close(); 
                 } 
        } 
        catch(Exception e) 
        { 
               System.out.println("¡Error en initCtx!"); 
        } 
		
	}

	

}
