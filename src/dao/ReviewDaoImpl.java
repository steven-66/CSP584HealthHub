package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.bson.Document;

import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;

import bean.Review;
import util.MongoDBUtil;

public class ReviewDaoImpl implements ReviewDao{
	private MongoCollection<Document> myReviews;
	@Override
	public void insertReview(String userName, String name, int rating, String headline, String content) {
		// TODO Auto-generated method stub
		myReviews = MongoDBUtil.getConnection();
		Document document = new Document("title", "healthhubReviews").
		append("userName", userName).
		append("productName", name).
		append("headline", headline).
		append("rating", rating).
		append("text", content);
		myReviews.insertOne(document);
		MongoDBUtil.closeConnection();
	}

	@Override
	public List<Review> selectReviewByProduct(String productName) {
		List<Review> reviews= new ArrayList<>();
		try
			{
				myReviews = MongoDBUtil.getConnection();
				FindIterable<Document> cursor = myReviews.find();
				for (Document obj:cursor)
				{
				
					if(obj.getString("productName").equals(productName))
					{	
						Review review =new Review(obj.getString("userName"),obj.getString("productName"), obj.getInteger("rating").toString(), obj.getString("headline"), obj.getString("text"));
						//add to review hashmap
						reviews.add(review);
					}
				}
			 	return reviews;
			}catch(Exception e){
				System.out.print(e.getMessage());
				reviews=null;
				return reviews;	
			}finally {
				MongoDBUtil.closeConnection();
			}
	}

}
