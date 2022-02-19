package com.sdp3.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sdp3.model.datainsert;
import com.sdp3.model.userdata;
@Repository
public interface UserRepository extends JpaRepository<userdata, String>{

	userdata findByEmailAndPassword(String email, String password);
	
}
