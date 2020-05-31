package nongsan.webmvc.service.impl;


import java.util.List;

import nongsan.webmvc.dao.ProductDao;
import nongsan.webmvc.dao.impl.ProductDaoImpl;
import nongsan.webmvc.model.Product;
import nongsan.webmvc.service.ProductService;

public class ProductServiceImpl implements ProductService {
	ProductDao productDao = new ProductDaoImpl();

	@Override
	public void insert(Product product) {
		productDao.insert(product);
	}

	@Override
	public void edit(Product newProduct) {
		

	}

	@Override
	public void delete(String id) {
		productDao.delete(id);

	}

	@Override
	public Product get(int id) {
		return productDao.get(id);
	}

	@Override
	public Product get(String name) {
		return productDao.get(name);
	}

	@Override
	public List<Product> getAll() {
		return productDao.getAll();
	}

}