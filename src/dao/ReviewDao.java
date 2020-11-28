package dao;

import java.util.List;
import java.util.Map;

import bean.Review;

public interface ReviewDao {
	public void insertReview(String name, int rating, String headline, String content);
	public List<Review> selectReviewByProduct(String productName);
	
}
