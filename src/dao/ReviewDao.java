package dao;

import java.util.List;
import java.util.Map;

import bean.Review;

public interface ReviewDao {
	public List<Review> selectReviewByProduct(String productName);
	void insertReview(String userName, String name, int rating, String headline, String content);
	
}
