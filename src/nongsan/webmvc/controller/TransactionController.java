package nongsan.webmvc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import nongsan.webmvc.model.Transactions;
import nongsan.webmvc.service.TransactionService;
import nongsan.webmvc.service.impl.TransactionServicesImpl;

/**
 * Servlet implementation class TransactionController
 */
public class TransactionController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	TransactionService transactionService = new TransactionServicesImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/checkout.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
		String tr_usersession = req.getParameter("transaction_usersession");
		String tr_username = req.getParameter("transaction_name");
		String tr_usermail = req.getParameter("transaction_email");
		String tr_userphone = req.getParameter("transaction_phone");
		String tr_useraddress = req.getParameter("transaction_address");
		String tr_usermess = req.getParameter("transaction_mess");
		String tr_amount = req.getParameter("transaction_amount");
		String tr_payment = req.getParameter("transaction_payment");
		String tr_created = req.getParameter("transaction_created");

		Transactions transaction = new Transactions();
		transaction.setUser_session(tr_usersession);
		transaction.setUser_name(tr_username);
		transaction.setUser_mail(tr_usermail);
		transaction.setUser_phone(tr_userphone);
		transaction.setAddress(tr_useraddress);
		transaction.setMessage(tr_usermess);
		transaction.setAmount(tr_amount);
		transaction.setPayment(tr_payment);
		transaction.setCreated(tr_created);
	
		transactionService.insert(transaction);
		System.out.print("Giao dịch" + transactionService);
		resp.sendRedirect(req.getContextPath() + "/admin/new/list");
	}


}
