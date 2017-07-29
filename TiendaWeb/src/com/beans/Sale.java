package com.beans;

import java.io.Serializable;
import java.util.Date;

public class Sale implements Serializable {

	private int idSale;
	private int idCustomer;
	private String customerName;
	private String address;
	private String paymentForm;
	private Date transactionDate;
	private double total;
	
	
	public Sale() {
		
	}
	public int getIdSale() {
		return idSale;
	}
	public void setIdSale(int idSale) {
		this.idSale = idSale;
	}
	public int getIdCustomer() {
		return idCustomer;
	}
	public void setIdCustomer(int idCustomer) {
		this.idCustomer = idCustomer;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPaymentForm() {
		return paymentForm;
	}
	public void setPaymentForm(String paymentForm) {
		this.paymentForm = paymentForm;
	}
	public Date getTransactionDate() {
		return transactionDate;
	}
	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	
	
}
