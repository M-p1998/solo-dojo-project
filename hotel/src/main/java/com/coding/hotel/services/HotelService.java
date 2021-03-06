package com.coding.hotel.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coding.hotel.models.Hotel;
import com.coding.hotel.repositories.HotelRepository;

@Service
public class HotelService {
	
	@Autowired 
	private HotelRepository hRepo;
	
	public List<Hotel> getAllRooms() {
		return hRepo.findAll();
	}
	
	public Hotel createARoom(Hotel hotel) {
		return hRepo.save(hotel);
	}
	
	public Hotel getOne(Long id) {
		return hRepo.findById(id).orElse(null);
	}
	
	public Hotel update(Hotel hotel) {
		return hRepo.save(hotel);
	}
	
	public void delete(Long id) {
		hRepo.deleteById(id);
	}
	
	
}
