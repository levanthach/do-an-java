package nongsan.webmvc.service;

import java.util.List;

import nongsan.webmvc.model.Review;

public interface ReviewService {
	void insert(Review review);

	void edit(Review review);

	void delete(int id);

	Review get(int id);
	
	Review get(String name);

	List<Review> getAll();
	
	List<Review> getReviewById(int id);
}
