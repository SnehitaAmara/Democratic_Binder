package com.sdp3.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sdp3.model.Question;
import com.sdp3.model.QuestionForm;
import com.sdp3.model.Result;
import com.sdp3.repository.QuestionRepo;
import com.sdp3.repository.ResultRepo;

@Service("QuizService")
@Transactional
public class QuizService {

	Question question;

	
	QuestionForm qForm = new QuestionForm();

	@Autowired
	private QuestionRepo qRepo;
	
	
	Result result;
	
	@Autowired
	private ResultRepo rRepo;

	public QuizService(ResultRepo rRepo) {
		this.rRepo = rRepo;
	}
	public QuestionForm getQuestions() {
		
		List<Question> allQues = qRepo.findAll();
		List<Question> qList = new ArrayList<Question>();

		Random random = new Random();

		for (int i = 1; i <= 5; i++) {
			int rand = random.nextInt(allQues.size());
			qList.add(allQues.get(rand));
			allQues.remove(rand);
		}
		
		for(Question x: qList) {
			System.out.println(x.getTitle());
		}
		
		
		qForm.setQuestions(qList);
//		System.out.println("this is for qform");
//		for(Question z: qForm.getQuestions()) {
//			System.out.println(z.getTitle());
//		}

		return qForm;
	}
	public int getResult(QuestionForm qForm) {
		int correct = 0;

		for (Question q : qForm.getQuestions())
			if (q.getAns() == q.getChose())
				correct++;

		return correct;
	}

	public void saveScore(Result result) {
		Result saveResult = new Result();
		saveResult.setUsername(result.getUsername());
		saveResult.setTotalCorrect(result.getTotalCorrect());
		rRepo.save(saveResult);
	}

	public List<Result> getTopScore() {
		List<Result> sList = rRepo.findAll(Sort.by(Sort.Direction.DESC, "totalCorrect"));

		return sList;
	}
}