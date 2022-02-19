package com.sdp3.service;

import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import java.io.File;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sdp3.model.datainsert;
import com.sdp3.model.userdata;
import com.sdp3.repository.UserRepository;
@Service("UserService")
@Transactional
public class UserService{
	
private final UserRepository userRepository;
	
	public UserService(UserRepository userRepository) {
		this.userRepository=userRepository;
	}

	public void saveuser(userdata userdata) {
		userRepository.save(userdata);
	}
	
	public userdata findByEmailAndPassword(String email, String password) {
		return  userRepository.findByEmailAndPassword(email, password);
	}
	
//	@Autowired
//    private JavaMailSender mailSender;
//
//    public void sendSimpleEmail(String toEmail,
//                                String body,
//                                String subject) {
//        SimpleMailMessage message = new SimpleMailMessage();
//
//        message.setFrom("spring.email.from@gmail.com");
//        message.setTo(toEmail);
//        message.setText(body);
//        message.setSubject(subject);
//
//        mailSender.send(message);
//        System.out.println("Mail Send...");
//    }
//    public void sendEmailWithAttachment(String toEmail,
//            String body,
//            String subject,
//            String attachment) throws MessagingException {
//
//    MimeMessage mimeMessage = mailSender.createMimeMessage();
//    
//    MimeMessageHelper mimeMessageHelper
//    = new MimeMessageHelper(mimeMessage, true);
//    
//    mimeMessageHelper.setFrom("spring.email.from@gmail.com");
//    mimeMessageHelper.setTo(toEmail);
//    mimeMessageHelper.setText(body);
//    mimeMessageHelper.setSubject(subject);
//    
//    FileSystemResource fileSystem
//    = new FileSystemResource(new File(attachment));
//    
//    mimeMessageHelper.addAttachment(fileSystem.getFilename(),
//    fileSystem);
//    
//    mailSender.send(mimeMessage);
//    System.out.println("Mail Send...");
//    
//    }

}
