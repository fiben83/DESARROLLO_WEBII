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
         // en creación, crear un nuevo objeto vacío 
         if(idRecordActual==0) 
         { 
                record=new Record(); 
         } 
         // en modificación, devolver la información del objeto 
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
	// devolver la lista de records tras la recuperación 
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

    // mostrar el formulario en edición 
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

    // eliminar un record a partir del parámetro recibido llamado idRecord 
    public String delete() 
    { 
    	ModeloRecordDAO ModeloRecordDAO=new ModeloRecordDAO();
    	ModeloRecordDAO.deleteRecord(idRecordActual);
           return SUCCESS; 
    } // devolver la lista de clientes tras la recuperación 
	
    public String show() 
    { 
    	 return SUCCESS; 
    } 
	    
}
