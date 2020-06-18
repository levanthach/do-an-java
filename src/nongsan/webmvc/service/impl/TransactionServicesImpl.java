package nongsan.webmvc.service.impl;

import java.util.List;

import nongsan.webmvc.dao.TransactionDao;
import nongsan.webmvc.dao.impl.TransactionDaoImpl;
import nongsan.webmvc.model.Admin;
import nongsan.webmvc.model.Transactions;
import nongsan.webmvc.service.TransactionService;

public class TransactionServicesImpl implements TransactionService{
	TransactionDao transactionDao = new TransactionDaoImpl();
	 
	public void insert(Transactions transaction) { 
		transactionDao.insert(transaction); 
	} 
	
	
	@Override
	public void edit(Transactions transaction) {
		Transactions oldTransaction = transactionDao.get(transaction.getId());		
		oldTransaction.setUser_name(transaction.getUser_name());
		oldTransaction.setUser_mail(transaction.getUser_mail());
		oldTransaction.setUser_phone(transaction.getUser_phone());
		oldTransaction.setAddress(transaction.getAddress());
		oldTransaction.setMessage(transaction.getMessage());
		oldTransaction.setAmount(transaction.getAmount());
		oldTransaction.setPayment(transaction.getPayment());
		oldTransaction.setStatus(transaction.getStatus());
		transactionDao.edit(oldTransaction);
	} 
	
	
	@Override 
	public void delete(String id) { 
		transactionDao.delete(id); 
 
	} 
 
	@Override 
	public Transactions get(int id) { 
		return transactionDao.get(id); 
	} 
 
	@Override 
	public Transactions get(String name) { 
		return transactionDao.get(name); 
	} 
 
	@Override 
	public List<Transactions> getAll() { 
		return transactionDao.getAll(); 
	}	
 

}
