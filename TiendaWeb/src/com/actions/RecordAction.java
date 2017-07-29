package com.actions;

import java.util.List;
import java.math.BigDecimal;
import java.util.ArrayList;
import com.beans.Record;
import com.modelos.ModeloRecordDAO;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class RecordAction extends ActionSupport implements Preparable, ModelDriven{

	private Record record;
	private List<Record> listaRecords;
	private int idRecordActual;
		
	@Override
	public void prepare() throws Exception {
		 ModeloRecordDAO modeloRecordDAO=new ModeloRecordDAO(); 
         // en creaci�n, crear un nuevo objeto vac�o 
         if(idRecordActual==0) 
         { 
                record=new Record(); 
         } 
         // en modificaci�n, devolver la informaci�n del objeto 
         else 
         {
        	 record=modeloRecordDAO.getRecord(idRecordActual); 
         } 
		
	}
	@Override
	public Object getModel() {
		
		return record;
	}
	public int getIdRecordActual() {
		return idRecordActual;
	}
	public void setIdRecordActual(int idRecordActual) {
		this.idRecordActual = idRecordActual;
	}
	public Record getRecord() {
		return record;
	}
	public void setRecord(Record record) {
		this.record = record;
	}
	public List<Record> getListaRecords() {
		ModeloRecordDAO ModeloRecordDAO=new ModeloRecordDAO();

		listaRecords=(ArrayList<Record>)ModeloRecordDAO.getListaRecords(); 
		return listaRecords;
	}
	public void setListaRecords(List<Record> listaRecords) {
		this.listaRecords = listaRecords;
	}
	// devolver la lista de records tras la recuperaci�n 
    public String list() 
    { 
		ModeloRecordDAO ModeloRecordDAO=new ModeloRecordDAO();
		
        	listaRecords=(ArrayList<Record>)ModeloRecordDAO.getListaRecords(); 
            return SUCCESS;
    }

    // agregar record al modelo 
    public String add() 
    { 
    	ModeloRecordDAO ModeloRecordDAO=new ModeloRecordDAO();
           ModeloRecordDAO.addRecord(record); 
           return SUCCESS; 
    }

    // mostrar el formulario en edici�n 
    public String editar() 
    { 
           return SUCCESS; 
    }

    // modificar un record
    public String update() 
    { 
    	ModeloRecordDAO ModeloRecordDAO=new ModeloRecordDAO();
    	ModeloRecordDAO.updateRecord(record);
           return SUCCESS; 
    }

    // eliminar un record a partir del par�metro recibido llamado idRecord 
    public String delete() 
    { 
    	ModeloRecordDAO ModeloRecordDAO=new ModeloRecordDAO();
    	ModeloRecordDAO.deleteRecord(idRecordActual);
           return SUCCESS; 
    } // devolver la lista de clientes tras la recuperaci�n 
	
    public String show() 
    { 
    	 return SUCCESS; 
    } 
	    
}
