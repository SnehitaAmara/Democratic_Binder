package com.sdp3.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sdp3.model.datainsert;

@Repository
public interface dataRepository extends JpaRepository<datainsert,String> {

	List<datainsert> findByCategory(String amen);
	
	datainsert findByTitle(String title);

}
