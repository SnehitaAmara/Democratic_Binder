package com.sdp3;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sdp3.model.Question;
import com.sdp3.model.QuestionForm;
import com.sdp3.model.Result;
import com.sdp3.service.QuizService;

@Controller
public class QuizController {
	
//	@Autowired
	private Result result;
	
	
	@Autowired
	private QuizService qService;
	
	Boolean submitted = false;
	
	@ModelAttribute("result")
	public Result getResult() {
		return result;
	}

	@RequestMapping("/quizpage")
	public String quizpage(Model model) {
		Result r = new Result();
		model.addAttribute("r",r);
		return "quiz-index";
	}
	
	@RequestMapping("/quiz")
	public String quiz(@RequestParam String username, Model m, RedirectAttributes ra) {
		System.out.println(username);
		Result r = new Result();
		if(username.equals("")) {
			ra.addFlashAttribute("warning", "You must enter your name");
			return "redirect:/";
		}
		
		submitted = false;
		r.setUsername(username);
		
		QuestionForm qForm = qService.getQuestions();
		m.addAttribute("qForm", qForm);
		
		return "extra";
	}
	
	@RequestMapping("/submit")
	public String submit(@ModelAttribute QuestionForm qForm, Model m) {
		if(!submitted) {
			result.setTotalCorrect(qService.getResult(qForm));
			qService.saveScore(result);
			submitted = true;
		}
		return "result";
	}
	
	@RequestMapping("/score")
	public String score(Model m) {
		List<Result> sList = qService.getTopScore();
		m.addAttribute("sList", sList);
		
		return "scoreboard";
	}

	
	

}
