package com.jdc.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jdc.app.dto.Course;
import com.jdc.app.dto.Gender;
import com.jdc.app.dto.Student;
import com.jdc.app.service.AppService;

@Controller
@RequestMapping("/form")
public class AppController {
	
	@Autowired
	private AppService service;
	
	@GetMapping
	public String index(Model model) {
		model.addAttribute("list", service.get_Student());
		return "form";
	}
	
	@PostMapping
	public String view_Detail(
			@ModelAttribute(value = "student") Student student
			) {
		service.add_Student(student);
		return "redirect:/form";
	}
	
	@ModelAttribute("student")
	public Student set_Model_Student() {
		
		return new Student();
	}
	
	@ModelAttribute("gender")
	public Gender[] get_Model_Gender() {
		return Gender.values();
	}
	
	@ModelAttribute("courses")
	public Course[] get_Model_Course() {
		
		return Course.values();
	}
}
