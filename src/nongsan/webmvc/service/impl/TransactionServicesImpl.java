package nongsan.webmvc.service.impl;

import nongsan.webmvc.dao.TransactionDao;
import nongsan.webmvc.dao.impl.TransactionDaoImpl;
import nongsan.webmvc.model.Transactions;
import nongsan.webmvc.service.TransactionService;

public class TransactionServicesImpl implements TransactionService{
	TransactionDao transactionDao = new TransactionDaoImpl();
	 
	public void insert(Transactions transaction) { 
		transactionDao.insert(transaction); 
	} 
 

}
