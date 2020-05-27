package nongsan.webmvc.dao;

import java.util.List;

import nongsan.webmvc.model.Product;

public interface ProductDao {
	void insert(Product product);

	void edit(Product product);

	void delete(int id);

	Product get(int id);
	
	Product get(String name);

	List<Product> getAll();

}
