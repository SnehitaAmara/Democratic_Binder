package com.sdp3.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sdp3.model.Result;

@Repository
public interface ResultRepo extends JpaRepository<Result, Integer> {

}
