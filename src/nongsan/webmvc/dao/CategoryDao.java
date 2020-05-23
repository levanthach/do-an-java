package nongsan.webmvc.dao;

//import com.vienmv.dao.List;
//import com.vienmv.dao.String;
import nongsan.webmvc.model.Catalog;

public interface CategoryDao {
	void insert(Catalog category);

	void edit(Catalog category);

	void delete(int id);

	Catalog get(int id);
	
	Catalog get(String name);

//	List<Catalog> getAll();
//
//	List<Catalog> search(String username);
}
