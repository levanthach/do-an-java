package nongsan.webmvc.service.impl; 
 
import java.util.List;

import nongsan.webmvc.dao.AdminDao;
import nongsan.webmvc.dao.impl.AdminDaoImpl;
import nongsan.webmvc.model.Admin;
import nongsan.webmvc.service.AdminService; 
 
public class AdminServicesImpl implements AdminService { 
	AdminDao adminDao = new AdminDaoImpl(); 
 
	@Override 
	public void insert(Admin admin) { 
		adminDao.insert(admin); 
	} 
 
	@Override
	public void edit(Admin admin) {
		Admin oldAdmin = adminDao.get(admin.getId());		
		oldAdmin.setUsername(admin.getUsername());
		oldAdmin.setPassword(admin.getPassword());
		oldAdmin.setName(admin.getName());
		adminDao.edit(oldAdmin); 

	} 
 
	@Override 
	public void delete(String id) { 
		adminDao.delete(id); 
 
	} 
 
	@Override 
	public Admin get(int id) { 
		return adminDao.get(id); 
	} 
 
	@Override 
	public Admin get(String name) { 
		return adminDao.get(name); 
	} 
 
	@Override 
	public List<Admin> getAll() { 
		return adminDao.getAll(); 
	}	
} 
 
