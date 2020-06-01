package nongsan.webmvc.service;

import nongsan.webmvc.model.User;

import java.util.List;
public interface UserService {
	
void insert(User user);
	
	void edit(User user);
	
	void delete(int id);
	
	User get(int id);
	
	User get(String name);

	List<User> getAll();

}

