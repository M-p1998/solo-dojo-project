package com.coding.hotel.repositories;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.coding.hotel.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long>{

	User findByEmail(String email);
	
}
