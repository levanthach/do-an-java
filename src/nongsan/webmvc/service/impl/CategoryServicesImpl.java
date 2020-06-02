package nongsan.webmvc.service.impl;


import java.util.List;

import nongsan.webmvc.dao.CategoryDao;
import nongsan.webmvc.dao.impl.CategoryDaoImpl;
import nongsan.webmvc.model.Catalog;
import nongsan.webmvc.service.CategoryService;

public class CategoryServicesImpl implements CategoryService {
	CategoryDao categoryDao = new CategoryDaoImpl();

	@Override
	public void insert(Catalog category) {
		categoryDao.insert(category);
	}

	
	
	
	
	
	
	
	
	@Override
	public void edit(Catalog newCategory) {
		Catalog oldCate = categoryDao.get(Integer.parseInt(newCategory.getId()));
		System.out.println("tân: "+oldCate);
		oldCate.setName(newCategory.getName());
		categoryDao.edit(oldCate);

	}

	@Override
	public void delete(String id) {
		categoryDao.delete(id);

	}

	@Override
	public Catalog get(int id) {
		return categoryDao.get(id);
	}

	@Override
	public Catalog get(String name) {
		return categoryDao.get(name);
	}

	@Override
	public List<Catalog> getAll() {
		return categoryDao.getAll();
	}

}