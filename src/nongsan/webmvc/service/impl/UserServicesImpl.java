package nongsan.webmvc.service.impl;


import java.util.List;

import nongsan.webmvc.dao.UserDao;
import nongsan.webmvc.dao.impl.UserDaoImpl;
import nongsan.webmvc.model.User;
import nongsan.webmvc.service.UserService;

public class UserServicesImpl implements UserService {
	UserDao userDao = new UserDaoImpl();
	
	@Override
	public void insert(User user) {
		userDao.insert(user);
	}

	@Override
	public void edit(User newUser) {
		User oldUSer = userDao.get(newUser.getName());
		oldUSer.setName(newUser.getName());
		userDao.edit(oldUSer);

	}

	@Override
	public List<User> getAll() {
		return userDao.getAll();
	}

	@Override
	public void delete(String id) {
		userDao.delete(id);
		
	}

	@Override
	public User get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User get(String name) {
		// TODO Auto-generated method stub
		return null;
	}


}