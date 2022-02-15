package com.coding.hotel.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coding.hotel.models.Review;
import com.coding.hotel.repositories.ReviewRepository;

@Service
public class ReviewService {
	
	@Autowired 
	private ReviewRepository  rRepo;
	
	public List<Review> getAll(){
		return rRepo.findAll();
	}
	
	public Review createReview(Review r) {
		return rRepo.save(r);
	}

}
