package service;


import java.util.List;
import java.util.Map;

import bean.Review;
import dao.ReviewDao;
import dao.ReviewDaoImpl;

public class MongoDBService {
	private static ReviewDao reviewDao = new ReviewDaoImpl();
	public void insert(String userName, String name, int rating, String headline, String content) {
		reviewDao.insertReview(userName, name, rating, headline, content);
	}
	public List<Review> selectReviewByProduct(String productName){
		return reviewDao.selectReviewByProduct(productName);
	}
}
