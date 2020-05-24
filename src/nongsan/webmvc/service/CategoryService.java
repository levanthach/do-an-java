package nongsan.webmvc.service;

import nongsan.webmvc.model.Catalog;
import java.util.List;
public interface CategoryService {
	void insert(Catalog category);

	void edit(Catalog category);

	void delete(int id);

	Catalog get(int id);
	
	Catalog get(String name);

	List<Catalog> getAll();

}

