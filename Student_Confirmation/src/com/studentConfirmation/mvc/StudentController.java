package com.studentConfirmation.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@RequestMapping("/showForm")
	public String showForm(Model model) {
		
		//create Student object
		Student theStudent = new Student();
		
		//add Student object to the model
		model.addAttribute("student", theStudent);
		
		return "student-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute ("student") Student theStudent) {
		
		//log input data
		System.out.println("theStudent: "+theStudent.getFirstName());
		System.out.println("theStudent: "+theStudent.getLastName());
		System.out.println("theStudent: "+theStudent.getCountry());
		System.out.println("theStudent: "+theStudent.getFavoriteLanguage());
		return "student-confirmation";
	}

}
