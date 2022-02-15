package com.coding.hotel.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.coding.hotel.models.Hotel;

@Repository
public interface HotelRepository extends CrudRepository<Hotel, Long>{
	
	List<Hotel> findAll();

}
