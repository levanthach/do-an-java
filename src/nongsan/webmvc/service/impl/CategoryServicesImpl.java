package nongsan.webmvc.service.impl;


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
		Catalog oldCate = categoryDao.get(newCategory.getId());
		oldCate.setName(newCategory.getName());
		categoryDao.edit(oldCate);

	}

	@Override
	public void delete(int id) {
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

}