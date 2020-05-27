package nongsan.webmvc.dao; 
 
import java.util.List; 
 
import nongsan.webmvc.model.Admin; 
 
public interface AdminDao { 
	void insert(Admin admin); 
 
	void edit(Admin admin); 
 
	void delete(int id); 
 
	Admin get(int id); 
	 
	Admin get(String name); 
 
	List<Admin> getAll(); 
 
} 
