package com.sdp3.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sdp3.model.Question;

@Repository
public interface QuestionRepo extends JpaRepository<Question, Integer>{

}
