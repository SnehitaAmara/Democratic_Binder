package com.sdp3;

import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.boot.InvalidMappingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sdp3.model.datainsert;
import com.sdp3.model.userdata;
import com.sdp3.service.UserService;
import com.sdp3.service.dataService;

@Controller
public class mainController {
	
	@Autowired
    private UserService service;
	
	@RequestMapping("/")
	public String index() {
		return "newindex";
	}	
	
	@RequestMapping("/login")
	public String login( ){
		return "newlogin";
		
	}
	
	@RequestMapping("/insert")
	public String insertform(Model model) {
		datainsert dt = new datainsert();
		model.addAttribute("dt",dt);
		return "insertform";
	}
	@RequestMapping("/newquiz")
	public String newquiz(){
		return "newquiz";
	}
	
	@RequestMapping("/register")
	public String register(Model model) {
		userdata ud = new userdata();
		model.addAttribute("ud", ud);
		return "newregister";
	}
	
	@Autowired
	private dataService dataserv;
	
	@RequestMapping("/insertdata")
	public String insertdata(datainsert dt,Model model){
		if(dt != null) {
			dataserv.savedata(dt);
			model.addAttribute("msg","Recored-Added Succesfull !!!!");
	        return "insertform";
		}
		return "error";
	}
	
	@RequestMapping("/amendments")
	public String amendments(Model model) {
		
		List<datainsert> amend = dataserv.getamendments();
		
		model.addAttribute("amend", amend);
		return "amendments";
	}
	
	@RequestMapping("/schedules")
	public String schedules(Model model) {
		
		List<datainsert> sched = dataserv.getschedules();
		
		model.addAttribute("sched", sched);
		return "schedules";
	}
	
	@RequestMapping("/parts")
	public String parts(Model model) {
		
		List<datainsert> partss = dataserv.getparts();
		
		model.addAttribute("partss", partss);
		return "parts";
	}
	
	@RequestMapping("/preamble")
	public String preamble() {
		return "preamble";
	}
	
	@RequestMapping("/articles")
	public String preamble(Model model) {
		
		List<datainsert> artical = dataserv.getarticles();
		
		model.addAttribute("artical", artical);
		return "articles";
	}
	
	@RequestMapping("/gettitle")
	public String getitle() {
		return "updateform";
	}
	
	@RequestMapping("/welcome")
	public String welcome() {
		return "welcome";
	}
	
	@RequestMapping("/rights")
	public String rights() {
		return "rights";
	}
	
	
	@RequestMapping("/updatetitle")
	public String updatetitle(@RequestParam String title,@RequestParam String description,@RequestParam String category,@RequestParam String statement,Model model) {
		
		int dt = dataserv.updatem(title,description,category,statement);
		if(dt==1) {
		return "sucess";
		}
		return "error";
//		model.addAttribute("dt", dt);
//		return "updateform";
	}
	
	@Autowired
	private UserService userserv;

	
	@RequestMapping("/userreg")
	public String userreg(userdata userdata,Model model) {
		if(userdata!=null) {
			userserv.saveuser(userdata);
			model.addAttribute("message","User registered succesfully!!");
			return "newlogin";
		}
		return "newregister";
	}
	
	@RequestMapping("/logout")
	  public String logout(HttpSession session,HttpServletRequest request) {
	    session=request.getSession();  
	      session.invalidate(); 
	      return "newlogin";
	  }
	
	@RequestMapping ("/login-user")
	public String loginUser(@RequestParam String email,@RequestParam String password,HttpSession session,HttpServletRequest request) {

		if(email.equals("admin101@gmail.com") && password.equals("admin1234")) {
			return "admin-dash";
		}
		if(userserv.findByEmailAndPassword(email,password)!=null) {
			session = request.getSession();
			session.setAttribute("email",email);
			return "welcome";
		}
		else {
			return "error_cred";
		}
	}
//	
//  @GetMapping("/admin/mail")
//  @EventListener(ApplicationReadyEvent.class)
//  public String triggerMail() throws MessagingException,javax.mail.MessagingException{
//    service.sendEmailWithAttachment("keerthigudiseva0611@gmail.com",
//        "Your are Succesfully Registered for our website......",
//        "Your are Succesfully Registered for our website......",
//        "D:\\sdp3\\sucess.jpg");
//   return "newlogin";
//
//  }

}
